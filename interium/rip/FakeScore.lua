Menu.Spacing()
Menu.Separator()
Menu.Spacing()

Menu.Text("Fake Score")
Menu.Spacing()

Menu.Text("Fake Kills")
Menu.InputInt("Kills", "iFakeScore__kills")
Menu.Spacing()

Menu.Text("Fake Deaths")
Menu.InputInt("Deaths", "iFakeScore__deaths")
Menu.Spacing()

Menu.Text("Fake Assists")
Menu.InputInt("Assists", "iFakeScore__assists")
Menu.Spacing()

Menu.Button("Update Score", "bFakeScore__update")

local m_iKills = Hack.GetOffset("DT_PlayerResource", "m_iKills")
local m_iDeaths = Hack.GetOffset("DT_PlayerResource", "m_iDeaths")
local m_iAssists = Hack.GetOffset("DT_PlayerResource", "m_iAssists")

local IsSet = Menu.GetBool("bFakeScore__update")
local Kills = Menu.GetInt("iFakeScore__kills")
local Deaths = Menu.GetInt("iFakeScore__deaths")
local Assists = Menu.GetInt("iFakeScore__assists")

function UpdateScore()
  if not Utils.IsLocal() then
    return
  end

  local pLocal = IEntityList.GetPlayer(IEngine.GetLocalPlayer()) 
  local pLocalResource = pLocal:GetPlayerResource()

  Kills = Menu.GetInt("iFakeScore__kills")
  Deaths = Menu.GetInt("iFakeScore__deaths")
  Assists = Menu.GetInt("iFakeScore__assists")

  Print(
    tostring(
      pLocal
    )
  )

  Print(
    tostring(
      pLocalResource
    )
  )

  Print(
    tostring(
      m_iKills
    )
  )

  Print(
    tostring(
      m_iDeaths
    )
  )

  Print(
    tostring(
      m_iAssists
    )
  )

  Print(
    tostring(
      Kills
    )
  )

  Print(
    tostring(
      Deaths
    )
  )

  Print(
    tostring(
      Assists
    )
  )

  pLocalResource:SetPropInt(m_iKills, Kills)
  pLocalResource:SetPropInt(m_iDeaths, Deaths)
  pLocalResource:SetPropInt(m_iAssists, Assists)
end

function PaintTraverse()
  if IsSet == Menu.GetBool("bFakeScore__update") then
    return
  end

  IsSet = Menu.GetBool("bFakeScore__update")

  if IsSet then
    UpdateScore()
  end
end

local function HandleEvent(Event)
  if not Utils.IsLocal() then
    return
  end

  if Event:GetName() == "player_death" then
    local IsLocalKilled = IEngine.GetPlayerForUserID(Event:GetInt("attacker", 0)) == IEngine.GetLocalPlayer()

    if IsLocalKilled then
      Kills = Kills + 1

      UpdateScore()
    end
  end 
end

Hack.RegisterCallback("FireEventClientSideThink", HandleEvent)
Hack.RegisterCallback("PaintTraverse", PaintTraverse)
