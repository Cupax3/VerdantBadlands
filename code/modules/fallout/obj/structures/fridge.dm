//Fallout 13 fridge directory

/obj/structure/closet/fridge
	name = "fridge"
	desc = "An old, pre-War refrigerator.<br>Despite being covered in rust and making noises straight out of a horror film, it still keeps your Nuka-Cola cold."
	icon_state = "fridge"
	open_sound = "modular_badlands/code/modules/rp_misc/sound/doors_and_containers/containers/fridgeopen.ogg"
	close_sound = "modular_badlands/code/modules/rp_misc/sound/doors_and_containers/containers/fridgeclose.ogg"

/obj/structure/closet/fridge/standard/New()
	..()
	for(var/i = 0, i < 4, i++)
		new /obj/item/reagent_containers/food/snacks/grown/mutfruit(src)
	for(var/i = 0, i < 3, i++)
		new /obj/item/reagent_containers/food/snacks/f13/cram(src)
	for(var/i = 0, i < 2, i++)
		new /obj/item/reagent_containers/food/drinks/bottle/f13nukacola(src)
	for(var/i = 0, i < 1, i++)
		new /obj/item/reagent_containers/food/snacks/meat/steak/molerat(src)

/obj/structure/closet/fridge/meat/New()
	..()
	for(var/i = 0, i < 4, i++)
		new /obj/item/reagent_containers/food/snacks/meat/slab/gecko(src)

/obj/structure/closet/fridge/cannibal/New()
	..()
	for(var/i = 0, i < 4, i++)
		new /obj/item/reagent_containers/food/snacks/meat/slab/human(src)

/obj/structure/closet/crate/freezer
	desc = "An old, rusted freezer.<br>Despite going through a nuclear holocaust, it's somehow still good at keeping things cold."
	name = "freezer"
	icon_state = "freezer"

