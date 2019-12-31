-- -- -- -- -- -- -- -- --
--  Interium LUA Hints  --
--          by nitrojs  --
-- -- -- -- -- -- -- -- --

--- Функции для взаимодействия с самим читом
--- @table
_G.Hack = {}

--- Вызов определенной функции в определенном хуке
--- @param Hook string
--- @param CallFunc function
function Hack.RegisterCallback(Hook, CallFunc) end

--- Получить адрес модуля
--- @param module string
--- @return number
function Hack.GetModuleHandle(module) end

--- Получить оффсет из таблицы NetVar'ов
--- @param tableName string
--- @param propName string
--- @return number
function Hack.GetOffset(tableName, propName) end

--- Получить адрес по модулю и паттерну
--- @param module string
--- @param signature string
--- @return number
function Hack.PatternScan(module, signature) end

--- Получить адрес на какой-либо элемент интерфейса
--- @param name string
--- @return number
function Hack.FindHudElement(name) end

--- Загрузить конфиг .ini в чит
--- @param cfgini string
function Hack.LoadCfg(cfgini) end

--- Загрузить LUA скрипт в чит
--- @param luaini string
function Hack.LoadLua(luaini) end

--- Выгрузить все LUA скрипты
function Hack.UnloadAllLua() end


_G.Vector = {}
_G.Vector.__index = Vector

--- @param x number
--- @param y number
--- @param z number
function Vector:new(x, y, z)
  setmetatable({}, Vector)

  self.x = x
  self.y = y
  self.z = z
end


_G.Vector2D = {}
_G.Vector2D.__index = Vector2D

--- @param x number
--- @param y number
function Vector2D:new(x, y)
  setmetatable({}, Vector2D)

  self.x = x
  self.y = y
end


_G.ImVec2 = {}
_G.ImVec2.__index = ImVec2

--- @param x number
--- @param y number
function ImVec2:new(x, y)
  setmetatable({}, ImVec2)

  self.x = x
  self.y = y
end


_G.QAngle = {}
_G.QAngle.__index = QAngle

--- @param pitch number
--- @param yaw number
--- @param roll number
function QAngle:new(pitch, yaw, roll)
  setmetatable({}, QAngle)

  self.pitch = pitch
  self.yaw = yaw
  self.roll = roll
end


_G.Color = {}
_G.Color.__index = Color

--- @param r number
--- @param g number
--- @param b number
--- @param a number
function Color:new(r, g, b, a)
  setmetatable({}, Color)

  self.r = r
  self.g = g
  self.b = b
  self.a = a
end


_G.RECT = {}
_G.RECT.__index = RECT

--- @param left number
--- @param top number
--- @param right number
--- @param bottom number
function RECT:new(left, top, right, bottom)
  setmetatable({}, RECT)

  self.left = left
  self.top = top
  self.right = right
  self.bottom = bottom
end


_G.IGameEvent = {}
_G.IGameEvent.__index = IGameEvent

--- @return string
function IGameEvent:GetName() end

--- @return boolean
function IGameEvent:IsReliable() end

--- @return boolean
function IGameEvent:IsLocal() end

--- @param keyName string
--- @return boolean
function IGameEvent:IsEmpty(keyName) end

--- @param keyName string
--- @param defaultValue boolean
--- @return boolean
function IGameEvent:GetBool(keyName, defaultValue) end

--- @param keyName string
--- @param defaultValue number
--- @return number
function IGameEvent:GetInt(keyName, defaultValue) end

--- @param keyName string
--- @param defaultValue number
--- @return number
function IGameEvent:GetUint64(keyName, defaultValue) end

--- @param keyName string
--- @param defaultValue number
--- @return number
function IGameEvent:GetFloat(keyName, defaultValue) end

--- @param keyName string
--- @param defaultValue string
--- @return string
function IGameEvent:GetString(keyName, defaultValue) end

--- @param keyName string
--- @param defaultValue string
--- @return string
function IGameEvent:GetWString(keyName, defaultValue) end

--- @param keyName string
--- @param value boolean
function IGameEvent:SetBool(keyName, value) end

--- @param keyName string
--- @param value number
function IGameEvent:SetInt(keyName, value) end

--- @param keyName string
--- @param value number
function IGameEvent:SetUint64(keyName, value) end

--- @param keyName string
--- @param value number
function IGameEvent:SetFloat(keyName, value) end

--- @param keyName string
--- @param value string
function IGameEvent:SetString(keyName, value) end

--- @param keyName string
--- @param value string
function IGameEvent:SetWString(keyName, value) end


_G.CUserCmd = {}

--- @param command_number number
--- @param tick_count number
--- @param viewangles QAngle
--- @param aimdirection Vector
--- @param forwardmove number
--- @param sidemove number
--- @param upmove number
--- @param buttons number
--- @param impulse string
--- @param weaponselect number
--- @param weaponsubtype number
--- @param random_seed number
--- @param mousedx number
--- @param mousedy number
--- @param hasbeenpredicted boolean
function CUserCmd:new(command_number, tick_count, viewangles, aimdirection, forwardmove, sidemove, upmove, buttons, impulse, weaponselect, weaponsubtype, random_seed, mousedx, mousedy, hasbeenpredicted)
  setmetatable({}, CUserCmd)

  self.command_number = command_number
  self.tick_count = tick_count
  self.viewangles = viewangles
  self.aimdirection = aimdirection
  self.forwardmove = forwardmove
  self.sidemove = sidemove
  self.upmove = upmove
  self.buttons = buttons
  self.impulse = impulse
  self.weaponselect = weaponselect
  self.weaponsubtype = weaponsubtype
  self.random_seed = random_seed
  self.mousedx = weaponsubtype
  self.mousedy = weaponsubtype
  self.hasbeenpredicted = hasbeenpredicted
end


_G.AnimState = {}

--- @param pThis any
--- @param pBaseEntity any
--- @param pActiveWeapon any
--- @param pLastActiveWeapon any
--- @param m_flLastClientSideAnimationUpdateTime number
--- @param m_iLastClientSideAnimationUpdateFramecount number
--- @param m_flEyePitch number
--- @param m_flEyeYaw number
--- @param m_flPitch number
--- @param m_flGoalFeetYaw number
--- @param m_flCurrentFeetYaw number
--- @param m_flCurrentTorsoYaw number
--- @param m_flUnknownVelocityLean number
--- @param m_flLeanAmount number
--- @param m_flFeetCycle number
--- @param m_flFeetYawRate number
--- @param m_fUnknown2 number
--- @param m_fDuckAmount number
--- @param m_fLandingDuckAdditiveSomething number
--- @param m_fUnknown3 number
--- @param m_vOrigin Vector
--- @param m_vLastOrigin Vector
--- @param m_vVelocityX number
--- @param m_vVelocityY number
--- @param m_flUnknownFloat1 number
--- @param m_flUnknownFloat2 number
--- @param m_flUnknownFloat3 number
--- @param m_unknown number
--- @param speed_2d number
--- @param flUpVelocity number
--- @param m_flSpeedNormalized number
--- @param m_flFeetSpeedForwardsOrSideWays number
--- @param m_flFeetSpeedUnknownForwardOrSideways number
--- @param m_flTimeSinceStartedMoving number
--- @param m_bOnGround boolean
--- @param m_bInHitGroundAnimation boolean
--- @param m_flLastOriginZ number
--- @param m_flHeadHeightOrOffsetFromHittingGroundAnimation number
--- @param m_flStopToFullRunningFraction number
--- @param m_flUnknownFraction number
--- @param m_flUnknown3 number
function AnimState:new(pThis, pBaseEntity, pActiveWeapon, pLastActiveWeapon, m_flLastClientSideAnimationUpdateTime, m_iLastClientSideAnimationUpdateFramecount, m_flEyePitch, m_flEyeYaw, m_flPitch, m_flGoalFeetYaw, m_flCurrentFeetYaw, m_flCurrentTorsoYaw, m_flUnknownVelocityLean, m_flLeanAmount, m_flFeetCycle, m_flFeetYawRate, m_fUnknown2, m_fDuckAmount, m_fLandingDuckAdditiveSomething, m_fUnknown3, m_vOrigin, m_vLastOrigin, m_vVelocityX, m_vVelocityY, m_flUnknownFloat1, m_flUnknownFloat2, m_flUnknownFloat3, m_unknown, speed_2d, flUpVelocity, m_flSpeedNormalized, m_flFeetSpeedForwardsOrSideWays, m_flFeetSpeedUnknownForwardOrSideways, m_flTimeSinceStartedMoving, m_flTimeSinceStoppedMoving, m_bOnGround, m_bInHitGroundAnimation, m_flLastOriginZ, m_flHeadHeightOrOffsetFromHittingGroundAnimation, m_flStopToFullRunningFraction, m_flUnknownFraction, m_flUnknown3)
  setmetatable({}, AnimState)

  self.pThis = pThis
  self.pBaseEntity = pBaseEntity
  self.pActiveWeapon = pActiveWeapon
  self.pLastActiveWeapon = pLastActiveWeapon
  self.m_flLastClientSideAnimationUpdateTime = m_flLastClientSideAnimationUpdateTime
  self.m_iLastClientSideAnimationUpdateFramecount = m_iLastClientSideAnimationUpdateFramecount
  self.m_flEyePitch = m_flEyePitch
  self.m_flEyeYaw = m_flEyeYaw
  self.m_flPitch = m_flPitch
  self.m_flGoalFeetYaw = m_flGoalFeetYaw
  self.m_flCurrentFeetYaw = m_flCurrentFeetYaw
  self.m_flCurrentTorsoYaw = m_flCurrentTorsoYaw
  self.m_flLeanAmount = m_flLeanAmount
  self.m_flFeetCycle = m_flFeetCycle
  self.m_flFeetYawRate = m_flFeetYawRate
  self.m_fUnknown2 = m_fUnknown2
  self.m_fDuckAmount = m_fDuckAmount
  self.m_fLandingDuckAdditiveSomething = m_fLandingDuckAdditiveSomething
  self.m_fUnknown3 = m_fUnknown3
  self.m_vOrigin = m_vOrigin
  self.m_vLastOrigin = m_vLastOrigin
  self.m_vVelocityX = m_vVelocityX
  self.m_vVelocityY = m_vVelocityY
  self.m_flUnknownFloat1 = m_flUnknownFloat1
  self.m_flUnknownFloat2 = m_flUnknownFloat2
  self.m_flUnknownFloat3 = m_flUnknownFloat3
  self.m_unknown = pThis
  self.speed_2d = speed_2d
  self.flUpVelocity = flUpVelocity
  self.m_flSpeedNormalized = m_flSpeedNormalized
  self.m_flFeetSpeedForwardsOrSideWays = m_flFeetSpeedForwardsOrSideWays
  self.m_flFeetSpeedUnknownForwardOrSideways = m_flFeetSpeedUnknownForwardOrSideways
  self.m_flTimeSinceStartedMoving = m_flTimeSinceStartedMoving
  self.m_bOnGround = m_bOnGround
  self.m_bInHitGroundAnimation = m_bInHitGroundAnimation
  self.m_flLastOriginZ = m_flLastOriginZ
  self.m_flHeadHeightOrOffsetFromHittingGroundAnimation = m_flHeadHeightOrOffsetFromHittingGroundAnimation
  self.m_flStopToFullRunningFraction = m_flStopToFullRunningFraction
  self.m_flUnknownFraction = m_flUnknownFraction
  self.m_flUnknown3 = m_flUnknown3
end


_G.AnimLayer = {}
_G.AnimLayer.__index = AnimLayer

--- @param m_nOrder number
--- @param m_nSequence number
--- @param m_flPrevCycle number
--- @param m_flWeight number
--- @param m_flWeightDeltaRate number
--- @param m_flPlaybackRate number
--- @param m_flCycle number
--- @param m_pOwner any
function AnimLayer:new(m_nOrder, m_nSequence, m_flPrevCycle, m_flWeight, m_flWeightDeltaRate, m_flPlaybackRate, m_flCycle, m_pOwner)
  setmetatable({}, AnimLayer)

  self.m_nOrder = m_nOrder
  self.m_nSequence = m_nSequence
  self.m_flPrevCycle = m_flPrevCycle
  self.m_flWeight = m_flWeight
  self.m_flWeightDeltaRate = m_flWeightDeltaRate
  self.m_flPlaybackRate = m_flPlaybackRate
  self.m_flCycle = m_flCycle
  self.m_pOwner = m_pOwner
end


_G.ConVar = {}

--- @param value string
function ConVar:SetString(value) end

--- @param value number
function ConVar:SetFloat(value) end

--- @param value number
function ConVar:SetInt(value) end

--- @param value boolean
function ConVar:SetBool(value) end

--- @return string
function ConVar:GetString() end

--- @return number
function ConVar:GetFloat() end

--- @return number
function ConVar:GetInt() end

--- @return boolean
function ConVar:GetBool() end


_G.CEntity = {}

--- @return number
function CEntity:EntIndex() end

--- @return number
function CEntity:GetClassId() end

--- @return boolean
function CEntity:IsDormant() end

--- @return model_t
function CEntity:GetModel() end

--- @return RECT
function CEntity:GetBox() end

--- @return Vector
function CEntity:GetAbsOrigin() end

--- @return QAngle
function CEntity:GetAbsAngles() end

