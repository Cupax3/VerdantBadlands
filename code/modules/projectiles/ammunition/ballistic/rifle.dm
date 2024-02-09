// 7.62
/obj/item/ammo_casing/a762
	name = "7.62 FMJ bullet casing"
	desc = "A 7.62 FMJ bullet casing."
	icon_state = "762-casing"
	caliber = "a762"
	projectile_type = /obj/item/projectile/bullet/a762

/obj/item/ammo_casing/a762/a308
	name = ".308 bullet casing"
	desc = "A .308 sporting bullet casing."
	projectile_type = /obj/item/projectile/bullet/a762/a308

/obj/item/ammo_casing/a762/junk
	name = "hand loaded 7.62 FMJ casing"
	desc = "A hand loaded bullet casing. Will cause additional wear on firearms."
	projectile_type = /obj/item/projectile/bullet/a762/junk
	condition_malus = 1

// 5.56mm
/obj/item/ammo_casing/a556
	name = "5.56mm FMJ bullet casing"
	desc = "A 5.56mm bullet casing."
	caliber = "a556"
	projectile_type = /obj/item/projectile/bullet/a556

/obj/item/ammo_casing/a556/a223
	name = ".223 bullet casing"
	desc = "A .223 bullet casing."
	projectile_type = /obj/item/projectile/bullet/a556/a223

/obj/item/ammo_casing/a556/junk
	name = "hand loaded 5.56mm FMJ casing"
	desc = "A hand loaded bullet casing. Will cause additional wear on firearms."
	projectile_type = /obj/item/projectile/bullet/a556/junk
	condition_malus = 1

//5mm
/obj/item/ammo_casing/m5mm
	name = "5mm FMJ bullet casing"
	desc = "A 5mm bullet casing."
	caliber = "m5mm"
	projectile_type = /obj/item/projectile/bullet/m5mm

// 40mm (Grenade Launcher)
/obj/item/ammo_casing/a40mm
	name = "40mm HE shell"
	desc = "A cased high explosive grenade that can only be activated once fired out of a grenade launcher."
	caliber = "40mm"
	icon_state = "40mmHE"
	projectile_type = /obj/item/projectile/bullet/rocket/a40mm

/obj/item/ammo_casing/a40mmg
	name = "40mm TG shell"
	desc = "A thin, cased tear gas grenade. Only activates once it impacts the ground at high speed."
	caliber = "40mm"
	icon_state = "40mmTG"
	projectile_type = /obj/item/projectile/bullet/a40mmg

// 2mm EC
/obj/item/ammo_casing/c2mm
	name = "2mm gauss projectile casing"
	desc = "A 2mm gauss projectile casing."
	caliber = "2mm"
	projectile_type = /obj/item/projectile/bullet/c2mm
