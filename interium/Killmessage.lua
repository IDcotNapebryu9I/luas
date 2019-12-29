Menu.Spacing()
Menu.Separator()
Menu.Spacing()

Menu.Text("Killmessage")
Menu.Spacing()

Menu.Checkbox("Enable kill message", "bEnableKillmessage", false)
Menu.Checkbox("Enemy only", "bKillmessageEnemyOnly", false)
Menu.Spacing()

Menu.Text("Input kill message")
Menu.InputText("Kill message", "sKillmessage", "")
Menu.Spacing()

Menu.Button("Set kill message", "bSetKillmessage")

local ColorPrint = ICvar.ConsoleColorPrintf

local killmessage = Menu.GetString("sKillmessage")

function PaintTraverse()
  if (Menu.GetBool("bSetKillmessage")) then
    killmessage = Menu.GetString("sKillmessage")

    local Message = "\x05[Killmessage] \x0ESet \x04" .. killmessage 

    IChatElement.ChatPrintf(
      IEngine.GetLocalPlayer(), -- iPlayerIndex
      0,                        -- iFilter
      Message                   -- format text
    )
  end
end

function HandleEvent(Event)
  if not Utils.IsLocal() then
    return
  end

  if not Menu.GetBool("bEnableKillmessage") then
    return
  end

  if Event:GetName() == "player_death" then
    PlayerDeath(Event)
  end
end

function PlayerDeath(Event)
  local attacker = Event:GetInt("attacker", 0)
  local userid = Event:GetInt("userid", 0)

  local AttackerId = IEngine.GetPlayerForUserID(attacker)
  local EnemyId = IEngine.GetPlayerForUserID(userid)

  if (AttackerId == IEngine.GetLocalPlayer()) then
    local pEnemy = IEntityList.GetPlayer(EnemyId)

    if pEnemy:IsTeammate() and Menu.GetBool("bKillmessageEnemyOnly") then
      return
    end

    IEngine.ExecuteClientCmd("say " .. killmessage)
  end
end

Hack.RegisterCallback("PaintTraverse", PaintTraverse)
Hack.RegisterCallback("FireEventClientSideThink", HandleEvent)
