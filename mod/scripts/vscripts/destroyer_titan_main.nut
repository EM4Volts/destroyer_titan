global function DestroyerTitanSetup
void function DestroyerTitanSetup()
{


    ModdedTitanData CustomDestroyerTitan
    CustomDestroyerTitan.Name = "#DEFAULT_TITAN_DESTROYER"
    CustomDestroyerTitan.Description = "Destroyer"
    CustomDestroyerTitan.BaseSetFile = "titan_atlas_ion_prime"
    CustomDestroyerTitan.BaseName = "ion"
    CustomDestroyerTitan.altChassisType = frameworkAltChassisMethod.ALT_TITAN
    CustomDestroyerTitan.difficulty = 3
    CustomDestroyerTitan.speedStat = 1
    CustomDestroyerTitan.damageStat = 3
    CustomDestroyerTitan.healthStat = 2
    CustomDestroyerTitan.titanHints = [
        "#HINT_DESTROYER_001"
    ]

    ModdedTitanWeaponAbilityData DestroyerPrimary
    DestroyerPrimary.custom = true
    DestroyerPrimary.weaponName = "mp_titanweapon_shotgunwys"
    CustomDestroyerTitan.Primary = DestroyerPrimary
    DestroyerPrimary.displayName = "#WPN_TITAN_DESTROYER_WYS"
    DestroyerPrimary.description = "#WPN_TITAN_DESTROYER_WYS_DESC"

    ModdedTitanWeaponAbilityData DestroyerMid
    DestroyerMid.custom = true
    DestroyerMid.weaponName = "mp_titanability_destroyer_cloak"
    CustomDestroyerTitan.Mid = DestroyerMid
    DestroyerMid.displayName = "#WPN_TITAN_DESTROYER_CLOAK"
    DestroyerMid.description = "#WPN_TITAN_DESTROYER_CLOAK_DESC"

    ModdedTitanWeaponAbilityData DestroyerOffensive
    DestroyerOffensive.custom = true
    DestroyerOffensive.weaponName = "mp_titanweapon_destroyer_railgun"
    CustomDestroyerTitan.Right = DestroyerOffensive
    DestroyerOffensive.displayName = "#WPN_TITAN_DESTROYER_RAILGUN"
    DestroyerOffensive.description = "#WPN_TITAN_DESTROYER_RAILGUN_LONGDESC"

    ModdedTitanWeaponAbilityData DestroyerLeft
    DestroyerLeft.weaponName = "mp_titanweapon_shoulder_rockets"
    CustomDestroyerTitan.Left = DestroyerLeft
    DestroyerLeft.displayName = "#WPN_TITAN_SHOULDER_ROCKETS"
    DestroyerLeft.description = "#WPN_TITAN_SHOULDER_ROCKETS_DESC"

    ModdedTitanWeaponAbilityData DestroyerCore
    DestroyerCore.custom = true
    DestroyerCore.weaponName = "mp_titancore_destroyer"
    CustomDestroyerTitan.Core = DestroyerCore
    DestroyerCore.displayName = "#WPN_TITAN_DESTROYER_CORE"
    DestroyerCore.description = "#WPN_TITAN_DESTROYER_CORE_DESC"

    #if CLIENT || SERVER
	PrecacheModel($"models/Titans/destroyer/destroyer_titan_tier0.mdl")
    PrecacheModel($"models/Titans/destroyer/destroyer_titan_tier1.mdl")
    PrecacheModel($"models/Titans/destroyer/destroyer_titan_tier2.mdl")
	#endif

	FrameworkChassisStruct Tier0
	Tier0.name = "Destroyer Tier 0"
	Tier0.setFile = "titan_atlas_ion_prime"
	Tier0.executionAnimationType = 54
	Tier0.modelOverride = $"models/Titans/destroyer/destroyer_titan_tier0.mdl"

    FrameworkChassisStruct Tier1
	Tier1.name = "Destroyer Tier 1"
	Tier1.setFile = "titan_atlas_tone_prime"
	Tier1.executionAnimationType = 54
	Tier1.modelOverride = $"models/Titans/destroyer/destroyer_titan_tier1.mdl"

    FrameworkChassisStruct Tier2
	Tier2.name = "Destroyer Tier 2"
	Tier2.setFile = "titan_atlas_stickybomb"
	Tier2.executionAnimationType = 54
	Tier2.modelOverride = $"models/Titans/destroyer/destroyer_titan_tier2.mdl"

	CustomDestroyerTitan.altChassisArray.append(Tier0)
    CustomDestroyerTitan.altChassisArray.append(Tier1)
    CustomDestroyerTitan.altChassisArray.append(Tier2)
	//-KITS-//

    ModdedPassiveData DestroyerLongCloak
    DestroyerLongCloak.Name = "#KIT_TITAN_DESTROYER_LONGCLOAK"
    DestroyerLongCloak.description = "#KIT_TITAN_DESTROYER_LONGCLOAK_DESC"
    CustomDestroyerTitan.passive2Array.append(DestroyerLongCloak)

    ModdedPassiveData DestroyerBetterShotgun
    DestroyerBetterShotgun.Name = "#KIT_TITAN_DESTROYER_BETTERWYS"
    DestroyerBetterShotgun.description = "#KIT_TITAN_DESTROYER_BETTERWYS_DESC"
    CustomDestroyerTitan.passive2Array.append(DestroyerBetterShotgun)

    ModdedPassiveData DestroyerFasterRailgun
    DestroyerFasterRailgun.Name = "#KIT_TITAN_DESTROYER_FASTERRAILGUN"
    DestroyerFasterRailgun.description = "#KIT_TITAN_DESTROYER_FASTERRAILGUN_DESC"
    CustomDestroyerTitan.passive2Array.append(DestroyerFasterRailgun)

    CreateModdedTitanSimple(CustomDestroyerTitan)



}