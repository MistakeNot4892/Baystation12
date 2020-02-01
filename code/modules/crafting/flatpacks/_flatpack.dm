/obj/item/flatpack
	name = "flatpack"
	desc = "A collapsed pack of furniture parts, ready to be assembled."
	icon = 'icons/obj/flatpacks.dmi'
	icon_state = "generic"
	w_class = ITEM_SIZE_HUGE
	applies_material_name = TRUE
	applies_material_colour = TRUE
	obj_flags = OBJ_FLAG_ROTATABLE
	material = DEFAULT_FURNITURE_MATERIAL
	var/material/reinf_material = MAT_PLASTIC

	var/build_type = /obj/structure
	var/cannot_overlap_with
	var/icon_flattened = "generic_flat"
	var/icon_assembled = "generic_assembled"

/obj/item/flatpack/Initialize()
	. = ..()
	if(reinf_material)
		reinf_material = SSmaterials.get_material_datum(reinf_material)
		desc = "[desc]. This pack is made of [material.display_name] and has been reinfoced with [reinf_material.display_name]."
	else
		desc = "[desc]. This pack is made of [material.display_name]."
	update_icon()

/obj/item/flatpack/on_update_icon()
	icon_state = anchored ? icon_assembled : icon_flattened

/obj/item/flatpack/attack_hand(mob/user)
	if(anchored)
		to_chat(user, SPAN_WARNING("\The [src] has been assembled - you will need a wrench to take it apart for transport."))
		return
	. = ..()

/obj/item/flatpack/attack_self(mob/user)
	if(user.unEquip(src, get_turf(src)) && !anchored)
		visible_message(SPAN_NOTICE("\The [user] unpacks and assembles \the [src]."))
		pixel_x = 0
		pixel_y = 0
		pixel_w = 0
		pixel_z = 0
		anchored = TRUE
		set_dir(user.dir)
		update_icon()
		return
	. = ..()

/obj/item/flatpack/attackby(obj/item/W, mob/user)

	if(isWrench(W) && anchored)
		visible_message(SPAN_NOTICE("\The [user] dismantles \the [src] and stacks it for transport."))
		playsound(loc, 'sound/items/Ratchet.ogg', 50, 1)
		anchored = FALSE
		update_icon()
		return

	if(isScrewdriver(W))
		if(!anchored)
			to_chat(user, SPAN_WARNING("\The [src] has not yet been assembled."))
			return
		var/turf/T = get_turf(src)
		if(!istype(T))
			to_chat(user, SPAN_WARNING("\The [src] can only be assembled on solid ground."))
			return
		if(cannot_overlap_with && (locate(cannot_overlap_with) in T))
			to_chat(user, SPAN_WARNING("There is not enough room here for \the [src]."))
			return
		var/obj/structure/new_structure = new build_type(T, material.type, (reinf_material && reinf_material.type))
		T.visible_message(SPAN_NOTICE("\The [user] finishes off \the [new_structure]."))
		playsound(T, 'sound/items/Screwdriver.ogg', 50, 1)
		T.set_dir(dir)
		qdel(src)
		return
	. = ..()