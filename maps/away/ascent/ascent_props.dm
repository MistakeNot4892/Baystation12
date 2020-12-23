/obj/item/kharmaan_egg
	name = "crystalline egg"
	desc = "A lumpy, gooey egg with a thin crystalline exterior."
	icon = 'icons/obj/ascent.dmi'
	icon_state = "egg"

/obj/item/kharmaan_egg/Initialize()
	. = ..()
	if(prob(10))
		if(prob(50))
			new /mob/living/simple_animal/hostile/retaliate/alate_nymph(get_turf(src))
		name = "crystalline eggshell"
		icon_state = "egg_broken"
		desc += " This one is broken and empty."

/mob/living/simple_animal/hostile/retaliate/alate_nymph
	name = "alate nymph"
	desc = "A small, skittering, juvenile kharmaan alate, likely fresh from the egg."
	icon = 'icons/mob/simple_animal/ascent.dmi'
	icon_state = "larva"
	icon_living = "larva"
	icon_dead = "larva_dead"
	holder_type = /obj/item/weapon/holder
	destroy_surroundings = FALSE
	health = 10
	maxHealth = 10
	speed = 0
	move_to_delay = 0
	density = FALSE
	min_gas = list(GAS_METHYL_BROMIDE = 5)
	mob_size = MOB_MINISCULE
	can_escape = TRUE
	pass_flags = PASS_FLAG_TABLE
	melee_damage_lower = 2
	melee_damage_upper = 5
	melee_damage_flags = DAM_SHARP
	faction = "kharmaani"
	var/global/list/friendly_species = list(SPECIES_MANTID_ALATE, SPECIES_MANTID_GYNE, SPECIES_MONARCH_QUEEN, SPECIES_MONARCH_WORKER)

/mob/living/simple_animal/hostile/retaliate/alate_nymph/ListTargets(var/dist = 7)
	. = list()
	for(var/mob/living/M in hearers(src, dist))
		if(M.faction == faction)
			continue
		if(istype(M,/mob/living/carbon/human))
			var/mob/living/carbon/human/H = M
			if(H.species.get_bodytype() in friendly_species)
				continue
		. += M

/mob/living/simple_animal/hostile/retaliate/alate_nymph/get_scooped(var/mob/living/carbon/grabber)
	if(!(grabber.species.get_bodytype() in friendly_species))
		to_chat(grabber, SPAN_WARNING("\The [src] wriggles out of your hands before you can pick it up!"))
		return
	else return ..()