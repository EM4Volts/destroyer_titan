global function DestroyerTitanPreCache

void function DestroyerTitanPreCache()
{
	PrecacheWeapon("mp_titanweapon_shotgunwys")
	PrecacheWeapon("mp_titanweapon_destroyer_railgun")
	PrecacheWeapon("mp_titanweapon_shoulder_rockets_destroyer")
	PrecacheWeapon("mp_titancore_destroyer")
	PrecacheWeapon("mp_titanability_destroyer_cloak")


	Destroyer_titan_loadout_util()
}
