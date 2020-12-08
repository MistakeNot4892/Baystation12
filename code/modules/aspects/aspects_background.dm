/decl/aspect/groundbreaker
	name = ASPECT_GROUNDBREAKER
	desc = "Strike the earth! You're a miner by trade."
	category = "Background"
	aspect_cost = 2
	aspect_flags = ASPECTS_EQUIPMENT

/decl/aspect/groundbreaker/apply(var/mob/living/carbon/human/holder)
	. = ..()
	if(.)
		holder.equip_to_slot_if_possible(new /obj/item/clothing/head/hardhat(get_turf(holder)), slot_head)

/decl/aspect/handyman
	name = ASPECT_HANDYMAN
	desc = "You're handy with tools, and are rarely found without them."
	category = "Background"
	aspect_cost = 2
	aspect_flags = ASPECTS_EQUIPMENT

/decl/aspect/first_responder
	name = ASPECT_FIRSTAID
	desc = "You have basic first aid training."
	category = "Background"
	aspect_cost = 2
	aspect_flags = ASPECTS_EQUIPMENT

/decl/aspect/sawbones
	name = ASPECT_SAWBONES
	desc = "You work as an itinerant doctor, taking the Hippocratic Oath to places it would rather not go."
	category = "Background"
	parent_name = ASPECT_FIRSTAID
	aspect_cost = 2
	aspect_flags = ASPECTS_EQUIPMENT
