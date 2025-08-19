-- ===============================
-- GameGuardian Subscription Script
-- Fully Debugged
-- ===============================

local github_json_url = "https://raw.githubusercontent.com/ffemon/PAID-LUA-SCRIPT/main/key.json"
local local_json_path = "/sdcard/Download/key.json"

function json_decode(str)
    local status, result = pcall(function()
        str = str:gsub("null","nil"):gsub("true","true"):gsub("false","false")
        return load("return "..str)()
    end)
    if status then return result else return nil end
end

function fetch_json(url)
    local resp = gg.makeRequest(url)
    if resp and resp.status == 200 and resp.content then
        local decoded = json_decode(resp.content)
        if decoded then return decoded else gg.alert("⚠️ Failed to decode GitHub JSON!"); return nil end
    else
        gg.alert("⚠️ GitHub fetch failed! Status: "..(resp and resp.status or "No response"))
        return nil
    end
end

function load_local_json(path)
    local file = io.open(path,"r")
    if not file then gg.alert("⚠️ Local JSON not found at: "..path); return nil end
    local content = file:read("*a")
    file:close()
    if content == "" then gg.alert("⚠️ Local JSON empty!"); return nil end
    local decoded = json_decode(content)
    if not decoded then gg.alert("⚠️ Failed to decode local JSON!"); return nil end
    return decoded
end

-- User login
local creds = gg.prompt({"Username:","Password:"},{"",""},{"text","text"})
if not creds then os.exit() end
local username,password = creds[1],creds[2]

local data = fetch_json(github_json_url)
if not data then
    gg.toast("⚠️ GitHub fetch failed, using local JSON")
    data = load_local_json(local_json_path)
    if not data then gg.alert("❌ No JSON data available."); os.exit() end
end

-- Validate user
local valid, script_url = false, nil
local today = os.date("%Y-%m-%d")

if data.users then
    for i,user in ipairs(data.users) do
        if user.username == username and user.password == password then
            if user.expiry >= today then
                valid = true
                script_url = user.script_url
                break
            else gg.toast("❌ Subscription Expired"); os.exit() end
        end
    end
end

if not valid then gg.toast("❌ Invalid Username/Password"); os.exit() end

-- Download & execute main.lua
local resp2 = gg.makeRequest(script_url)
if resp2 and resp2.status == 200 and resp2.content then
    gg.toast("✅ Subscription Active")
    load(resp2.content)()
else
    gg.alert("⚠️ Script download failed! Status: "..(resp2 and resp2.status or "No response"))
    os.exit()
end