--- @param origin Vector
function CEntity:SetAbsOriginal(origin) end

--- @param origin QAngle
function CEntity:SetAbsAngles(value) end

--- @param offset number
--- @return boolean
function CEntity:GetPropBool(offset) end

--- @param offset number
--- @return number
function CEntity:GetPropShort(offset) end

--- @param offset number
--- @return number
function CEntity:GetPropInt(offset) end

--- @param offset number
--- @return number
function CEntity:GetPropFloat(offset) end

--- @param offset number
--- @return number
function CEntity:GetPropDouble(offset) end

--- @param offset number
--- @return Vector
function CEntity:GetPropVector(offset) end

--- @param offset number
--- @return QAngle
function CEntity:GetPropAngle(offset) end

--- @param offset number
--- @param value boolean
function CEntity:SetPropBool(offset, value) end

--- @param offset number
--- @param value number
function CEntity:SetPropShort(offset, value) end

--- @param offset number
--- @param value number
function CEntity:SetPropInt(offset, value) end

--- @param offset number
--- @param value number
function CEntity:SetPropFloat(offset, value) end

--- @param offset number
--- @param value number
function CEntity:SetPropDouble(offset, value) end

--- @param offset number
--- @param value Vector
function CEntity:SetPropVector(offset, value) end

--- @param offset number
--- @param value QAngle
function CEntity:SetPropAngle(offset, value) end


_G.CPlayer = {}

--- @return CPlayerInfo
function CPlayer:GetPlayerInfo() end

--- @return number
function CPlayer:EntIndex() end

--- @return number
function CPlayer:GetClassId() end

--- @return boolean
function CPlayer:IsDormant() end

--- @return model_t
function CPlayer:GetModel() end

--- @return RECT
function CPlayer:GetBox() end

--- @param hitbox_id number
--- @return Vector
function CPlayer:GetHitboxPos(hitbox_id) end

--- @return Vector
function CPlayer:GetEyePos() end

--- @param player CPlayer
--- @param pos Vector
--- @return boolean
function CPlayer:CanSeePlayer(player, pos) end

--- @return boolean
function CPlayer:IsVisible() end

--- @return boolean
function CPlayer:IsAlive() end

--- @return boolean
function CPlayer:IsTeammate() end

--- @return boolean
function CPlayer:IsNotTarget() end

--- @return boolean
function CPlayer:IsFlashed() end

--- @return number
function CPlayer:GetMoveType() end

--- @return CWeapon
function CPlayer:GetActiveWeapon() end

--- @return CPlayerResource
function CPlayer:GetPlayerResource() end

--- @return number
function CPlayer:GetNumAnimOverlays() end

--- @return AnimationLayer
function CPlayer:GetAnimOverlays() end

--- @param i number
--- @return AnimationLayer
function CPlayer:GetAnimOverlay(i) end

--- @param sequence number
--- @return number
function CPlayer:GetSequenceActivity(sequence) end

--- @return AnimState
function CPlayer:GetPlayerAnimState() end

--- @param state AnimState
--- @param angle QAngle
function CPlayer:UpdateAnimationState(state, angle) end

--- @param state AnimState
function CPlayer:ResetAnimationState(state) end

--- @param state AnimState
function CPlayer:CreateAnimationState(state) end

function CPlayer:UpdateClientSideAnimation() end

--- @return number
function CPlayer:GetMaxDesyncDelta() end

--- @return Vector
function CPlayer:GetAbsOrigin() end

--- @return QAngle
function CPlayer:GetAbsAngles() end

--- @param origin Vector
function CPlayer:SetAbsOrigin(origin) end

--- @param value QAngle
function CPlayer:SetAbsAngles(value) end

--- @param offset number
--- @return boolean
function CPlayer:GetPropBool(offset) end

--- @param offset number
--- @return number
function CPlayer:GetPropShort(offset) end

--- @param offset number
--- @return number
function CPlayer:GetPropInt(offset) end

--- @param offset number
--- @return number
function CPlayer:GetPropFloat(offset) end

--- @param offset number
--- @return number
function CPlayer:GetPropDouble(offset) end

--- @param offset number
--- @return Vector
function CPlayer:GetPropVector(offset) end

--- @param offset number
--- @return QAngle
function CPlayer:GetPropAngle(offset) end

--- @param offset number
--- @param value boolean
function CPlayer:SetPropBool(offset, value) end

--- @param offset number
--- @param value number
function CPlayer:SetPropShort(offset, value) end

--- @param offset number
--- @param value number
function CPlayer:SetPropInt(offset, value) end

--- @param offset number
--- @param value number
function CPlayer:SetPropFloat(offset, value) end

--- @param offset number
--- @param value number
function CPlayer:SetPropDouble(offset, value) end

--- @param offset number
--- @param value Vector
function CPlayer:SetPropVector(offset, value) end

--- @param offset number
--- @param value QAngle
function CPlayer:SetPropAngle(offset, value) end


_G.CPlayerResource = {}

--- @param offset number
--- @return boolean
function CPlayerResource:GetPropBool(offset) end

--- @param offset number
--- @return number
function CPlayerResource:GetPropShort(offset) end

--- @param offset number
--- @return number
function CPlayerResource:GetPropInt(offset) end

--- @param offset number
--- @return number
function CPlayerResource:GetPropFloat(offset) end

--- @param offset number
--- @return number
function CPlayerResource:GetPropDouble(offset) end

--- @param offset number
--- @return Vector
function CPlayerResource:GetPropVector(offset) end

--- @param offset number
--- @return QAngle
function CPlayerResource:GetPropAngle(offset) end

--- @param offset number
--- @param value boolean
function CPlayerResource:SetPropBool(offset, value) end

--- @param offset number
--- @param value number
function CPlayerResource:SetPropShort(offset, value) end

--- @param offset number
--- @param value number
function CPlayerResource:SetPropInt(offset, value) end

--- @param offset number
--- @param value number
function CPlayerResource:SetPropFloat(offset, value) end

--- @param offset number
--- @param value number
function CPlayerResource:SetPropDouble(offset, value) end

--- @param offset number
--- @param value Vector
function CPlayerResource:SetPropVector(offset, value) end

--- @param offset number
--- @param value QAngle
function CPlayerResource:SetPropAngle(offset, value) end


_G.CWeapon = {}

--- @return number
function CWeapon:EntIndex() end

--- @return number
function CWeapon:GetClassId() end

--- @return boolean
function CWeapon:IsDormant() end

--- @return model_t
function CWeapon:GetModel() end

--- @return RECT
function CWeapon:GetBox() end

--- @return CWeaponInfo
function CWeapon:GetWeaponData() end

--- @return number
function CWeapon:GetItemDefinitionIndex() end

--- @return boolean
function CWeapon:IsReloading() end

--- @return boolean
function CWeapon:IsWeapSwitching() end

--- @return number
function CWeapon:GetInaccuracy() end

--- @return number
function CWeapon:GetSpread() end

function CWeapon:UpdateAccuracyPenalty() end

--- @return Vector
function CWeapon:GetAbsOrigin() end

--- @return QAngle
function CWeapon:GetAbsAngles() end

--- @param origin Vector
function CWeapon:SetAbsOrigin(origin) end

--- @param value QAngle
function CWeapon:SetAbsAngles(value) end

--- @param offset number
--- @return boolean
function CWeapon:GetPropBool(offset) end

--- @param offset number
--- @return number
function CWeapon:GetPropShort(offset) end

--- @param offset number
--- @return number
function CWeapon:GetPropInt(offset) end

--- @param offset number
--- @return number
function CWeapon:GetPropFloat(offset) end

--- @param offset number
--- @return number
function CWeapon:GetPropDouble(offset) end

--- @param offset number
--- @return Vector
function CWeapon:GetPropVector(offset) end

--- @param offset number
--- @return QAngle
function CWeapon:GetPropAngle(offset) end

--- @param offset number
--- @param value boolean
function CWeapon:SetPropBool(offset, value) end

--- @param offset number
--- @param value number
function CWeapon:SetPropShort(offset, value) end

--- @param offset number
--- @param value number
function CWeapon:SetPropInt(offset, value) end

--- @param offset number
--- @param value number
function CWeapon:SetPropFloat(offset, value) end

--- @param offset number
--- @param value number
function CWeapon:SetPropDouble(offset, value) end

--- @param offset number
--- @param value Vector
function CWeapon:SetPropVector(offset, value) end

--- @param offset number
--- @param value QAngle
function CWeapon:SetPropAngle(offset, value) end


_G.CPlantedC4 = {}

--- @return number
function CPlantedC4:EntIndex() end

--- @return number
function CPlantedC4:GetClassId() end

--- @return boolean
function CPlantedC4:IsDormant() end

--- @return model_t
function CPlantedC4:GetModel() end

--- @return RECT
function CPlantedC4:GetBox() end

--- @return Vector
function CPlantedC4:GetAbsOrigin() end

--- @return QAngle
function CPlantedC4:GetAbsAngles() end

--- @param origin Vector
function CPlantedC4:SetAbsOrigin(origin) end

--- @param value QAngle
function CPlantedC4:SetAbsAngles(value) end

--- @param offset number
--- @return boolean
function CPlantedC4:GetPropBool(offset) end

--- @param offset number
--- @return number
function CPlantedC4:GetPropShort(offset) end

--- @param offset number
--- @return number
function CPlantedC4:GetPropInt(offset) end

--- @param offset number
--- @return number
function CPlantedC4:GetPropFloat(offset) end

--- @param offset number
--- @return number
function CPlantedC4:GetPropDouble(offset) end

--- @param offset number
--- @return Vector
function CPlantedC4:GetPropVector(offset) end

--- @param offset number
--- @return QAngle
function CPlantedC4:GetPropAngle(offset) end

--- @param offset number
--- @param value boolean
function CPlantedC4:SetPropBool(offset, value) end

--- @param offset number
--- @param value number
function CPlantedC4:SetPropShort(offset, value) end

--- @param offset number
--- @param value number
function CPlantedC4:SetPropInt(offset, value) end

--- @param offset number
--- @param value number
function CPlantedC4:SetPropFloat(offset, value) end

--- @param offset number
--- @param value number
function CPlantedC4:SetPropDouble(offset, value) end

--- @param offset number
--- @param value Vector
function CPlantedC4:SetPropVector(offset, value) end

--- @param offset number
--- @param value QAngle
function CPlantedC4:SetPropAngle(offset, value) end


_G.CPlayerInfo = {}
_G.CPlayerInfo.__index = CPlayerInfo

--- @param szName string
--- @param userId number
--- @param szSteamID string
--- @param iSteamID number
--- @param szFriendsName string
--- @param fakeplayer boolean
--- @param ishltv boolean
--- @param customfiles number
--- @param filesdownloaded string
--- @param unknown number
--- @param steamID64 number
--- @param xuid_high number
--- @param xuid_low number
function CPlayerInfo:new(szName, userId, szSteamID, iSteamID, szFriendsName, fakeplayer, ishltv, customfiles, filesdownloaded, unknown, steamID64, xuid_high, xuid_low)
  setmetatable({}, CPlayerInfo)

  self.szName = szName
  self.userId = userId
  self.szSteamID = szSteamID
  self.iSteamID = iSteamID
  self.szFriendsName = szFriendsName
  self.fakeplayer = fakeplayer
  self.ishltv = ishltv
  self.customfiles = customfiles
  self.filesdownloaded = filesdownloaded
  self.steamID64 = steamID64
  self.unknown = unknown
  self.xuid_high = xuid_high
  self.xuid_low = xuid_low
end


_G.CWeaponInfo = {}
_G.CWeaponInfo.__index = CWeaponInfo

--- @param consoleName string
--- @param iMaxClip1 number
--- @param iMaxClip2 number
--- @param iDefaultClip1 number
--- @param iDefaultClip2 number
--- @param szWorldModel string
--- @param szViewModel string
--- @param szDroppedModel string
--- @param N0000023E string
--- @param szEmptySound string
--- @param szBulletType string
--- @param szHudName string
--- @param szWeaponName string
--- @param iWeaponType number
--- @param iWeaponType2 number
--- @param iWeaponPrice number
--- @param iKillAward number
--- @param bFullAuto boolean
--- @param iDamage number
--- @param flArmorRatio number
--- @param iBullets number
--- @param flPenetration number
--- @param flRange number
--- @param flRangeModifier number
--- @param flThrowVelocity number
function CWeaponInfo:new(consoleName, iMaxClip1, iMaxClip2, iDefaultClip1, iDefaultClip2, szWorldModel, szViewModel, szDroppedModel, N0000023E, szEmptySound, szBulletType, szHudName, szWeaponName, iWeaponType, iWeaponType2, iWeaponPrice, iKillAward, bFullAuto, iDamage, flArmorRatio, iBullets, flPenetration, flRange, flRangeModifier, flThrowVelocity)
  self.consoleName = consoleName
  self.iMaxClip1 = iMaxClip1
  self.iMaxClip2 = iMaxClip2
  self.iDefaultClip1 = iDefaultClip1
  self.iDefaultClip2 = iDefaultClip2
  self.szWorldModel = szWorldModel
  self.szViewModel = szViewModel
  self.szDroppedModel = szDroppedModel
  self.N0000023E = N0000023E
  self.szEmptySound = szEmptySound
  self.szBulletType = szBulletType
  self.szHudName = szHudName
  self.szWeaponName = szWeaponName
  self.iWeaponType = iWeaponType
  self.iWeaponType2 = iWeaponType2
  self.iWeaponPrice = iWeaponPrice
  self.iKillAward = iKillAward
  self.bFullAuto = bFullAuto
  self.iDamage = iDamage
  self.flArmorRatio = flArmorRatio
  self.iBullets = iBullets
  self.flPenetration = flPenetration
  self.flRange = flRange
  self.flRangeModifier = flRangeModifier
  self.flThrowVelocity = flThrowVelocity
