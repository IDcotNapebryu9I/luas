Menu.Spacing()
Menu.Separator()
Menu.Spacing()

Menu.Text("Deathmessage")
Menu.Spacing()

Menu.Checkbox("Enable death message", "bEnableDeathmessage", false)
Menu.Spacing()

Menu.Text("Input death message")
Menu.InputText("Death message", "sDeathmessage", "")
Menu.Spacing()

Menu.Button("Set death message", "bSetDeathmessage")

local deathmessage = Menu.GetString("sDeathmessage")

function PaintTraverse()
  if (Menu.GetBool("bSetDeathmessage")) then
    deathmessage = Menu.GetString("sDeathmessage")

    Print("[Deathmessage]   Set [" .. deathmessage .. "]")
  end
end

function HandleEvent(Event)
  if (not Utils.IsLocal()) then
    return
  end

  if (not Menu.GetBool("bEnableDeathmessage")) then
    return
  end

  if (Event:GetName() == "player_death") then
    PlayerDeath(Event)
  end
end

function PlayerDeath(Event)
  local userid = Event:GetInt("userid", 0)
  local EnemyId = IEngine.GetPlayerForUserID(userid)

  if (EnemyId == IEngine.GetLocalPlayer()) then
    IEngine.ExecuteClientCmd("say " .. deathmessage)
  end
end

Hack.RegisterCallback("PaintTraverse", PaintTraverse)
Hack.RegisterCallback("FireEventClientSideThink", HandleEvent)
