-- Menu
Menu.Spacing()
Menu.Separator()
Menu.Spacing()

Menu.Text("Name changer")
Menu.Spacing()

Menu.Text("Insert nickname")
Menu.InputText("Nickname", "sNameChangerNickname", "")
Menu.Spacing()

Menu.Button("Change nickname", "bNameChangerChange")
Menu.Spacing()
Menu.Separator()
Menu.Spacing()

Menu.Text("Fake Skin")
Menu.Spacing()

Menu.Text("Insert skin name")
Menu.InputText("Skin name", "sNameChangerSkinName", "M9 Bayonet")
Menu.Spacing()

Menu.Text("Insert skin description")
Menu.InputText("Skin description", "sNameChangerSkinDescription", "Doppler")
Menu.Spacing()

Menu.Checkbox("StatTrak™", "bNameChangerSkinStatTrak", true)
Menu.Spacing()

Menu.Text("Choose skin's color")
Menu.Combo("Skin color", "iNameChangerSkinColor", { "Yellow", "Red", "Pink", "Purple", "Blue", "Gray" }, 0)
Menu.Spacing()

Menu.Text("Input target's nickname")
Menu.InputText("Target's nickname", "sNameChangerSkinTarget", "BOT")
Menu.Spacing()

Menu.Button("Set Fake Skin", "bNameChangerSetSkin")
Menu.Spacing()
Menu.Separator()
Menu.Spacing()

Menu.Text("Fake Ban")
Menu.Spacing()

Menu.Button("Set Fake Ban", "bNameChangetSetBan")
Menu.Spacing()
Menu.Separator()
Menu.Spacing()

Menu.Text("Fake Vote")
Menu.Spacing()

Menu.Button("Set Fake Vote", "bNameChangerSetVote")
Menu.Spacing()

-- Initialization
function PaintTraverse()
  local Nickname = Menu.GetString("sNameChangerNickname")

  if Menu.GetBool("bNameChangerChange") then
    Utils.SetName(Nickname)

    Print("[Name Changer]   Successfully changed nickname!")

    return
  end

  if Menu.GetBool("bNameChangerSetSkin") then
    local SkinName = Menu.GetString("sNameChangerSkinName")
    local SkinDescription = Menu.GetString("sNameChangerSkinDescription")
    local SkinColor = Menu.GetInt("iNameChangerSkinColor")
    local SkinTarget = Menu.GetString("sNameChangerSkinTarget")
    local IsStatTrak = Menu.GetBool("bNameChangerSkinStatTrak")
    local SkinStatTrak = ""

    if IsStatTrak then
      SkinStatTrak = "StatTrak™ "
    end

    local Colors = {
      "\x09", -- Yellow
      "\x02", -- Red
      "\x0E", -- Pink
      "\x03", -- Purple
      "\x0D", -- Blue
      "\x08"  -- Gray
    }

    local SkinColor = Colors[SkinColor + 1]

    Utils.SetName(" \n\x01\x10" .. Nickname .. " \x01has opened a container and found: " .. SkinColor .. "★ " .. SkinStatTrak .. SkinName .. " | " .. SkinDescription .. "\x01 " .. SkinTarget)

    Print("[Name Changer]   Successfully set fake skin nickname!")

    return
  end

  if Menu.GetBool("bNameChangetSetBan") then
    Utils.SetName(" \n\x01\x07" .. Nickname .. " has been permanently banned from official CS:GO servers.\x01")

    Print("[Name Changer]   Successfully set fake ban nickname!")

    return
  end

  if Menu.GetBool("bNameChangerSetVote") then
    Utils.SetName("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" .. Nickname .. "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
  end
end

Hack.RegisterCallback("PaintTraverse", PaintTraverse)