end


--- Функции для работы с файлами
--- @table
_G.FileSys = {}

--- Удаление всего из файла и сохранение туда своего текста
--- @param PathFile string
--- @param Text string
--- @return boolean
function FileSys.SaveTextToFile(PathFile, Text) end

--- Получение всего текста из файла
--- @param PathFile string
--- @return string
function FileSys.GetTextFromFile(PathFile) end

--- Автоматизированная система сохранения своего значения настройки в файл (Путь файла, имя переменной, его значение и категория)
--- @param PathFile string
--- @param VarName string
--- @param VarValue string
--- @param Category string
function FileSys.SaveVarStringToFile(PathFile, VarName, VarValue, Category) end

--- Автоматизированная система получения значения настройки из файла (Путь файла, имя переменной, категория и значение по-умолчанию, если в файле не было найдено)
--- @param PathFile string
--- @param VarName string
--- @param Category string
--- @param DefaultValue string
--- @return string
function FileSys.GetVarStringFromFile(PathFile, VarName, Category, DefaultValue) end

--- Создать папку
--- @param PathFile string
function FileSys.CreateDirectory(PathFile) end

--- Создать файл
--- @param PathFile string
function FileSys.CreateFile(PathFile) end


--- Функции для работы с вводимыми данными
--- @table
_G.InputSys = {}

--- @param Key number
--- @return boolean
function InputSys.IsKeyDown(Key) end

--- @param Key number
--- @return boolean
function InputSys.IsKeyPress(Key) end

--- @return Vector2D
function InputSys.GetCursorPos() end

--- @param x number
--- @param y number
function InputSys.SetCursorPos(x, y) end

--- @param KeyOfKeyBoardID number
function InputSys.SendKey(KeyOfKeyBoardID) end


--- Функции для работы с математикой
--- @table
_G.Math = {}

--- @param ang QAngle
function Math.Normalize(ang) end

--- @param ang QAngle
function Math.ClampAngles(ang) end

--- @param ang Vector
function Math.ClampVector(vec) end

--- @param Vec Vector
--- @param ToAng QAngle
function Math.VectorAngles(Vec, ToAng) end

--- @param Ang QAngle
--- @param ToVec Vector
function Math.AngleVectors(Ang, ToVec) end

--- @param inVec Vector
--- @param outVec Vector
function Math.WorldToScreen(inVec, outVec) end

--- @param Vec1 Vector
--- @param Vec2 Vector
--- @return number
function Math.VectorDistance(Vec1, Vec2) end


--- Утилиты
--- @table
_G.Utils = {}

--- @param pCmd CUserCmd
--- @param WishAngle QAngle
--- @param OldAngles QAngle
--- @param CmdMoveDisable boolean
function Utils.MovementFix(pCmd, WishAngle, OldAngles, CmdMoveDisable) end

--- @param vOldAngles QAngle
--- @param pCmd CUserCmd
--- @param fOldForward number
--- @param fOldSidemove number
--- @param CmdMoveDisable boolean
function Utils.CorrectMovement(vOldAngles, pCmd, fOldForward, fOldSidemove, CmdMoveDisable) end

--- @param viewAngle QAngle
--- @param aimAngle QAngle
--- @return number
function Utils.GetFovToPlayer(viewAngle, aimAngle) end

--- @param hitchance number
--- @return boolean
function Utils.HitChance(hitchance) end

--- @return boolean
function Utils.IsDangerZone() end

--- @return boolean
function Utils.IsChangedTeam() end

--- @return number
function Utils.GetFps() end

--- @return boolean
function Utils.IsCanChoke() end

--- @param voice_check boolean
--- @return boolean
function Utils.IsCanLag(voice_check) end

--- @param vStartPos Vector
--- @param vEndPos Vector
--- @return boolean
function Utils.LineGoesThroughSmoke(vStartPos, vEndPos) end

function Utils.AttachConsole() end

function Utils.DetachConsole() end

--- @param fmt string
--- @return boolean
function Utils.IsCanChoke(fmt, ...) end

--- @param tag string
--- @return boolean
function Utils.SetClantag(tag) end

--- @param name string
--- @return boolean
function Utils.SetName(name) end

--- @param playerId number
function Utils.GetObservervators(playerId) end

--- @param vecAbsStart Vector
--- @param vecAbsEnd Vector
--- @param mask number
--- @param ignore C_BasePlayer
--- @param ptr trace_t
function Utils.TraceLine(vecAbsStart, vecAbsEnd, mask, ignore, ptr) end

--- @param vecAbsStart Vector
--- @param vecAbsEnd Vector
--- @param mask number
--- @param ignore C_BasePlayer
--- @param ptr trace_t
function Utils.TraceLineOnlyEntities(vecAbsStart, vecAbsEnd, mask, ignore, ptr) end

--- @return boolean
function Utils.IsCursorLocked() end

--- @return boolean
function Utils.IsInGame() end

--- @return boolean
function Utils.IsLocal() end

--- @return boolean
function Utils.IsLocalAlive() end


--- Таблица с состоянием чита
--- @table
_G.Globals = {}

--- @return number
function Globals.ScreenHeight() end

--- @return number
function Globals.ScreenWeight() end

--- @return boolean
function Globals.MenuOpened() end

--- @return number
function Globals.MaxChokedTicks() end

--- @return boolean
function Globals.bSendPacket() end

--- @return QAngle
function Globals.LastAngle() end

--- @return boolean
function Globals.IsAim() end

--- @return boolean
function Globals.IsRage() end

--- @return boolean
function Globals.IsESP() end

--- @return boolean
function Globals.IsAutoFire() end

--- @return boolean
function Globals.IsTrigger() end

--- @return boolean
function Globals.IsCam() end

--- @return boolean
function Globals.IsThirdPerspon() end

--- @return boolean
function Globals.IsJumpBug() end

--- @return boolean
function Globals.IsAutoDuck() end

--- @return boolean
function Globals.IsAutoStrafe() end


_G.Render = {}

--- @param text string
--- @param size number
--- @return ImVec2
function Render.CalcTextSize_Icon(text, size) end

--- @param text string
--- @param size number
--- @return ImVec2
function Render.CalcTextSize_Roboto(text, size) end

--- @param text string
--- @param size number
--- @return ImVec2
function Render.CalcTextSize_TahomaBd(text, size) end

--- @param text string
--- @param x number
--- @param y number
--- @param size number
--- @param color Color
--- @param center boolean
--- @param outline boolean
--- @return number
function Render.Text_Icon(text, x, y, size, color, center, outline) end

--- @param text string
--- @param x number
--- @param y number
--- @param size number
--- @param color Color
--- @param center boolean
--- @param outline boolean
--- @return number
function Render.Text_Roboto(text, x, y, size, color, center, outline) end

--- @param text string
--- @param x number
--- @param y number
--- @param size number
--- @param color Color
--- @param center boolean
--- @param outline boolean
--- @return number
function Render.Text_TahomaBd(text, x, y, size, color, center, outline) end

--- @param position Vector
--- @param points number
--- @param radius number
--- @param color Color
function Render.Circle3D(position, points, radius, color) end

--- @param position Vector
--- @param points number
--- @param radius number
--- @param color Color
function Render.CircleFilled3D(position, points, radius, color) end

--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param color Color
--- @param thickness number
function Render.CoalBox(x1, y1, x2, y2, color, thickness) end

--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param color Color
--- @param thickness number
function Render.Line(x1, y1, x2, y2, color, thickness) end

--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param color Color
--- @param rounding number
--- @param thickness number
function Render.Rect(x1, y1, x2, y2, color, rounding, thickness) end

--- @param x number
--- @param y number
--- @param w number
--- @param h number
--- @param color Color
--- @param rounding number
--- @param thickness number
function Render.Rect2(x, y, w, h, color, rounding, thickness) end

--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param color Color
--- @param rounding number
function Render.RectFilled(x1, y1, x2, y2, color, rounding) end

--- @param x number
--- @param y number
--- @param w number
--- @param h number
--- @param color Color
--- @param rounding number
function Render.RectFilled2(x, y, w, h, color, rounding) end

--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param color_upper_left Color
--- @param color_upper_right Color
--- @param color_bottom_right Color
--- @param color_bottom_left Color
function Render.RectFilledMultiColor(x1, y1, x2, y2, color_upper_left, color_upper_right, color_bottom_right, color_bottom_left) end

--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param x3 number
--- @param y3 number
--- @param x4 number
--- @param y4 number
--- @param color Color
--- @param thickness number
function Render.Quad(x1, y1, x2, y2, x3, y3, x4, y4, color, thickness) end

--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param x3 number
--- @param y3 number
--- @param x4 number
--- @param y4 number
--- @param color Color
function Render.QuadFilled(x1, y1, x2, y2, x3, y3, x4, y4, color) end

--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param x3 number
--- @param y3 number
--- @param color Color
--- @param thickness number
function Render.Triangle(x1, y1, x2, y2, x3, y3, color, thickness) end

--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param x3 number
--- @param y3 number
--- @param color Color
function Render.TriangleFilled(x1, y1, x2, y2, x3, y3, color) end

--- @param x number
--- @param y number
--- @param color Color
--- @param num_segments number
--- @param thickness number
function Render.Circle(x, y, radius, color, num_segments, thickness) end

--- @param x number
--- @param y number
--- @param color Color
--- @param num_segments number
function Render.CircleFilled(x, y, radius, color, num_segments) end

--- @param points ImVec2
--- @param points_count number
--- @param color Color
--- @param closed boolean
--- @param thickness number
function Render.Poly(points, points_count, color, closed, thickness) end

--- @param points ImVec2
--- @param points_count number
--- @param color Color
function Render.PolyFilled(points, points_count, color) end


_G.Menu = {}

--- @param label string
--- @param key string
--- @param def boolean
--- @return string
function Menu.Checkbox(label, key, def) end

--- @param label string
--- @param key string
--- @param min number
--- @param max number
--- @param format string
--- @param def number
--- @return string
function Menu.SliderInt(label, key, min, max, format, def) end

--- @param label string
--- @param key string
--- @param min number
--- @param max number
--- @param format string
--- @param def number
--- @return string
function Menu.SliderFloat(label, key, min, max, format, def) end

--- @param label string
--- @param key string
--- @param def number
--- @return string
function Menu.InputInt(label, key, def) end

--- @param label string
--- @param key string
--- @param def number
--- @return string
function Menu.InputFloat(label, key, def) end

--- @param label string
--- @param key string
--- @param def string
--- @return string
function Menu.InputText(label, key, def) end

--- @param label string
--- @param key string
--- @return string
function Menu.Button(label, key) end

--- @param label string
--- @param key string
--- @param r number
--- @param g number
--- @param b number
--- @param a number
--- @return string
function Menu.ColorPicker(label, key, r, g, b, a) end

--- @param label string
--- @param key string
--- @param def string
--- @return string
function Menu.KeyBind(label, key, def) end

--- @param label string
--- @param key string
--- @param items any # Array (list, tuple, vector) of strings e.g. { "test", "tost" }
--- @param def string
--- @return string
function Menu.Combo(label, key, items, def) end

--- @param label string
function Menu.Text(label) end

function Menu.Separator() end

function Menu.Spacing() end

--- @param key string
--- @return boolean
function Menu.GetBool(key) end

--- @param key string
--- @param value boolean
function Menu.SetBool(key, value) end

--- @param key string
--- @return number
function Menu.GetInt(key) end

--- @param key string
--- @param value number
function Menu.SetInt(key, value) end

--- @param key string
--- @return number
function Menu.GetFloat(key) end

--- @param key string
--- @param value number
function Menu.SetFloat(key, value) end

--- @param key string
--- @return string
function Menu.GetString(key) end

--- @param key string
--- @param value string
function Menu.SetString(key, value) end

--- @param key string
--- @return Color
function Menu.GetColor(key) end

--- @param key string
--- @param value Color
function Menu.SetColor(key, value) end


_G.ICvar = {}

--- @return CVarDLLIdentifier_t
function ICvar.AllocateDLLIdentifier() end

--- @param pCommandBase ConCommandBase
function ICvar.RegisterConCommand(pCommandBase) end

--- @param pCommandBase ConCommandBase
function ICvar.UnregisterConCommand(pCommandBase) end

--- @param id CVarDLLIdentifier_t
function ICvar.UnregisterConCommands(id) end

--- @param pVariableName string
--- @return string
function ICvar.GetCommandLineValue(pVariableName) end

--- @param name string
--- @return ConCommandBase
function ICvar.FindCommandBase(name) end

--- @param var_name string
--- @return ConVar
function ICvar.FindVar(var_name) end

--- @param name string
--- @return ConCommand
function ICvar.FindCommand(name) end

--- @param callback FnChangeCallback_t
function ICvar.InstallGlobalChangeCallback(callback) end

