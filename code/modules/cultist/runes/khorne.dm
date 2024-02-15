/datum/rune_recipe/khorne/offer_bioprinted
	ingredients = list(/obj/item/organ/internal/heart/bioprinted)
	special = TRUE

/datum/rune_recipe/khorne/offer_heart/do_special(var/mob/living/carbon/user, var/obj/effect/cleanable/heretic_rune/rune)
	SEND_SIGNAL(user, COMSIG_CULT_ADD_FAVOR, 0)

/datum/rune_recipe/khorne/offer_heart
	ingredients = list(/obj/item/organ/internal/heart)
	special = TRUE

/datum/rune_recipe/khorne/offer_heart/do_special(var/mob/living/carbon/user, var/obj/effect/cleanable/heretic_rune/rune)
	SEND_SIGNAL(user, COMSIG_CULT_ADD_FAVOR, 15)

/datum/rune_recipe/khorne/offer_gem
	ingredients = list(/obj/item/stack/thrones)
	special = TRUE

/datum/rune_recipe/khorne/offer_gem/do_special(var/mob/living/carbon/user, var/obj/effect/cleanable/heretic_rune/rune)
	SEND_SIGNAL(user, COMSIG_CULT_ADD_FAVOR, 20)

/datum/rune_recipe/khorne/knife_teeth
	name = "Enchant Knife Rite(Ruby)"
	ingredients = list(/obj/item/newore/gems/ruby,  /obj/item/melee/sword/combat_knife)
	special = TRUE

/datum/rune_recipe/khorne/knife_teeth/do_special(var/mob/living/carbon/user, var/obj/effect/cleanable/heretic_rune/rune)
	switch(rand(1,5))
		if(1)
			new /obj/item/melee/sword/chaosknife(get_turf(rune))
		if(2)
			new /obj/item/melee/trench_axe/glaive/adamantine(get_turf(rune))
		if(3)
			new /obj/item/melee/chain/pcsword/khorneaxe(get_turf(rune))
		if(4)
			new /obj/item/melee/sword/broadsword/adamantine(get_turf(rune))
		if(5)
			new /obj/item/melee/trench_axe/bardiche/beast(get_turf(rune))

/datum/rune_recipe/khorne/armor
	name = "Forge Bloodpact Armor"
	ingredients = list(/obj/item/newore/gems/emerald, /obj/item/clothing/suit/armor)
	special = TRUE

/datum/rune_recipe/khorne/armor/do_special(var/mob/living/carbon/user, var/obj/effect/cleanable/heretic_rune/rune)
	switch(rand(1,2))
		if(1)
			new /obj/item/clothing/suit/armor/flak1/renegadearmor/bloodpact(get_turf(rune))
			new /obj/item/clothing/head/helmet/heavyflak/bloodpact(get_turf(rune))
			new /obj/item/clothing/mask/gas/security/bloodpact(get_turf(rune))
		if(2)
			new /obj/item/clothing/suit/armor/flak1/renegadearmor/bloodpact(get_turf(rune))
			new /obj/item/clothing/head/helmet/heavyflak/bloodpact(get_turf(rune))
			new /obj/item/clothing/mask/gas/security/bloodpact(get_turf(rune))
			new /obj/item/shield/riot/metal(get_turf(rune))

/datum/rune_recipe/khorne/radio
	name = "Create Radio"
	ingredients = list(/obj/item/device/radio/headset)
	product_path = /obj/item/device/radio/headset/cult1

/datum/rune_recipe/khorne/conversion
	name = "Conversion Rite"
	ingredients = list(/mob/living/carbon/human)
	delete_items = FALSE
	special 	 = TRUE

/datum/rune_recipe/khorne/conversion/do_special(mob/living/carbon/user, obj/effect/cleanable/heretic_rune/rune, list/items)

	var/mob/living/carbon/human/target = items[1]
	if(target.stat != DEAD && target.mind)
		var/datum/heretic_deity/khorne/N = GOD(GOD_KHORNE)
		N.join_request(target)
