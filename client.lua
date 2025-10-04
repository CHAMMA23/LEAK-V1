local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
L1_1 = false
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 5000
  L0_2(L1_2)
  L0_2 = true
  L1_1 = L0_2
  L0_2 = Config
  L0_2 = L0_2.useModernUI
  if L0_2 then
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.ui = "new"
    L0_2(L1_2)
  else
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.ui = "old"
    L0_2(L1_2)
  end
  L0_2 = GetResourceKvpString
  L1_2 = "17mov_FpsSettings"
  L0_2 = L0_2(L1_2)
  if nil == L0_2 then
    L1_2 = Config
    L1_2 = L1_2.GlobalSettings
    L0_1 = L1_2
  else
    L1_2 = json
    L1_2 = L1_2.decode
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L0_1 = L1_2
  end
end
L2_1(L3_1)
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = pairs
    L1_2 = L0_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      if L5_2 then
        if "unnecessary" == L4_2 then
          L6_2 = ClearBrief
          L6_2()
          L6_2 = ClearGpsFlags
          L6_2()
          L6_2 = ClearPrints
          L6_2()
          L6_2 = ClearSmallPrints
          L6_2()
          L6_2 = ClearReplayStats
          L6_2()
          L6_2 = ClearFocus
          L6_2()
          L6_2 = ClearHdArea
          L6_2()
          L6_2 = LeaderboardsReadClearAll
          L6_2()
          L6_2 = LeaderboardsClearCacheData
          L6_2()
          L6_2 = ClearExtraTimecycleModifier
          L6_2()
          L6_2 = ClearTimecycleModifier
          L6_2()
          L6_2 = DisableScreenblurFade
          L6_2()
        end
        if "broken" == L4_2 then
          L6_2 = ClearAllBrokenGlass
          L6_2()
        end
        if "ped" == L4_2 then
          L6_2 = ClearPedBloodDamage
          L7_2 = PlayerPedId
          L7_2 = L7_2()
          L6_2(L7_2)
          L6_2 = ClearPedWetness
          L7_2 = PlayerPedId
          L7_2 = L7_2()
          L6_2(L7_2)
          L6_2 = ClearPedEnvDirt
          L7_2 = PlayerPedId
          L7_2 = L7_2()
          L6_2(L7_2)
          L6_2 = ResetPedVisibleDamage
          L7_2 = PlayerPedId
          L7_2 = L7_2()
          L6_2(L7_2)
        end
        if "rain" == L4_2 then
          L6_2 = SetRainLevel
          L7_2 = 0.0
          L6_2(L7_2)
          L6_2 = SetWindSpeed
          L7_2 = 0.0
          L6_2(L7_2)
        end
      end
    end
  end
end
L2_1(L3_1)
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 100
    L0_2(L1_2)
    L0_2 = pairs
    L1_2 = L0_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      if L5_2 and "particles" == L4_2 then
        L6_2 = RemoveParticleFxInRange
        L7_2 = GetEntityCoords
        L8_2 = PlayerPedId
        L8_2 = L8_2()
        L7_2 = L7_2(L8_2)
        L8_2 = 25.0
        L6_2(L7_2, L8_2)
      end
    end
  end
end
L2_1(L3_1)
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = L0_1.lowTexture
    if L0_2 then
      L0_2 = OverrideLodscaleThisFrame
      L1_2 = 0.6
      L0_2(L1_2)
      L0_2 = DisableOcclusionThisFrame
      L0_2()
      L0_2 = SetDisableDecalRenderingThisFrame
      L0_2()
    end
    L0_2 = L0_1.lights
    if L0_2 then
      L0_2 = DisableVehicleDistantlights
      L1_2 = false
      L0_2(L1_2)
      L0_2 = SetFlashLightFadeDistance
      L1_2 = 3.0
      L0_2(L1_2)
      L0_2 = SetLightsCutoffDistanceTweak
      L1_2 = 3.0
      L0_2(L1_2)
      L0_2 = SetArtificialLightsState
      L1_2 = true
      L0_2(L1_2)
    end
  end
end
L2_1(L3_1)
L2_1 = RegisterNUICallback
L3_1 = "changeOption"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.option
  L2_2 = L0_1
  L4_2 = A0_2.boolean
  L2_2[L3_2] = L4_2
  L2_2 = true
  L3_2 = 1.0
  L4_2 = L0_1.shadows
  if L4_2 then
    L2_2 = false
    L3_2 = 0.0
  end
  L4_2 = CascadeShadowsClearShadowSampleType
  L4_2()
  L4_2 = RopeDrawShadowEnabled
  L5_2 = L2_2
  L4_2(L5_2)
  L4_2 = CascadeShadowsSetAircraftMode
  L5_2 = L2_2
  L4_2(L5_2)
  L4_2 = CascadeShadowsEnableEntityTracker
  L5_2 = L2_2
  L4_2(L5_2)
  L4_2 = CascadeShadowsSetDynamicDepthMode
  L5_2 = L2_2
  L4_2(L5_2)
  L4_2 = CascadeShadowsSetEntityTrackerScale
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = CascadeShadowsSetDynamicDepthValue
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = CascadeShadowsSetCascadeBoundsScale
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = L0_1.lights
  if not L4_2 then
    L4_2 = SetFlashLightFadeDistance
    L5_2 = 10.0
    L4_2(L5_2)
    L4_2 = SetLightsCutoffDistanceTweak
    L5_2 = 10.0
    L4_2(L5_2)
    L4_2 = SetArtificialLightsState
    L5_2 = false
    L4_2(L5_2)
  end
  L4_2 = SetResourceKvp
  L5_2 = "17mov_FpsSettings"
  L6_2 = json
  L6_2 = L6_2.encode
  L7_2 = L0_1
  L6_2, L7_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "exitMenu"
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterCommand
L3_1 = Config
L3_1 = L3_1.CommandString
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = L1_1
  if L0_2 then
    L0_2 = SetNuiFocus
    L1_2 = true
    L2_2 = true
    L0_2(L1_2, L2_2)
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "openMenu"
    L2_2 = L0_1
    L1_2.settings = L2_2
    L0_2(L1_2)
  else
    L0_2 = print
    L1_2 = "AWAIT UNTIL PROPERLY NUI LOAD"
    L0_2(L1_2)
  end
end
L2_1(L3_1, L4_1)
L2_1 = Config
L2_1 = L2_1.DisableKeybind
if not L2_1 then
  L2_1 = RegisterKeyMapping
  L3_1 = Config
  L3_1 = L3_1.CommandString
  L4_1 = "Open Fps Booster Menu"
  L5_1 = "keyboard"
  L6_1 = Config
  L6_1 = L6_1.Key
  L2_1(L3_1, L4_1, L5_1, L6_1)
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L0_1
  L2_2[A0_2] = A1_2
  L2_2 = print
  L3_2 = A0_2
  L4_2 = " has been set to "
  L5_2 = value
  L6_2 = " by export!"
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2(L3_2)
end
setSetting = L2_1
L2_1 = exports
L3_1 = "setSetting"
L4_1 = setSetting
L2_1(L3_1, L4_1)
