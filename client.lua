-- GitHub থেকে JSON fetch করার ফাংশন
function fetch_json(url)
    local resp = gg.makeRequest(url)
    if resp and resp.status == 200 then
        return gg.parseJson(resp.content)
    else
        gg.toast("⚠️ GitHub fetch failed")
        return nil
    end
end

-- Username + Password prompt
local creds = gg.prompt({"Username:", "Password:"}, {"", ""}, {"text","text"})
if not creds then os.exit() end
local username = creds[1]
local password = creds[2]

-- users.json URL
local json_url = "https://raw.githubusercontent.com/ffemon/PAID-LUA-SCRIPT/main/users.json"
local data = fetch_json(json_url)
if not data then os.exit() end

-- Validate user
local valid = false
local script_url = nil
local today = os.date("%Y-%m-%d")

for i, user in ipairs(data.users) do
    if user.username == username and user.password == password then
        if user.expiry >= today then
            valid = true
            script_url = user.script_url
        else
            gg.toast("❌ Subscription Expired")
            os.exit()
        end
    end
end

if not valid then
    gg.toast("❌ Invalid Username/Password")
    os.exit()
end

-- Download and execute main.lua
local resp2 = gg.makeRequest(script_url)
if resp2 and resp2.status == 200 then
    local code = resp2.content
    gg.toast("✅ Subscription Active")
    load(code)()
else
    gg.toast("⚠️ Script download failed")
end