--- @param callback FnChangeCallback_t
function ICvar.RemoveGlobalChangeCallback(callback) end

--- @param var ConVar
--- @param pOldString string
--- @param flOldValue number
function ICvar.CallGlobalChangeCallbacks(var, pOldString, flOldValue) end

--- @param pDisplayFunc IConsoleDisplayFunc
function ICvar.InstallConsoleDisplayFunc(pDisplayFunc) end

--- @param pDisplayFunc IConsoleDisplayFunc
function ICvar.RemoveConsoleDisplayFunc(pDisplayFunc) end

--- @param color Color
--- @param pFormat string
function ICvar.ConsoleColorPrintf(color, pFormat, ...) end

--- @param pFormat string
function ICvar.ConsolePrintf(pFormat, ...) end

--- @param pFormat string
function ICvar.ConsoleDPrintf(pFormat, ...) end

--- @param nFlag number
function ICvar.RevertFlaggedConVars(nFlag) end


_G.IPhysSurface = {}

--- @param surfaceDataIndex number
--- @return surfacedata_t
function IPhysSurface.GetSurfaceData(surfaceDataIndex) end


_G.IModelInfo = {}

--- @param model model_t
--- @return string
function IModelInfo.GetModelName(model) end


_G.IModelRender = {}

--- @param newMaterial IMaterial
--- @param nOverrideType number
--- @param nOverrides number
function IModelRender.ForcedMaterialOverride(newMaterial, nOverrideType, nOverrides) end

--- @return boolean
function IModelRender.IsForcedMaterialOverride() end


_G.IMaterialSystem = {}

--- @param pMaterialName string
--- @param pTextureGroupName string
--- @param complain boolean
--- @param pComplainPrefix string
--- @return IMaterial
function IMaterialSystem.FindMaterial(pMaterialName, pTextureGroupName, complain, pComplainPrefix) end

--- @return number
function IMaterialSystem.FirstMaterial() end

--- @return number
function IMaterialSystem.InvalidMaterial() end

--- @param h number
--- @return number
function IMaterialSystem.NextMaterial(h) end


_G.IGameEventListener = {}

--- @param event string
--- @param ServerSide boolean
function IGameEventListener.AddEvent(event, ServerSide) end

function IGameEventListener.ClearEvents() end


_G.IRenderBeams = {}

--- @param pbeam any
function IRenderBeams.DrawBeam(pbeam) end

--- @param beamInfo BeamInfo_t
--- @return Beam_t
function IRenderBeams.CreateBeamEntPoint(beamInfo) end

--- @param beamInfo BeamInfo_t
--- @return Beam_t
function IRenderBeams.CreateBeamPoints(beamInfo) end

--- @param beamInfo BeamInfo_t
--- @return Beam_t
function IRenderBeams.CreateBeamRingPoint(beamInfo) end

--- @param beamInfo BeamInfo_t
--- @return Beam_t
function IRenderBeams.CreateBeamCirclePoints(beamInfo) end


_G.IGameType = {}

--- @param force boolean
--- @return boolean
function IGameType.Initialize(force) end

--- @return boolean
function IGameType.IsInitialized() end

--- @param gameType string
--- @param gameMode string
--- @return boolean
function IGameType.SetGameTypeAndMode(gameType, gameMode) end

--- @param alias string
--- @param gameType number
--- @param gameMode number
--- @return boolean
function IGameType.GetGameTypeAndModeFromAlias(alias, gameType, gameMode) end

--- @param gameType number
--- @param gameMode number
--- @return boolean
function IGameType.SetGameTypeAndMode(gameType, gameMode) end

--- @param pExtendedServerInfo any
function IGameType.SetAndParseExtendedServerInfo(pExtendedServerInfo) end

--- @param mapName string
--- @return boolean
function IGameType.CheckShouldSetDefaultGameModeAndType(mapName) end

--- @return number
function IGameType.GetCurrentGameType() end

--- @return number
function IGameType.GetCurrentGameMode() end

--- @return string
function IGameType.GetCurrentMapName() end

--- @return string
function IGameType.GetCurrentGameTypeNameID() end

--- @return string
function IGameType.GetCurrentGameModeNameID() end


_G.IChatElement = {}

--- @param iPlayerIndex number
--- @param iFilter number
--- @param fmt string
function IChatElement.ChatPrintf(iPlayerIndex, iFilter, fmt, ...) end

--- @return boolean
function IChatElement.IsChatOpened() end


_G.IEntityList = {}

--- @param entNum number
--- @return CEntity
function IEntityList.GetEntity(entNum) end

--- @param entNum number
--- @return CPlayer
function IEntityList.GetPlayer(entNum) end

--- @param entNum number
--- @return CPlantedC4
function IEntityList.GetPlantedC4(entNum) end

--- @param ent IClientEntity
--- @return CEntity
function IEntityList.ToEntity(ent) end

--- @param ent IClientEntity
--- @return CPlayer
function IEntityList.ToPlayer(ent) end

--- @param ent IClientEntity
--- @return CPlantedC4
function IEntityList.ToPlantedC4(ent) end

--- @return number
function IEntityList.GetHighestEntityIndex() end

--- @return number
function IEntityList.GetMaxEntities() end


--- @param pointer string
--- @param value string
function SetString(pointer, value) end

--- @param pointer string
--- @return string
function GetString(pointer) end

--- @param pointer string
--- @param value boolean
function SetBool(pointer, value) end

--- @param pointer string
--- @return boolean
function GetBool(pointer) end

--- @param pointer string
--- @param value number
function SetShort(pointer, value) end

--- @param pointer string
--- @return number
function GetShort(pointer) end

--- @param pointer string
--- @param value number
function SetInt(pointer, value) end

--- @param pointer string
--- @return number
function GetInt(pointer) end

--- @param pointer string
--- @param value number
function SetFloat(pointer, value) end

--- @param pointer string
--- @return number
function GetFloat(pointer) end

--- @param pointer string
--- @param value number
function SetDouble(pointer, value) end

--- @param pointer string
--- @return number
function GetDouble(pointer) end

--- @param pointer string
--- @param value Vector
function SetVector(pointer, value) end

--- @param pointer string
--- @return Vector
function GetVector(pointer) end

--- @param pointer string
--- @param value QAngle
function SetAngle(pointer, value) end

--- @param pointer string
--- @return QAngle
function GetAngle(pointer) end

--- @param pointer string
--- @param value Color
function SetColor(pointer, value) end

--- @param pointer string
--- @return Color
function GetColor(pointer) end


--- @param iAddress number
--- @param value string
function SetStringA(iAddress, value) end

--- @param iAddress number
--- @return string
function GetStringA(iAddress) end

--- @param iAddress number
--- @param value boolean
function SetBoolA(iAddress, value) end

--- @param iAddress number
--- @return boolean
function GetBoolA(iAddress) end

--- @param iAddress number
--- @param value number
function SetShortA(iAddress, value) end

--- @param iAddress number
--- @return number
function GetShortA(iAddress) end

--- @param iAddress number
--- @param value number
function SetIntA(iAddress, value) end

--- @param iAddress number
--- @return number
function GetIntA(iAddress) end

--- @param iAddress number
--- @param value number
function SetFloatA(iAddress, value) end

--- @param iAddress number
--- @return number
function GetFloatA(iAddress) end

--- @param iAddress number
--- @param value number
function SetDoubleA(iAddress, value) end

--- @param iAddress number
--- @return number
function GetDoubleA(iAddress) end

--- @param iAddress number
--- @param value Vector
function SetVectorA(iAddress, value) end

--- @param iAddress number
--- @return Vector
function GetVectorA(iAddress) end

--- @param iAddress number
--- @param value QAngle
function SetAngleA(iAddress, value) end

--- @param iAddress number
--- @return QAngle
function GetAngleA(iAddress) end

--- @param iAddress number
--- @param value Color
function SetColorA(iAddress, value) end

--- @param iAddress number
--- @return Color
function GetColorA(iAddress) end

--- Для работы с битами. Узнать состояние бита под номером Bit у Var
--- @param Var number
--- @param Bit number
--- @return boolean
function IsBit(Var, Bit) end

--- Для работы с битами. Присвоить 1 в бит под номером Bit у Var и вернуть новый Var как значение функции
--- @param Var number
--- @param Bit number
--- @return number
function SetBit(Var, Bit) end

--- Для работы с битами. Присвоить 0 в бит под номером Bit у Var и вернуть новый Var как значение функции
--- @param Var number
--- @param Bit number
--- @return number
function DelBit(Var, Bit) end


--- получить путь до AppData (на конце пути не будет /)
--- @return string
function GetAppData() end

--- Сколько времени прошло с запуска системы в мс, подойдет для таймера
--- @return number
function GetTickCount() end

--- Воспроизведение звука по пути до файла
--- @param pszSound string
--- @return number
function PlaySound(pszSound) end


--- @return number
function GetTimeSec() end

--- @return number
function GetTimeMin() end

--- @return number
function GetTimeHour() end

--- @return number
function GetTimeDay() end

--- @return number
function GetTimeMonth() end

--- @return number
function GetTimeYear() end


--- @param seed uint32_t
function RandomSeed(seed) end

--- @param min number
--- @param max number
--- @return number
function RandomInt(min, max) end

--- @param min number
--- @param max number
--- @return number
function RandomFloat(min, max) end


--- @param Message string
function Print(Message) end


_G.Vars = {}
_G.Vars.__index = Vars

