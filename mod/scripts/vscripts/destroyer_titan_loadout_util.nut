untyped
global function Destroyer_titan_loadout_util

void function Destroyer_titan_loadout_util()
{
  #if SERVER
		AddCallback_OnTitanGetsNewTitanLoadout( SetDestroyertitanTitanLoadout );
  #endif
}

//==================================================//Apply loadout//==================================================//

void function SetDestroyertitanTitanLoadout( entity titan, TitanLoadoutDef loadout  )
{
	#if SERVER

	if(loadout.name == "#DEFAULT_TITAN_DESTROYER")
	{


		if (!(IsValid( titan.GetTitanSoul() )))
		{
			return
		}

//==================================================//KITS//==================================================//


		if(SoulHasPassive( titan.GetTitanSoul(), ePassives["#KIT_TITAN_DESTROYER_LONGCLOAK"] ) )
		{
			titan.GetOffhandWeapons()[2].SetMods(["ubercloak"])
        }

		if(SoulHasPassive( titan.GetTitanSoul(), ePassives["#KIT_TITAN_DESTROYER_BETTERWYS"] ) )
		{
			titan.GetMainWeapons()[0].SetMods(["wysekit"])
			titan.GetMainWeapons()[0].SetWeaponPrimaryClipCount(18)
        }

		if(SoulHasPassive( titan.GetTitanSoul(), ePassives["#KIT_TITAN_DESTROYER_FASTERRAILGUN"] ) )
		{
			titan.GetOffhandWeapons()[0].SetMods(["wardcliff"])
			titan.GetOffhandWeapons()[0].SetWeaponPrimaryClipCount(240)

        }


//==================================================//AEGIS RANKS//==================================================//


	}
	#endif
}
