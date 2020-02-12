/obj/structure/closet/secure_closet/scientist
	name = "scientist's locker"
	req_access = list(list(access_tox,access_tox_storage))
	closet_appearance = /decl/closet_appearance/secure_closet/expedition/science

/obj/structure/closet/secure_closet/scientist/WillContain()
	return list(
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/messenger/tox, /obj/item/storage/backpack/satchel/tox)),
		/obj/item/clothing/under/rank/scientist,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/shoes/white,
		/obj/item/radio/headset/headset_sci,
		/obj/item/clothing/mask/gas,
		/obj/item/material/clipboard
	)

/obj/structure/closet/secure_closet/xenobio
	name = "xenobiologist's locker"
	req_access = list(access_xenobiology)
	closet_appearance = /decl/closet_appearance/secure_closet/expedition/science

/obj/structure/closet/secure_closet/xenobio/WillContain()
	return list(
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/messenger/tox, /obj/item/storage/backpack/satchel/tox)),
		/obj/item/clothing/under/rank/scientist,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/shoes/white,
		/obj/item/radio/headset/headset_sci,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/gloves/latex,
		/obj/item/material/clipboard,
		/obj/item/storage/belt/general
	)

/obj/structure/closet/secure_closet/RD
	name = "chief science officer's locker"
	req_access = list(access_rd)
	closet_appearance = /decl/closet_appearance/secure_closet/rd

/obj/structure/closet/secure_closet/RD/WillContain()
	return list(
		/obj/item/clothing/suit/bio_suit/scientist = 2,
		/obj/item/clothing/head/bio_hood/scientist = 2,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/shoes/white,
		/obj/item/clothing/gloves/latex,
		/obj/item/radio/headset/heads/rd,
		/obj/item/clothing/mask/gas,
		/obj/item/flash,
		/obj/item/material/clipboard,
	)

/obj/structure/closet/secure_closet/animal
	name = "animal control closet"
	req_access = list(access_research)

/obj/structure/closet/secure_closet/animal/WillContain()
	return list(
		/obj/item/assembly/signaler,
		/obj/item/radio/electropack = 3,
		/obj/item/gun/launcher/syringe/rapid,
		/obj/item/storage/box/syringegun,
		/obj/item/storage/box/syringes,
		/obj/item/chems/glass/bottle/sedatives
	)