function Vars:new(ragebot_antiaim_pitch, ragebot_antiaim_yaw, antiaim_desync_type, antiaim_desync_antishake, antiaim_desync_swap_type, antiaim_desync_key, rage_resolver, resolver_type, rage_body_if_HP, rage_all_without_head_if_HP, rage_body_on_key, rage_all_without_head_on_key, misc_RegionChanger, misc_airstack, misc_airstack_key, misc_ServerCrasher, misc_ServerCrasher_Enable1, misc_ServerCrasher_Enable2, misc_FakePrime, fakelag_enable, fakelag_type, fakelag_amt, misc_FakePing, misc_FakePingAmt, ragebot_slowwalk, ragebot_slowwalk_amt, ragebot_slowwalk_key, ragebot_enabled, ragebot_fov, ragebot_autozeus, ragebot_hitbox, ragebot_hitbox_multipoint_scale, ragebot_selection, ragebot_Silent, ragebot_AimStep, ragebot_AimStep_Value, ragebot_autoscope, ragebot_autostop, ragebot_autocrouch, ragebot_mindamage, ragebot_hitchance, ragebot_baim_after_shots, legit_enable, legit_autocrouch, legit_on_key, legit_key, legit_autofire, legit_autofire_key, legit_smokecheck, legit_jumpcheck_me, legit_jumpcheck_enemy, legit_flashcheck, legit_ignoreteam, legit_drawfovaimbot, legit_backtrack, legit_backtrack_time, legit_trigger_key, trigger_keypressed, visuals_spreadxair, visuals_watermark, visuals_rainbowbar, visuals_rainbowmenu, visuals_rainbowmenu_speed, visuals_crosshair, visuals_recoil, visuals_aimspot, visuals_norecoil, visuals_noflash, visuals_nosmoke, visuals_thirdperson, visuals_thirdperson_key, visuals_noscopeborder, visuals_angle_lines, visuals_angle_arrow, rad_InGame, rad_Barrel, rad_Active, rad_OnlyEnemy, rad_Range, rad_Alpha, rad_Color_Team_Vis, rad_Color_Enemy_Vis, rad_Color_Team_Invis, rad_Color_Enemy_Invis, esp_enabled, esp_dynamic, esp_ignore_team, esp_visible_only, esp_player_box, esp_player_box_outline, esp_player_box_style, esp_player_box_size, esp_sounds, esp_sounds_dist, esp_sounds_time, esp_sounds_radius, esp_player_lastpos, esp_player_lastpos_time, esp_grenade_prediction, esp_player_line, esp_player_name, esp_player_weapon, esp_player_ammo, esp_player_status, esp_player_distance, esp_backtrackticks, esp_player_health, esp_player_armor, esp_Custom, esp_Pos, esp_Width, esp_X, esp_Y, esp_drop_enable, esp_drop_distance, esp_dropped_pistols, esp_dropped_smg, esp_dropped_rifles, esp_dropped_heavy, esp_dropped_grenades, esp_active_grenades, esp_defuse_kit, esp_c4, esp_chicken, esp_dangerzone, esp_dz_airdrop, esp_dz_case_explosive, esp_dz_case_shotgun, esp_dz_case_smg, esp_dz_case_pistol, esp_dz_case_tools, esp_dz_ammobox, esp_dz_safe, esp_dz_contract, esp_dz_money, esp_dz_drons, esp_dz_turretes, esp_dz_armor, esp_dz_upgrades, glow_enabled, glow_type_visible, glow_type_invisible, glow_ignore_team, glow_visible_only, chams_player_enabled, chams_player_ignore_team, chams_player_glow_for_visible, chams_player_glow_for_invisible, chams_player_material_visible, chams_player_material_invisible, chams_weapon_enabled, chams_sleeve_enabled, chams_arms_enabled, chams_weapon_material_visible, chams_sleeve_material_visible, chams_arms_material_visible, chams_weapon_glow_for_visible, chams_sleeve_glow_for_visible, chams_arms_glow_for_visible, misc_AutoKnife, misc_AutoKnife_Type, misc_AutoKnife_AttackType, misc_AutoKnife_Dist1, misc_AutoKnife_Dist2, misc_AutoZeus, misc_AutoZeus_Delay, misc_BlockBot, misc_BlockBotKey, misc_DoorSpam, misc_DoorSpamKey, misc_RadioSpam, misc_ChatSpam, misc_ChatSpam_Type, misc_ChatSpam_Delay, misc_ChatSpam_Text, misc_ChatBreak, misc_InfoSpam, misc_InfoSpamLevel, misc_InfoSpamDelay, misc_InfoSpamTeam, misc_InfoSpamChat, misc_CustomName, misc_HitSound, misc_WalkBot, misc_WalkBot_Smooth, misc_CamHack, misc_CamHack_Key, misc_CamHack_Speed, misc_antikick, misc_autoaccept, misc_showrank, misc_spectlist, misc_clantag, misc_fastduck, misc_bhop, misc_edge, misc_edgeKey, misc_SlideWalk, misc_jumpbug, misc_jumpbug_auto, misc_jumpbug_key, misc_jumpbug_duck, misc_jumpbug_miss, misc_jumpbug_startDuckDist, misc_jumpbug_endDuckDist, misc_jumpbug_rangeSteps, misc_jumpbug_angSteps, misc_autostrafe, misc_autostrafe_enabletype, misc_autostrafe_key, misc_autoduck, misc_autoduck_enabletype, misc_autoduck_key, misc_customFov, misc_overridefov, misc_viewmodelfov, misc_showranks, misc_NoPostProc, misc_NoShadows, misc_DoResetName, misc_NameReseted, misc_GlitchName, misc_GlitchName_Text, misc_ColorName, misc_ColorName_Text, misc_FakeBan1, misc_FakeBan2, misc_FakeBan_Text, misc_FakeSkin, misc_NameStealer, misc_NameStealerDelay, misc_NameStealerTeam, misc_WeaponsZoom, misc_WeaponsZoom_Model, misc_WeaponsZoom_Fov, misc_nightmode, misc_Ambient, misc_CrosshairAlways, obs_bypass, svpure_bypass, menu_key, panic_key_aim, panic_key_rage, panic_key_esp, color_esp_Ambient, color_esp_name, color_esp_weap, color_esp_line, color_esp_dist, color_esp_sound, color_esp_object, color_esp_enemy_visible, color_esp_enemy_hidden, color_esp_team_visible, color_esp_team_hidden, color_chams_enemy_visible, color_chams_enemy_hidden, color_chams_team_visible, color_chams_team_hidden, color_chams_local_weapon, color_chams_local_sleeve, color_chams_local_arms, color_glow_enemy_visible, color_glow_enemy_hidden, color_glow_team_visible, color_glow_team_hidden, color_glow_local_weapon, color_glow_local_sleeve, color_glow_local_arms, misc_ImGuiCol_Text, misc_ImGuiCol_TextHovered, misc_ImGuiCol_TextActive, misc_ImGuiCol_TextDisabled, misc_ImGuiCol_WindowBg, misc_ImGuiCol_ChildWindowBg, misc_ImGuiCol_PopupBg, misc_ImGuiCol_Border, misc_ImGuiCol_BorderShadow, misc_ImGuiCol_FrameBg, misc_ImGuiCol_FrameBgHovered, misc_ImGuiCol_FrameBgActive, misc_ImGuiCol_TitleBg, misc_ImGuiCol_TitleBgActive, misc_ImGuiCol_TitleBgCollapsed, misc_ImGuiCol_MenuBarBg, misc_ImGuiCol_ScrollbarBg, misc_ImGuiCol_ScrollbarGrab, misc_ImGuiCol_ScrollbarGrabHovered, misc_ImGuiCol_ScrollbarGrabActive, misc_ImGuiCol_ComboBg, misc_ImGuiCol_CheckMark, misc_ImGuiCol_CheckMarkActive, misc_ImGuiCol_SliderGrab, misc_ImGuiCol_SliderGrabActive, misc_ImGuiCol_Button, misc_ImGuiCol_Button2, misc_ImGuiCol_ButtonHovered, misc_ImGuiCol_ButtonActive, misc_ImGuiCol_Header, misc_ImGuiCol_HeaderHovered, misc_ImGuiCol_HeaderActive, misc_ImGuiCol_Column, misc_ImGuiCol_ColumnHovered, misc_ImGuiCol_ColumnActive, misc_ImGuiCol_ResizeGrip, misc_ImGuiCol_ResizeGripHovered, misc_ImGuiCol_ResizeGripActive, misc_ImGuiCol_CloseButton, misc_ImGuiCol_CloseButtonHovered, misc_ImGuiCol_CloseButtonActive, misc_ImGuiCol_PlotLines, misc_ImGuiCol_PlotLinesHovered, misc_ImGuiCol_PlotHistogram, misc_ImGuiCol_PlotHistogramHovered, misc_ImGuiCol_TextSelectedBg, misc_ImGuiCol_ModalWindowDarkening)
  setmetatable({}, Vars)

  self.ragebot_antiaim_pitch = ragebot_antiaim_pitch
  self.ragebot_antiaim_yaw = ragebot_antiaim_yaw
  self.antiaim_desync_type = antiaim_desync_type
  self.antiaim_desync_antishake = antiaim_desync_antishake
  self.antiaim_desync_swap_type = antiaim_desync_swap_type
  self.antiaim_desync_key = antiaim_desync_key
  self.rage_resolver = rage_resolver
  self.resolver_type = resolver_type
  self.rage_body_if_HP = rage_body_if_HP
  self.rage_all_without_head_if_HP = rage_all_without_head_if_HP
  self.rage_body_on_key = rage_body_on_key
  self.rage_all_without_head_on_key = rage_all_without_head_on_key
  self.misc_RegionChanger = misc_RegionChanger
  self.misc_airstack = misc_airstack
  self.misc_airstack_key = misc_airstack_key
  self.misc_ServerCrasher = misc_ServerCrasher
  self.misc_ServerCrasher_Enable1 = misc_ServerCrasher_Enable1
  self.misc_ServerCrasher_Enable2 = misc_ServerCrasher_Enable2
  self.misc_FakePrime = misc_FakePrime
  self.fakelag_enable = fakelag_enable
  self.fakelag_type = fakelag_type
  self.fakelag_amt = fakelag_amt
  self.misc_FakePing = misc_FakePing
  self.misc_FakePingAmt = misc_FakePingAmt
  self.ragebot_slowwalk = ragebot_slowwalk
  self.ragebot_slowwalk_amt = ragebot_slowwalk_amt
  self.ragebot_slowwalk_key = ragebot_slowwalk_key
  self.ragebot_enabled = ragebot_enabled
  self.ragebot_fov = ragebot_fov
  self.ragebot_autozeus = ragebot_autozeus
  self.ragebot_hitbox = ragebot_hitbox
  self.ragebot_hitbox_multipoint_scale = ragebot_hitbox_multipoint_scale
  self.ragebot_selection = ragebot_selection
  self.ragebot_Silent = ragebot_Silent
  self.ragebot_AimStep = ragebot_AimStep
  self.ragebot_AimStep_Value = ragebot_AimStep_Value
  self.ragebot_autoscope = ragebot_autoscope
  self.ragebot_autostop = ragebot_autostop
  self.ragebot_autocrouch = ragebot_autocrouch
  self.ragebot_mindamage = ragebot_mindamage
  self.ragebot_hitchance = ragebot_hitchance
  self.ragebot_baim_after_shots = ragebot_baim_after_shots
  self.legit_enable = legit_enable
  self.legit_autocrouch = legit_autocrouch
  self.legit_on_key = legit_on_key
  self.legit_key = legit_key
  self.legit_autofire = legit_autofire
  self.legit_autofire_key = legit_autofire_key
  self.legit_smokecheck = legit_smokecheck
  self.legit_jumpcheck_me = legit_jumpcheck_me
  self.legit_jumpcheck_enemy = legit_jumpcheck_enemy
  self.legit_flashcheck = legit_flashcheck
  self.legit_ignoreteam = legit_ignoreteam
  self.legit_drawfovaimbot = legit_drawfovaimbot
  self.legit_backtrack = legit_backtrack
  self.legit_backtrack_time = legit_backtrack_time
  self.legit_trigger_key = legit_trigger_key
  self.trigger_keypressed = trigger_keypressed
  self.visuals_spreadxair = visuals_spreadxair
  self.visuals_watermark = visuals_watermark
  self.visuals_rainbowbar = visuals_rainbowbar
  self.visuals_rainbowmenu = visuals_rainbowmenu
  self.visuals_rainbowmenu_speed = visuals_rainbowmenu_speed
  self.visuals_crosshair = visuals_crosshair
  self.visuals_recoil = visuals_recoil
  self.visuals_aimspot = visuals_aimspot
  self.visuals_norecoil = visuals_norecoil
  self.visuals_noflash = visuals_noflash
  self.visuals_nosmoke = visuals_nosmoke
  self.visuals_thirdperson = visuals_thirdperson
  self.visuals_thirdperson_key = visuals_thirdperson_key
  self.visuals_noscopeborder = visuals_noscopeborder
  self.visuals_angle_lines = visuals_angle_lines
  self.visuals_angle_arrow = visuals_angle_arrow
  self.rad_InGame = rad_InGame
  self.rad_Barrel = rad_Barrel
  self.rad_Active = rad_Active
  self.rad_OnlyEnemy = rad_OnlyEnemy
  self.rad_Range = rad_Range
  self.rad_Alpha = rad_Alpha
  self.rad_Color_Team_Vis = rad_Color_Team_Vis
  self.rad_Color_Enemy_Vis = rad_Color_Enemy_Vis
  self.rad_Color_Team_Invis = rad_Color_Team_Invis
  self.rad_Color_Enemy_Invis = rad_Color_Enemy_Invis
  self.esp_enabled = esp_enabled
  self.esp_dynamic = esp_dynamic
  self.esp_ignore_team = esp_ignore_team
  self.esp_visible_only = esp_visible_only
  self.esp_player_box = esp_player_box
  self.esp_player_box_outline = esp_player_box_outline
  self.esp_player_box_style = esp_player_box_style
  self.esp_player_box_size = esp_player_box_size
  self.esp_sounds = esp_sounds
  self.esp_sounds_dist = esp_sounds_dist
  self.esp_sounds_time = esp_sounds_time
  self.esp_sounds_radius = esp_sounds_radius
  self.esp_player_lastpos = esp_player_lastpos
  self.esp_player_lastpos_time = esp_player_lastpos_time
  self.esp_grenade_prediction = esp_grenade_prediction
  self.esp_player_line = esp_player_line
  self.esp_player_name = esp_player_name
  self.esp_player_weapon = esp_player_weapon
  self.esp_player_ammo = esp_player_ammo
  self.esp_player_status = esp_player_status
  self.esp_player_distance = esp_player_distance
  self.esp_backtrackticks = esp_backtrackticks
  self.esp_player_health = esp_player_health
  self.esp_player_armor = esp_player_armor
  self.esp_Custom = esp_Custom
  self.esp_Pos = esp_Pos
  self.esp_Width = esp_Width
  self.esp_X = esp_X
  self.esp_Y = esp_Y
  self.esp_drop_enable = esp_drop_enable
  self.esp_drop_distance = esp_drop_distance
  self.esp_dropped_pistols = esp_dropped_pistols
  self.esp_dropped_smg = esp_dropped_smg
  self.esp_dropped_rifles = esp_dropped_rifles
  self.esp_dropped_heavy = esp_dropped_heavy
  self.esp_dropped_grenades = esp_dropped_grenades
  self.esp_active_grenades = esp_active_grenades
  self.esp_defuse_kit = esp_defuse_kit
  self.esp_c4 = esp_c4
  self.esp_chicken = esp_chicken
  self.esp_dangerzone = esp_dangerzone
  self.esp_dz_airdrop = esp_dz_airdrop
  self.esp_dz_case_explosive = esp_dz_case_explosive
  self.esp_dz_case_shotgun = esp_dz_case_shotgun
  self.esp_dz_case_smg = esp_dz_case_smg
  self.esp_dz_case_pistol = esp_dz_case_pistol
  self.esp_dz_case_tools = esp_dz_case_tools
  self.esp_dz_ammobox = esp_dz_ammobox
  self.esp_dz_safe = esp_dz_safe
  self.esp_dz_contract = esp_dz_contract
  self.esp_dz_money = esp_dz_money
  self.esp_dz_drons = esp_dz_drons
  self.esp_dz_turretes = esp_dz_turretes
  self.esp_dz_armor = esp_dz_armor
  self.esp_dz_upgrades = esp_dz_upgrades
  self.glow_enabled = glow_enabled
  self.glow_type_visible = glow_type_visible
  self.glow_type_invisible = glow_type_invisible
  self.glow_ignore_team = glow_ignore_team
  self.glow_visible_only = glow_visible_only
  self.chams_player_enabled = chams_player_enabled
  self.chams_player_ignore_team = chams_player_ignore_team
  self.chams_player_glow_for_visible = chams_player_glow_for_visible
  self.chams_player_glow_for_invisible = chams_player_glow_for_invisible
  self.chams_player_material_visible = chams_player_material_visible
  self.chams_player_material_invisible = chams_player_material_invisible
  self.chams_weapon_enabled = chams_weapon_enabled
  self.chams_sleeve_enabled = chams_sleeve_enabled
  self.chams_arms_enabled = chams_arms_enabled
  self.chams_weapon_material_visible = chams_weapon_material_visible
  self.chams_sleeve_material_visible = chams_sleeve_material_visible
  self.chams_arms_material_visible = chams_arms_material_visible
  self.chams_weapon_glow_for_visible = chams_weapon_glow_for_visible
  self.chams_sleeve_glow_for_visible = chams_sleeve_glow_for_visible
  self.chams_arms_glow_for_visible = chams_arms_glow_for_visible
  self.misc_AutoKnife = misc_AutoKnife
  self.misc_AutoKnife_Type = misc_AutoKnife_Type
  self.misc_AutoKnife_AttackType = misc_AutoKnife_AttackType
  self.misc_AutoKnife_Dist1 = misc_AutoKnife_Dist1
  self.misc_AutoKnife_Dist2 = misc_AutoKnife_Dist2
  self.misc_AutoZeus = misc_AutoZeus
  self.misc_AutoZeus_Delay = misc_AutoZeus_Delay
  self.misc_BlockBot = misc_BlockBot
  self.misc_BlockBotKey = misc_BlockBotKey
  self.misc_DoorSpam = misc_DoorSpam
  self.misc_DoorSpamKey = misc_DoorSpamKey
  self.misc_RadioSpam = misc_RadioSpam
  self.misc_ChatSpam = misc_ChatSpam
  self.misc_ChatSpam_Type = misc_ChatSpam_Type
  self.misc_ChatSpam_Delay = misc_ChatSpam_Delay
  self.misc_ChatSpam_Text = misc_ChatSpam_Text
  self.misc_ChatBreak = misc_ChatBreak
  self.misc_InfoSpam = misc_InfoSpam
  self.misc_InfoSpamLevel = misc_InfoSpamLevel
  self.misc_InfoSpamDelay = misc_InfoSpamDelay
  self.misc_InfoSpamTeam = misc_InfoSpamTeam
  self.misc_InfoSpamChat = misc_InfoSpamChat
  self.misc_CustomName = misc_CustomName
  self.misc_HitSound = misc_HitSound
  self.misc_WalkBot = misc_WalkBot
  self.misc_WalkBot_Smooth = misc_WalkBot_Smooth
  self.misc_CamHack = misc_CamHack
  self.misc_CamHack_Key = misc_CamHack_Key
  self.misc_CamHack_Speed = misc_CamHack_Speed
  self.misc_antikick = misc_antikick
  self.misc_autoaccept = misc_autoaccept
  self.misc_showrank = misc_showrank
  self.misc_spectlist = misc_spectlist
  self.misc_clantag = misc_clantag
  self.misc_fastduck = misc_fastduck
  self.misc_bhop = misc_bhop
  self.misc_edge = misc_edge
  self.misc_edgeKey = misc_edgeKey
  self.misc_SlideWalk = misc_SlideWalk
  self.misc_jumpbug = misc_jumpbug
  self.misc_jumpbug_auto = misc_jumpbug_auto
  self.misc_jumpbug_key = misc_jumpbug_key
  self.misc_jumpbug_duck = misc_jumpbug_duck
  self.misc_jumpbug_miss = misc_jumpbug_miss
  self.misc_jumpbug_startDuckDist = misc_jumpbug_startDuckDist
  self.misc_jumpbug_endDuckDist = misc_jumpbug_endDuckDist
  self.misc_jumpbug_rangeSteps = misc_jumpbug_rangeSteps
  self.misc_jumpbug_angSteps = misc_jumpbug_angSteps
  self.misc_autostrafe = misc_autostrafe
  self.misc_autostrafe_enabletype = misc_autostrafe_enabletype
  self.misc_autostrafe_key = misc_autostrafe_key
  self.misc_autoduck = misc_autoduck
  self.misc_autoduck_enabletype = misc_autoduck_enabletype
  self.misc_autoduck_key = misc_autoduck_key
  self.misc_customFov = misc_customFov
  self.misc_overridefov = misc_overridefov
  self.misc_viewmodelfov = misc_viewmodelfov
  self.misc_showranks = misc_showranks
  self.misc_NoPostProc = misc_NoPostProc
  self.misc_NoShadows = misc_NoShadows
  self.misc_DoResetName = misc_DoResetName
  self.misc_NameReseted = misc_NameReseted
  self.misc_GlitchName = misc_GlitchName
  self.misc_GlitchName_Text = misc_GlitchName_Text
  self.misc_ColorName = misc_ColorName
  self.misc_ColorName_Text = misc_ColorName_Text
  self.misc_FakeBan1 = misc_FakeBan1
  self.misc_FakeBan2 = misc_FakeBan2
  self.misc_FakeBan_Text = misc_FakeBan_Text
  self.misc_FakeSkin = misc_FakeSkin
  self.misc_NameStealer = misc_NameStealer
  self.misc_NameStealerDelay = misc_NameStealerDelay
  self.misc_NameStealerTeam = misc_NameStealerTeam
  self.misc_WeaponsZoom = misc_WeaponsZoom
  self.misc_WeaponsZoom_Model = misc_WeaponsZoom_Model
  self.misc_WeaponsZoom_Fov = misc_WeaponsZoom_Fov
  self.misc_nightmode = misc_nightmode
  self.misc_Ambient = misc_Ambient
  self.misc_CrosshairAlways = misc_CrosshairAlways
  self.obs_bypass = obs_bypass
  self.svpure_bypass = svpure_bypass
  self.menu_key = menu_key
  self.panic_key_aim = panic_key_aim
  self.panic_key_rage = panic_key_rage
  self.panic_key_esp = panic_key_esp
  self.color_esp_Ambient = color_esp_Ambient
  self.color_esp_name = color_esp_name
  self.color_esp_weap = color_esp_weap
  self.color_esp_line = color_esp_line
  self.color_esp_dist = color_esp_dist
  self.color_esp_sound = color_esp_sound
  self.color_esp_object = color_esp_object
  self.color_esp_enemy_visible = color_esp_enemy_visible
  self.color_esp_enemy_hidden = color_esp_enemy_hidden
  self.color_esp_team_visible = color_esp_team_visible
  self.color_esp_team_hidden = color_esp_team_hidden
  self.color_chams_enemy_visible = color_chams_enemy_visible
  self.color_chams_enemy_hidden = color_chams_enemy_hidden
  self.color_chams_team_visible = color_chams_team_visible
  self.color_chams_team_hidden = color_chams_team_hidden
  self.color_chams_local_weapon = color_chams_local_weapon
  self.color_chams_local_sleeve = color_chams_local_sleeve
  self.color_chams_local_arms = color_chams_local_arms
  self.color_glow_enemy_visible = color_glow_enemy_visible
  self.color_glow_enemy_hidden = color_glow_enemy_hidden
  self.color_glow_team_visible = color_glow_team_visible
  self.color_glow_team_hidden = color_glow_team_hidden
  self.color_glow_local_weapon = color_glow_local_weapon
  self.color_glow_local_sleeve = color_glow_local_sleeve
  self.color_glow_local_arms = color_glow_local_arms
  self.misc_ImGuiCol_Text = misc_ImGuiCol_Text
  self.misc_ImGuiCol_TextHovered = misc_ImGuiCol_TextHovered
  self.misc_ImGuiCol_TextActive = misc_ImGuiCol_TextActive
  self.misc_ImGuiCol_TextDisabled = misc_ImGuiCol_TextDisabled
  self.misc_ImGuiCol_WindowBg = misc_ImGuiCol_WindowBg
  self.misc_ImGuiCol_ChildWindowBg = misc_ImGuiCol_ChildWindowBg
  self.misc_ImGuiCol_PopupBg = misc_ImGuiCol_PopupBg
  self.misc_ImGuiCol_Border = misc_ImGuiCol_Border
  self.misc_ImGuiCol_BorderShadow = misc_ImGuiCol_BorderShadow
  self.misc_ImGuiCol_FrameBg = misc_ImGuiCol_FrameBg
  self.misc_ImGuiCol_FrameBgHovered = misc_ImGuiCol_FrameBgHovered
  self.misc_ImGuiCol_FrameBgActive = misc_ImGuiCol_FrameBgActive
  self.misc_ImGuiCol_TitleBg = misc_ImGuiCol_TitleBg
  self.misc_ImGuiCol_TitleBgActive = misc_ImGuiCol_TitleBgActive
  self.misc_ImGuiCol_TitleBgCollapsed = misc_ImGuiCol_TitleBgCollapsed
  self.misc_ImGuiCol_MenuBarBg = misc_ImGuiCol_MenuBarBg
  self.misc_ImGuiCol_ScrollbarBg = misc_ImGuiCol_ScrollbarBg
  self.misc_ImGuiCol_ScrollbarGrab = misc_ImGuiCol_ScrollbarGrab
  self.misc_ImGuiCol_ScrollbarGrabHovered = misc_ImGuiCol_ScrollbarGrabHovered
  self.misc_ImGuiCol_ScrollbarGrabActive = misc_ImGuiCol_ScrollbarGrabActive
  self.misc_ImGuiCol_ComboBg = misc_ImGuiCol_ComboBg
  self.misc_ImGuiCol_CheckMark = misc_ImGuiCol_CheckMark
  self.misc_ImGuiCol_CheckMarkActive = misc_ImGuiCol_CheckMarkActive
  self.misc_ImGuiCol_SliderGrab = misc_ImGuiCol_SliderGrab
  self.misc_ImGuiCol_SliderGrabActive = misc_ImGuiCol_SliderGrabActive
  self.misc_ImGuiCol_Button = misc_ImGuiCol_Button
  self.misc_ImGuiCol_Button2 = misc_ImGuiCol_Button2
  self.misc_ImGuiCol_ButtonHovered = misc_ImGuiCol_ButtonHovered
  self.misc_ImGuiCol_ButtonActive = misc_ImGuiCol_ButtonActive
  self.misc_ImGuiCol_Header = misc_ImGuiCol_Header
  self.misc_ImGuiCol_HeaderHovered = misc_ImGuiCol_HeaderHovered
  self.misc_ImGuiCol_HeaderActive = misc_ImGuiCol_HeaderActive
  self.misc_ImGuiCol_Column = misc_ImGuiCol_Column
  self.misc_ImGuiCol_ColumnHovered = misc_ImGuiCol_ColumnHovered
  self.misc_ImGuiCol_ColumnActive = misc_ImGuiCol_ColumnActive
  self.misc_ImGuiCol_ResizeGrip = misc_ImGuiCol_ResizeGrip
  self.misc_ImGuiCol_ResizeGripHovered = misc_ImGuiCol_ResizeGripHovered
  self.misc_ImGuiCol_ResizeGripActive = misc_ImGuiCol_ResizeGripActive
  self.misc_ImGuiCol_CloseButton = misc_ImGuiCol_CloseButton
  self.misc_ImGuiCol_CloseButtonHovered = misc_ImGuiCol_CloseButtonHovered
  self.misc_ImGuiCol_CloseButtonActive = misc_ImGuiCol_CloseButtonActive
  self.misc_ImGuiCol_PlotLines = misc_ImGuiCol_PlotLines
  self.misc_ImGuiCol_PlotLinesHovered = misc_ImGuiCol_PlotLinesHovered
  self.misc_ImGuiCol_PlotHistogram = misc_ImGuiCol_PlotHistogram
  self.misc_ImGuiCol_PlotHistogramHovered = misc_ImGuiCol_PlotHistogramHovered
  self.misc_ImGuiCol_TextSelectedBg = misc_ImGuiCol_TextSelectedBg
  self.misc_ImGuiCol_ModalWindowDarkening = misc_ImGuiCol_ModalWindowDarkening
