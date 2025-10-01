-- DARK FF GHOST - PROFESSIONAL LAYOUT (LOGIC UNCHANGED)
-- Note: All search/edit patterns & function logic are exactly as provided by you.
-- Removed speedToggleMode auto trigger for clicks

gg.toast("🔥 STARTING FREE FIRE BD HACKER 🔥")
gg.alert("💣 WELCOME TO FREE FIRE BD HACKER 💣")

-- Loading sequence
local progress = {
  "■□□□□□□ 10%",
  "■■□□□□□ 20%",
  "■■■□□□□ 40%",
  "■■■■□□□ 60%",
  "■■■■■□□ 80%",
  "■■■■■■□ 90%",
  "■■■■■■■ 100%"
}
for _, p in ipairs(progress) do
  gg.toast("🔄 Loading: " .. p)
  gg.sleep(200)
end

-- Intro badges
local intro = {
  "🇧🇩 DARK",
  "🔥 FF",
  "🎯 GHOST",
  "🔑 Activated!"
}
for _, v in ipairs(intro) do
  gg.toast(v)
  gg.sleep(200)
end

-- ===== FUNCTIONS =====

-- 🎯 AIMBOT FUNCTION
function AA()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h FF FF FF FF 08 00 00 00 00 00 60 40 CD CC 8C 3F 8F C2 F5 3C CD CC CC 3D 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 3F 33 33", gg.TYPE_BYTE)
  local results = gg.getResults(9999)
  if #results > 0 then
    gg.editAll("h FF FF FF FF 08 00 00 00 00 00 60 40 CD CC 8C 3F 8F C2 F5 3C CD CC CC 3D 06 00 00 00 00 00 80 3F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 33", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("✅ SNIPER AIMBOT TRACKING Activated!")
  else
    gg.alert("❌ Aimbot pattern not found!")
  end
end

-- ⏩ SNIPER FAST SWITCH
function BB()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h 00 00 04 00 00 00 00 00 80 3F 00 00 20 41 00 00 34 42 01 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 80 3F 8F C2 35 3F 9A 99 99 3F 00 00 80 3F", gg.TYPE_BYTE)
  local results = gg.getResults(9999)
  if #results > 0 then
    gg.editAll("h 1A 00 04 00 00 00 00 00 80 3F 00 00 20 41 00 00 34 42 01 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 80 3F 8F C2 35 3F 9A 99 99 3F 00 00 80 3F", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("✅ Sniper Fast Switch Activated!")
  else
    gg.alert("❌ Fast Switch pattern not found!")
  end
end

-- 💀 M82B LOCATION
function CC()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h 19 00 00 00 69 00 6E 00 67 00 61 00 6D 00 65 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 5F 00 62 00 6D 00 39 00 34 00 00 00 00 00 00 00 00 00", gg.TYPE_BYTE)
  local results = gg.getResults(9999)
  if #results > 0 then
    gg.editAll("h 1D 00 00 00 65 00 66 00 66 00 65 00 63 00 74 00 73 00 2F 00 76 00 66 00 78 00 5F 00 69 00 6E 00 61 00 67 00 6D 00 65 00 5F 00 6C 00 61 00 73 00 65 00 72 00 5F 00 73 00 68 00 6F 00 70 00", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("✅ M82B LOCATION Activated!")
  else
    gg.alert("❌ M82B LOCATION pattern not found!")
  end
end

-- Sniper Ammo Location
function DD()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h 22 00 00 00 69 00 6E 00 67 00 61 00 6D 00 65 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 2F 00 61 00 6D 00 6D 00 6F 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 5F 00 61 00 6D 00 6D 00 6F 00 5F 00 73 00 6E 00 67", gg.TYPE_BYTE)
  local results = gg.getResults(9999)
  if #results > 0 then
    gg.editAll("h 1C 00 00 00 65 00 66 00 66 00 65 00 63 00 74 00 73 00 2F 00 76 00 66 00 78 00 5F 00 69 00 6E 00 67 00 61 00 6D 00 65 00 5F 00 6C 00 61 00 73 00 65 00 72 00 5F 00 72 00 65 00 64 00", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("✅ Sniper Ammo Location Activated!")
  else
    gg.alert("❌ Sniper Ammo Location pattern not found!")
  end
end

-- Exit helper
function Exit()
  gg.toast("🚪 Exiting Tool...")
  os.exit()
end

-- ===== MENUS =====

-- SECOND MENU (RISK FUNCTIONS) — emojis styled more professional
function SECOND_MENU()
  local menu = gg.choice({
    "▶ SNIPER FAST SWITCH",
    "📍 M82B LOCATION",
    "📦 SNIPER AMMO LOCATION",
    "🔙 BACK TO MAIN MENU"
  }, nil, "⚙️ RISK FUNCTION ⚙️")

  if menu == 1 then
    BB()
  elseif menu == 2 then
    CC()
  elseif menu == 3 then
    DD()
  elseif menu == 4 then
    return
  else
    gg.toast("❌ Menu closed")
  end
end

-- MAIN MENU
function START()
  local menu = gg.choice({
    "🎯 SNIPER AIMBOT NORMAL",
    "🛠️ RISK FUNCTION",
    "🚪 EXIT TOOL"
  }, nil, "🛠️ DARK FF GHOST LUA SCRIPT 🛠️\n\n📢 TELEGRAM: @https://t.me/darkff62\n📺 YOUTUBE: https://youtube.com/@darkffghost\n═════════════════════════════")

  if menu == 1 then
    AA()
  elseif menu == 2 then
    SECOND_MENU()
  elseif menu == 3 then
    Exit()
  else
    gg.toast("❌ Menu closed")
  end
end

-- MAIN LOOP
while true do
  if gg.isVisible(true) then
    gg.setVisible(false)
    START()
  end
  gg.sleep(100)
end
