gg.toast("🔥 STARTING FREE FIRE BD HACKER 🔥")
gg.alert("💣 WELCOME TO FREE FIRE BD HACKER 💣")

local progress = {"■□□□□□□ 10%", "■■□□□□□ 20%", "■■■□□□□ 40%", "■■■■□□□ 60%", "■■■■■□□ 80%", "■■■■■■□ 90%", "■■■■■■■ 100%"}
for _, p in ipairs(progress) do
  gg.toast("🔄 Loading: " .. p)
  gg.sleep(200)
end

local intro = {"🇧🇩 FREE", "🔥 FIRE", "🎯 BD", "💀 HACKER", "🔑 Activated!"}
for _, v in ipairs(intro) do
  gg.toast(v)
  gg.sleep(200)
end

-- Toggle Variables
local speedHack = false
local speedToggleMode = false

-- 🎯 AIMBOT FUNCTION
function AA()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h 08 00 00 00 00 00 60 40 CD CC 8C 3F 8F C2 F5 3C CD CC CC 3D 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 3F 33 33 13 40 00 00 B0 3F 00 00 80 3F 01", gg.TYPE_BYTE)
  local results = gg.getResults(9999)
  if #results > 0 then
    gg.editAll("h 08 00 00 00 00 00 60 40 CD CC 8C 3F 8F C2 F5 3C CD CC CC 3D 06 00 00 00 00 00 80 3F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 33 13 40 00 00 B0 3F 00 00 80 4F 01", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("✅ SNIPER AIMBOT TRACKING Activated!")
  else
    gg.alert("❌ Aimbot pattern not found!")
  end
end

-- ⏩ SNIPER FAST SWITCH
function BB()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h 3F 00 00 80 3E 00 00 00 00 04 00 00 00 00 00 80 3F 00 00 20 41 00 00 34 42 01", gg.TYPE_BYTE)
  local results = gg.getResults(9999)
  if #results > 0 then
    gg.editAll("h 3F 00 00 80 3E 00 00 B8 00 04 00 00 00 00 00 80 3F 00 00 20 41 00 00 34 42 01", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("✅ Sniper Fast Switch Activated!")
  else
    gg.alert("❌ Fast Switch pattern not found!")
  end
end

-- 💀 BODY HEADSHOT
function CC()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber(";bone_Spine")
  if gg.getResultsCount() > 0 then gg.editAll(";bone_Head1", gg.TYPE_WORD) end
  gg.clearResults()
  gg.searchNumber("-0.04462028295", gg.TYPE_FLOAT)
  if gg.getResultsCount() > 0 then gg.editAll("-0.03999999911", gg.TYPE_FLOAT) end
  gg.clearResults()
  gg.searchNumber("-0.03881515563", gg.TYPE_FLOAT)
  if gg.getResultsCount() > 0 then gg.editAll("0.05000000075", gg.TYPE_FLOAT) end
  gg.clearResults()
  gg.toast("✅ Body Headshot Activated!")
end

-- 🚤 SPEED HACK TOGGLE
function EnableSpeedToggle()
  speedToggleMode = true
  gg.toast("✅ SPEED HACK toggle mode enabled! Tap GG icon to toggle.")
end

function DD()
  if not speedHack then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("h 01 00 00 00 02 2B 07 3D", gg.TYPE_BYTE)
    local results = gg.getResults(9999)
    if #results > 0 then
      gg.editAll("h 01 00 00 00 92 E4 70 3D", gg.TYPE_BYTE)
      gg.clearResults()
      gg.toast("🚀 SPEED HACK: ON")
      speedHack = true
    else
      gg.toast("❌ SPEED pattern not found!")
    end
  else
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("h 01 00 00 00 92 E4 70 3D", gg.TYPE_BYTE)
    local results = gg.getResults(9999)
    if #results > 0 then
      gg.editAll("h 01 00 00 00 02 2B 07 3D", gg.TYPE_BYTE)
      gg.clearResults()
      gg.toast("🚫 SPEED HACK: OFF")
      speedHack = false
    else
      gg.toast("❌ SPEED OFF pattern not found!")
    end
  end
end

function Exit()
  gg.toast("🚪 Exiting Tool...")
  os.exit()
end

-- SECOND MENU
function SECOND_MENU()
  local menu = gg.choice({
    "⏩ SNIPER FAST SWITCH",
    "💀 BODY HEADSHOT",
    "🚤 SPEED HACK (Toggle Mode)",
    "🔙 Back to Main Menu"
  }, nil, "🛠️ RISK FUNCTION 🛠️")

  if menu == 1 then BB()
  elseif menu == 2 then CC()
  elseif menu == 3 then EnableSpeedToggle()
  elseif menu == 4 then return
  else gg.toast("❌ Menu closed") end
end

-- MAIN MENU
function START()
  local menu = gg.choice({
    "🎯 SNIPER AIMBOT TRACKING",
    "🛠️ RISK FUNCTION",
    "🚪 EXIT TOOL"
  }, nil, "🛠️ FREE FIRE BD HACK SCRIPT 🛠️\n\n📢 Telegram: @ffemon00\n📺 YouTube: FF BD Hacker\n═════════════════════════════")

  if menu == 1 then AA()
  elseif menu == 2 then SECOND_MENU()
  elseif menu == 3 then Exit()
  else gg.toast("❌ Menu closed") end
end

-- MAIN LOOP
while true do
  if gg.isVisible(true) then
    gg.setVisible(false)
    if speedToggleMode then DD() else START() end
  end
  gg.sleep(100)
end