end

_G.IEngine = {}

--- @param model model_t
--- @param vCenter Vector
--- @param radius number
--- @param bOnlyVisibleSurfaces boolean
--- @param pInfos SurfInfo
--- @param nMaxInfos number
--- @return number
function IEngine.GetIntersectingSurfaces(model, vCenter, radius, bOnlyVisibleSurfaces, pInfos, nMaxInfos) end

--- @param pos Vector
--- @param bClamp boolean
--- @return Vector
function IEngine.GetLightForPoint(pos, bClamp) end

--- @param start Vector
--- @param end Vector
--- @param diffuseLightColor Vector
--- @param baseColor Vector
--- @return IMaterial
function IEngine.TraceLineMaterialAndLighting(startVec, endVec, diffuseLightColor, baseColor) end

--- @param data string
--- @param token string
--- @param maxlen number
--- @return string
function IEngine.ParseFile(data, token, maxlen) end

--- @param source string
--- @param destination string
--- @return boolean
function IEngine.CopyFile(source, destination) end

--- @return Vector2D
function IEngine.GetScreenSize() end

--- @param szCmdString string
--- @param bReliable boolean
function IEngine.ServerCmd(szCmdString, bReliable) end

--- @param szCmdString string
function IEngine.ClientCmd(szCmdString) end

--- @param ent_num number
--- @param pinfo player_info_t
--- @return boolean
function IEngine.GetPlayerInfo(ent_num, pinfo) end

--- @param userID number
--- @return number
function IEngine.GetPlayerForUserID(userID) end

--- @return boolean
function IEngine.Con_IsVisible() end

--- @return number
function IEngine.GetLocalPlayer() end

--- @param pName string
--- @param bProp boolean
--- @return model_t
function IEngine.LoadModel(pName, bProp) end

--- @return number
function IEngine.GetLastTimeStamp() end

--- @param pAudioSource CAudioSource
--- @return number
function IEngine.GetSentenceLength(pAudioSource) end

--- @param pAudioSource CAudioSource
--- @return boolean
function IEngine.IsStreaming(pAudioSource) end

--- @param va QAngle
function IEngine.GetViewAngles(va) end

--- @param va QAngle
function IEngine.SetViewAngles(va) end

--- @return number
function IEngine.GetMaxClients() end

--- @param pBinding string
--- @return string
function IEngine.Key_LookupBinding(pBinding) end

--- @param code number
--- @return string
function IEngine.Key_BindingForKey(code) end

function IEngine.StartKeyTrapMode() end

--- @param code number
--- @return boolean
function IEngine.CheckDoneKeyTrapping(code) end

--- @return boolean
function IEngine.IsInGame() end

--- @return boolean
function IEngine.IsConnected() end

--- @return boolean
function IEngine.IsDrawingLoadingImage() end

function IEngine.HideLoadingPlaque() end

--- @param pos number
--- @param fmt string
function IEngine.Con_NPrintf(pos, fmt) end

--- @param info number
--- @param fmt string
function IEngine.Con_NXPrintf(info, fmt) end

--- @param mins Vector
--- @param maxs Vector
--- @return number
function IEngine.IsBoxVisible(mins, maxs) end

--- @param mins Vector
--- @param maxs Vector
--- @return number
function IEngine.IsBoxInViewCluster(mins, maxs) end

--- @param mins Vector
--- @param maxs Vector
--- @return boolean
function IEngine.CullBox(mins, maxs) end

function IEngine.Sound_ExtraUpdate() end

--- @return string
function IEngine.GetGameDirectory() end

--- @param lumpId number
--- @return number
function IEngine.GameLumpVersion(lumpId) end

--- @param lumpId number
--- @return number
function IEngine.GameLumpSize(lumpId) end

--- @param lumpId number
--- @param pBuffer void
--- @param size number
--- @return boolean
function IEngine.LoadGameLump(lumpId, pBuffer, size) end

--- @return number
function IEngine.LevelLeafCount() end

--- @param linear number
--- @param gamma number
function IEngine.LinearToGamma(linear, gamma) end

--- @param style number
--- @return number
function IEngine.LightStyleValue(style) end

--- @param pt Vector
--- @param pNormal Vector
--- @param color Vector
function IEngine.ComputeDynamicLighting(pt, pNormal, color) end

--- @param color Vector
function IEngine.GetAmbientLightColor(color) end

--- @return number
function IEngine.GetDXSupportLevel() end

--- @return boolean
function IEngine.SupportsHDR() end

--- @param pMatSys IMaterialSystem
function IEngine.Mat_Stub(pMatSys) end

--- @param pchBuff string
--- @param iMaxLength number
function IEngine.GetChapterName(pchBuff, iMaxLength) end

--- @return string
function IEngine.GetLevelName() end

--- @return string
function IEngine.GetLevelNameShort() end

--- @return string
function IEngine.GetMapGroupName() end

--- @param someint number
function IEngine.SetVoiceCasterID(someint) end

function IEngine.EngineStats_BeginFrame() end

function IEngine.EngineStats_EndFrame() end

function IEngine.FireEvents() end

--- @param pLeaves number
--- @param nLeaves number
--- @return number
function IEngine.GetLeavesArea(pLeaves, nLeaves) end

--- @param mins Vector
--- @param maxs Vector
--- @param iArea number
--- @return boolean
function IEngine.DoesBoxTouchAreaFrustum(mins, maxs, iArea) end

--- @param pList Frustum_t
--- @param listMax number
--- @return number
function IEngine.GetFrustumList(pList, listMax) end

--- @param i number
--- @return boolean
function IEngine.ShouldUseAreaFrustum(i) end

--- @param state AudioState_t
function IEngine.SetAudioState(state) end

--- @param groupIndex number
--- @param name string
--- @param nameBufLen number
--- @return number
function IEngine.SentenceGroupPick(groupIndex, name, nameBufLen) end

--- @param groupIndex number
--- @param name string
--- @param nameBufLen number
--- @param sentenceIndex number
--- @param reset number
--- @return number
function IEngine.SentenceGroupPickSequential(groupIndex, name, nameBufLen, sentenceIndex, reset) end

--- @param pSentenceName string
--- @return number
function IEngine.SentenceIndexFromName(pSentenceName) end

--- @param sentenceIndex number
--- @return string
function IEngine.SentenceNameFromIndex(sentenceIndex) end

--- @param pGroupName string
--- @return number
function IEngine.SentenceGroupIndexFromName(pGroupName) end

--- @param groupIndex number
--- @return string
function IEngine.SentenceGroupNameFromIndex(groupIndex) end

--- @param sentenceIndex number
--- @return number
function IEngine.SentenceLength(sentenceIndex) end

--- @param pt Vector
--- @param pNormal Vector
--- @param bClamp boolean
--- @param color Vector
--- @param pBoxColors Vector
function IEngine.ComputeLighting(pt, pNormal, bClamp, color, pBoxColors) end

--- @param nOccluderIndex number
--- @param bActive boolean
function IEngine.ActivateOccluder(nOccluderIndex, bActive) end

--- @param vecAbsMins Vector
--- @param vecAbsMaxs Vector
--- @return boolean
function IEngine.IsOccluded(vecAbsMins, vecAbsMaxs) end

--- @return number
function IEngine.GetOcclusionViewId() end

--- @param num size_t
--- @param size size_t
function IEngine.SaveAllocMemory(num, size) end

--- @param pSaveMem void
function IEngine.SaveFreeMemory(pSaveMem) end

--- @return INetChannelInfo
function IEngine.GetNetChannelInfo() end

--- @return INetChannel
function IEngine.GetNetChannel() end

--- @param pCollide CPhysCollide
--- @param pMaterial IMaterial
--- @param transform matrix3x4_t
--- @param clr Color
function IEngine.DebugDrawPhysCollide(pCollide, pMaterial, transform, clr) end

--- @param pName string
function IEngine.CheckPoint(pName) end

function IEngine.DrawPortals() end

--- @return boolean
function IEngine.IsPlayingDemo() end

--- @return boolean
function IEngine.IsRecordingDemo() end

--- @return boolean
function IEngine.IsPlayingTimeDemo() end

--- @return number
function IEngine.GetDemoRecordingTick() end

--- @return number
function IEngine.GetDemoPlaybackTick() end

--- @return number
function IEngine.GetDemoPlaybackStartTick() end

--- @return number
function IEngine.GetDemoPlaybackTimeScale() end

--- @return number
function IEngine.GetDemoPlaybackTotalTicks() end

--- @return boolean
function IEngine.IsPaused() end

--- @return number
function IEngine.GetTimescale() end

--- @return boolean
function IEngine.IsTakingScreenshot() end

--- @return boolean
function IEngine.IsHLTV() end

--- @return boolean
function IEngine.IsLevelMainMenuBackground() end

--- @param dest string
--- @param destlen number
function IEngine.GetMainMenuBackgroundName(dest, destlen) end

--- @param params number
function IEngine.SetOcclusionParameters(params) end

--- @param dest string
--- @param destlen number
function IEngine.GetUILanguage(dest, destlen) end

--- @param vecPoint Vector
--- @return number
function IEngine.IsSkyboxVisibleFromPoint(vecPoint) end

--- @return string
function IEngine.GetMapEntitiesString() end

--- @return boolean
function IEngine.IsInEditMode() end

--- @param viewportWidth number
--- @param viewportHeight number
--- @return number
function IEngine.GetScreenAspectRatio(viewportWidth, viewportHeight) end

--- @param password string
--- @param isSecure boolean
--- @return boolean
function IEngine.REMOVED_SteamRefreshLogin(password, isSecure) end

--- @param finished boolean
--- @return boolean
function IEngine.REMOVED_SteamProcessCall(finished) end

--- @return number
function IEngine.GetEngineBuildNumber() end

--- @return string
function IEngine.GetProductVersionString() end

--- @param x number
--- @param y number
--- @param width number
--- @param height number
function IEngine.GrabPreColorCorrectedFrame(x, y, width, height) end

--- @return boolean
function IEngine.IsHammerRunning() end

--- @param szCmdString string
function IEngine.ExecuteClientCmd(szCmdString) end

--- @return boolean
function IEngine.MapHasHDRLighting() end

--- @return boolean
function IEngine.MapHasLightMapAlphaData() end

--- @return number
function IEngine.GetAppID() end

--- @param pos Vector
--- @param bClamp boolean
--- @return Vector
function IEngine.GetLightForPointFast(pos, bClamp) end

--- @param szCmdString string
function IEngine.ClientCmd_Unrestricted(szCmdString) end

--- @param bRestrict boolean
function IEngine.SetRestrictServerCommands(bRestrict) end

--- @param bRestrict boolean
function IEngine.SetRestrictClientCommands(bRestrict) end

--- @param iOverlayID number
--- @param pBindProxy void
function IEngine.SetOverlayBindProxy(iOverlayID, pBindProxy) end

--- @param pMaterialName string
--- @return boolean
function IEngine.CopyFrameBufferToMaterial(pMaterialName) end

--- @param iController number
--- @param readDefault boolean
function IEngine.ReadConfiguration(iController, readDefault) end

--- @param pAchievementMgr IAchievementMgr
function IEngine.SetAchievementMgr(pAchievementMgr) end

--- @return boolean
function IEngine.MapLoadFailed() end

--- @param bState boolean
function IEngine.SetMapLoadFailed(bState) end

--- @return boolean
function IEngine.IsLowViolence() end

--- @return string
function IEngine.GetMostRecentSaveGame() end

--- @param lpszFilename string
function IEngine.SetMostRecentSaveGame(lpszFilename) end

function IEngine.StartXboxExitingProcess() end

--- @return boolean
function IEngine.IsSaveInProgress() end

--- @return boolean
function IEngine.IsAutoSaveDangerousInProgress() end

--- @param iController number
--- @return number
function IEngine.OnStorageDeviceAttached(iController) end

--- @param iController number
function IEngine.OnStorageDeviceDetached(iController) end

--- @return string
function IEngine.GetSaveDirName() end

--- @param pFilename string
function IEngine.WriteScreenshot(pFilename) end

function IEngine.ResetDemoInterpolation() end

--- @return number
function IEngine.GetActiveSplitScreenPlayerSlot() end

--- @param slot number
--- @return number
function IEngine.SetActiveSplitScreenPlayerSlot(slot) end

--- @param pchContext string
--- @param nLine number
--- @param bResolvable boolean
--- @return boolean
function IEngine.SetLocalPlayerIsResolvable(pchContext, nLine, bResolvable) end

--- @return boolean
function IEngine.IsLocalPlayerResolvable() end

--- @param nSlot number
--- @return number
function IEngine.GetSplitScreenPlayer(nSlot) end

--- @return boolean
function IEngine.IsSplitScreenActive() end

--- @param nSlot number
--- @return boolean
function IEngine.IsValidSplitScreenSlot(nSlot) end

--- @return number
function IEngine.FirstValidSplitScreenSlot() end

--- @param nPreviousSlot number
--- @return number
function IEngine.NextValidSplitScreenSlot(nPreviousSlot) end

--- @param pt Vector
--- @param bClamp boolean
--- @param pBoxColors Vector
function IEngine.ComputeLightingCube(pt, bClamp, pBoxColors) end

--- @param szCallbackSaveID string
--- @param pCallback pfnDemoCustomDataCallback
function IEngine.RegisterDemoCustomDataCallback(szCallbackSaveID, pCallback) end

--- @param pCallback pfnDemoCustomDataCallback
--- @param pData void
--- @param iDataLength size_t
function IEngine.RecordDemoCustomData(pCallback, pData, iDataLength) end

--- @param flPitchScale number
function IEngine.SetPitchScale(flPitchScale) end

--- @return number
function IEngine.GetPitchScale() end

--- @return boolean
function IEngine.LoadFilmmaker() end

function IEngine.UnloadFilmmaker() end

--- @param nLeafIndex number
--- @param nFlagBits number
function IEngine.SetLeafFlag(nLeafIndex, nFlagBits) end

function IEngine.RecalculateBSPLeafFlags() end

--- @return boolean
function IEngine.DSPGetCurrentDASRoomNew() end

--- @return boolean
function IEngine.DSPGetCurrentDASRoomChanged() end

--- @return boolean
function IEngine.DSPGetCurrentDASRoomSkyAbove() end

--- @return number
function IEngine.DSPGetCurrentDASRoomSkyPercent() end

--- @param szgroupname string
--- @param szparam string
--- @param val number
--- @param setMixerType number
function IEngine.SetMixGroupOfCurrentMixer(szgroupname, szparam, val, setMixerType) end

--- @param szmixlayername string
--- @return number
function IEngine.GetMixLayerIndex(szmixlayername) end

--- @param index number
--- @param level number
function IEngine.SetMixLayerLevel(index, level) end

--- @param groupname string
--- @return number
function IEngine.GetMixGroupIndex(groupname) end

--- @param i1 number
--- @param i2 number
--- @param fl number
function IEngine.SetMixLayerTriggerFactor(i1, i2, fl) end

--- @param char1 string
--- @param char2 string
--- @param fl number
function IEngine.SetMixLayerTriggerFactor(char1, char2, fl) end

--- @return boolean
function IEngine.IsCreatingReslist() end

--- @return boolean
function IEngine.IsCreatingXboxReslist() end

--- @param flTimescale number
function IEngine.SetTimescale(flTimescale) end

--- @param b boolean
--- @return Vector2D
function IEngine.GetMouseDelta(b) end

--- @param pBinding string
--- @param iUserId number
--- @param iStartCount number
--- @param iAllowJoystick number
--- @return string
function IEngine.Key_LookupBindingEx(pBinding, iUserId, iStartCount, iAllowJoystick) end

function IEngine.UpdateDAndELights() end

--- @return number
function IEngine.GetBugSubmissionCount() end

function IEngine.ClearBugSubmissionCount() end

--- @return boolean
function IEngine.DoesLevelContainWater() end

--- @return number
function IEngine.GetServerSimulationFrameTime() end

--- @param pSolidEnt IClientEntity
--- @param pSolidCollide ICollideable
--- @param pPrevAbsOrigin Vector
--- @param accurateBboxTriggerChecks boolean
function IEngine.SolidMoved(pSolidEnt, pSolidCollide, pPrevAbsOrigin, accurateBboxTriggerChecks) end

--- @param pTriggerEnt IClientEntity
--- @param accurateBboxTriggerChecks boolean
function IEngine.TriggerMoved(pTriggerEnt, accurateBboxTriggerChecks) end

--- @param vecOrigin Vector
--- @param nCount number
--- @param pLeafIndices number
--- @param pIsConnected boolean
function IEngine.ComputeLeavesConnected(vecOrigin, nCount, pLeafIndices, pIsConnected) end

--- @return boolean
function IEngine.IsInCommentaryMode() end

--- @param amount number
function IEngine.SetBlurFade(amount) end

--- @return boolean
function IEngine.IsTransitioningToLoad() end

function IEngine.SearchPathsChangedAfterInstall() end

--- @param nCPULevel number
--- @param nGPULevel number
function IEngine.ConfigureSystemLevel(nCPULevel, nGPULevel) end

--- @param pchCurrentPW string
function IEngine.SetConnectionPassword(pchCurrentPW) end

--- @param szMapName string
--- @param uiBlobVersion number
--- @param uiBlobSize number
--- @param pvBlob void
function IEngine.SubmitStatRecord(szMapName, uiBlobVersion, uiBlobSize, pvBlob) end

--- @param pKeyValues KeyValues
function IEngine.ServerCmdKeyValues(pKeyValues) end

--- @param model model_t
--- @param location Vector
--- @param chr string
--- @param fl1 number
--- @param fl2 number
function IEngine.SpherePaintSurface(model, location, chr, fl1, fl2) end

--- @return boolean
function IEngine.HasPaintmap() end

function IEngine.EnablePaintmapRender() end

--- @param model model_t
--- @param position Vector
--- @param vec2 Vector
--- @param radius number
--- @param utilVecShit number
function IEngine.SphereTracePaintSurface(model, position, vec2, radius, utilVecShit) end

function IEngine.RemoveAllPaint() end

--- @param uchr string
function IEngine.PaintAllSurfaces(uchr) end

--- @param model model_t
function IEngine.RemovePaint(model) end

--- @return boolean
function IEngine.IsActiveApp() end

--- @return boolean
function IEngine.IsClientLocalToActiveServer() end

function IEngine.TickProgressBar() end

--- @param filename string
--- @param size number
function IEngine.GetStartupImage(filename, size) end

--- @return boolean
function IEngine.IsUsingLocalNetworkBackdoor() end

--- @return boolean
function IEngine.GameHasShutdownAndFlushedMemory() end

--- @return number
function IEngine.GetLastAcknowledgedCommand() end

--- @param i number
function IEngine.FinishContainerWrites(i) end

function IEngine.FinishAsyncSave() end

--- @return number
function IEngine.GetServerTick() end

--- @return string
function IEngine.GetModDirectory() end

--- @return boolean
function IEngine.AudioLanguageChanged() end

--- @return boolean
function IEngine.IsAutoSaveInProgress() end

--- @param command string
function IEngine.StartLoadingScreenForCommand(command) end

--- @param values KeyValues
function IEngine.StartLoadingScreenForKeyValues(values) end

function IEngine.GetDemoPlaybackParameters() end

--- @return number
function IEngine.GetClientVersion() end

--- @return boolean
function IEngine.IsDemoSkipping() end

--- @param values KeyValues
function IEngine.SetDemoImportantEventData(values) end

function IEngine.ClearEvents() end

--- @return number
function IEngine.GetSafeZoneXMin() end

--- @return boolean
function IEngine.IsVoiceRecording() end

function IEngine.ForceVoiceRecordOn() end

--- @return boolean
function IEngine.IsReplay() end


_G.INetChannelInfo = {}

--- @return string
function INetChannelInfo:GetName() end

--- @return string
function INetChannelInfo:GetAddress() end

--- @return number
function INetChannelInfo:GetTime() end

--- @return number
function INetChannelInfo:GetTimeConnected() end

--- @return number
function INetChannelInfo:GetBufferSize() end

--- @return number
function INetChannelInfo:GetDataRate() end

--- @return boolean
function INetChannelInfo:IsLoopback() end

--- @return boolean
function INetChannelInfo:IsTimingOut() end

--- @return boolean
function INetChannelInfo:IsPlayback() end

--- @param flow number
--- @return number
function INetChannelInfo:GetLatency(flow) end

--- @param flow number
--- @return number
function INetChannelInfo:GetAvgLatency(flow) end

--- @param flow number
--- @return number
function INetChannelInfo:GetAvgLoss(flow) end

--- @param flow number
--- @return number
function INetChannelInfo:GetAvgChoke(flow) end

--- @param flow number
--- @return number
function INetChannelInfo:GetAvgData(flow) end

--- @param flow number
--- @return number
function INetChannelInfo:GetAvgPackets(flow) end

--- @param flow number
--- @return number
function INetChannelInfo:GetTotalData(flow) end

--- @param flow number
--- @return number
function INetChannelInfo:GetTotalPackets(flow) end

--- @param flow number
--- @return number
function INetChannelInfo:GetSequenceNr(flow) end

--- @param flow number
--- @param frame_number number
--- @return boolean
function INetChannelInfo:IsValidPacket(flow, frame_number) end

--- @param flow number
--- @param frame_number number
--- @return number
function INetChannelInfo:GetPacketTime(flow, frame_number) end

--- @param flow number
--- @param frame_number number
--- @param group number
--- @return number
function INetChannelInfo:GetPacketBytes(flow, frame_number, group) end

--- @param flow number
--- @param received number
--- @param total number
--- @return boolean
function INetChannelInfo:GetStreamProgress(flow, received, total) end

--- @return number
function INetChannelInfo:GetTimeSinceLastReceived() end

--- @param flow number
--- @param frame_number number
--- @return number
function INetChannelInfo:GetCommandInterpolationAmount(flow, frame_number) end

--- @param flow number
--- @param frame_number number
--- @param pnLatencyMsecs number
--- @param pnChoke number
function INetChannelInfo:GetPacketResponseLatency(flow, frame_number, pnLatencyMsecs, pnChoke) end

--- @param pflFrameTime number
--- @param pflFrameTimeStdDeviation number
function INetChannelInfo:GetRemoteFramerate(pflFrameTime, pflFrameTimeStdDeviation) end

--- @return number
function INetChannelInfo:GetTimeoutSeconds() end


_G.INetChannel = {}
_G.INetChannel.__index = INetChannel

--- @param m_bProcessingMessages boolean
--- @param m_bShouldDelete boolean
--- @param m_nOutSequenceNr number
--- @param m_nInSequenceNr number
--- @param m_nOutSequenceNrAck number
--- @param m_nOutReliableState number
--- @param m_nInReliableState number
--- @param m_nChokedPackets number
function INetChannel:new(m_bProcessingMessages, m_bShouldDelete, m_nOutSequenceNr, m_nInSequenceNr, m_nOutSequenceNrAck, m_nOutReliableState, m_nInReliableState, m_nChokedPackets)
  setmetatable({}, INetChannel)

  self.m_bProcessingMessages = m_bProcessingMessages
  self.m_bShouldDelete = m_bShouldDelete
  self.m_nOutSequenceNr = m_nOutSequenceNr
  self.m_nInSequenceNr = m_nInSequenceNr
  self.m_nOutSequenceNrAck = m_nOutSequenceNrAck
  self.m_nOutReliableState = m_nOutReliableState
  self.m_nInReliableState = m_nInReliableState
  self.m_nChokedPackets = m_nChokedPackets
end


_G.trace_t = {}

--- @return boolean
function trace_t:DidHitWorld() end

--- @return boolean
function trace_t:DidHitNonWorldEntity() end

--- @return boolean
function trace_t:DidHit() end

--- @return boolean
function trace_t:IsVisible() end

--- @param fractionleftsolid number
--- @param surface csurface_t
--- @param hitgroup number
--- @param physicsbone number
--- @param worldSurfaceIndex number
--- @param hit_entity IClientEntity
--- @param hitbox number
function trace_t:new(fractionleftsolid, surface, hitgroup, physicsbone, worldSurfaceIndex, hit_entity, hitbox)
  setmetatable({}, trace_t)

  self.fractionleftsolid = fractionleftsolid
  self.surface = surface
  self.hitgroup = hitgroup
  self.physicsbone = physicsbone
  self.worldSurfaceIndex = worldSurfaceIndex
  self.hit_entity = hit_entity
  self.hitbox = hitbox
end


_G.BeamInfo_t = {}
_G.BeamInfo_t.__index = BeamInfo_t

--- @param m_nType number
--- @param m_pStartEnt IClientEntity
--- @param m_nStartAttachment number
--- @param m_pEndEnt IClientEntity
--- @param m_nEndAttachment number
--- @param m_vecStart Vector
--- @param m_vecEnd Vector
--- @param m_nModelIndex number
--- @param m_pszModelName string
--- @param m_nHaloIndex number
--- @param m_pszHaloName string
--- @param m_flHaloScale number
--- @param m_flLife number
--- @param m_flWidth number
--- @param m_flEndWidth number
--- @param m_flFadeLength number
--- @param m_flAmplitude number
--- @param m_flBrightness number
--- @param m_flSpeed number
--- @param m_nStartFrame number
--- @param m_flFrameRate number
--- @param m_flRed number
--- @param m_flGreen number
--- @param m_flBlue number
--- @param m_bRenderable boolean
--- @param m_nSegments number
--- @param m_nFlags number
--- @param m_vecCenter Vector
--- @param m_flStartRadius number
--- @param m_flEndRadius number
function BeamInfo_t:new(m_nType, m_pStartEnt, m_nStartAttachment, m_pEndEnt, m_nEndAttachment, m_vecStart, m_vecEnd, m_nModelIndex, m_pszModelName, m_nHaloIndex, m_pszHaloName, m_flHaloScale, m_flLife, m_flWidth, m_flEndWidth, m_flFadeLength, m_flAmplitude, m_flBrightness, m_flSpeed, m_nStartFrame, m_flFrameRate, m_flRed, m_flGreen, m_flBlue, m_bRenderable, m_nSegments, m_nFlags, m_vecCenter, m_flStartRadius, m_flEndRadius)
  setmetatable({}, BeamInfo_t)

  self.m_nType = m_nType
  self.m_pStartEnt = m_pStartEnt
  self.m_nStartAttachment = m_nStartAttachment
  self.m_pEndEnt = m_pEndEnt
  self.m_nEndAttachment = m_nEndAttachment
  self.m_vecStart = m_vecStart
  self.m_vecEnd = m_vecEnd
  self.m_nModelIndex = m_nModelIndex
  self.m_pszModelName = m_pszModelName
  self.m_nHaloIndex = m_nHaloIndex
  self.m_pszHaloName = m_pszHaloName
  self.m_flHaloScale = m_flHaloScale
  self.m_flLife = m_flLife
  self.m_flWidth = m_flWidth
  self.m_flEndWidth = m_flEndWidth
  self.m_flFadeLength = m_flFadeLength
  self.m_flAmplitude = m_flAmplitude
  self.m_flBrightness = m_flBrightness
  self.m_flSpeed = m_flSpeed
  self.m_nStartFrame = m_nStartFrame
  self.m_flFrameRate = m_flFrameRate
  self.m_flRed = m_flRed
  self.m_flGreen = m_flGreen
  self.m_flBlue = m_flBlue
  self.m_bRenderable = m_bRenderable
  self.m_nSegments = m_nSegments
  self.m_nFlags = m_nFlags
  self.m_vecCenter = m_vecCenter
  self.m_flStartRadius = m_flStartRadius
  self.m_flEndRadius = m_flEndRadius
end


_G.IMaterial = {}

function IMaterial:IncrementReferenceCount() end

--- @param flag MaterialVarFlags_t
--- @param on boolean
function IMaterial:SetMaterialVarFlag(flag, on) end

--- @param r number
--- @param g number
--- @param b number
function IMaterial:ColorModulate(r, g, b) end

--- @param alpha number
function IMaterial:AlphaModulate(alpha) end
