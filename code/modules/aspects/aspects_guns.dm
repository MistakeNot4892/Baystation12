/decl/aspect/person_of_caliber
	name = ASPECT_BASICGUNS
	desc = "You know your way around the use and maintenance of a firearm."
	use_icon_state = "guns_1"
	category = "Ranged Combat"
	aspect_cost = 1

/decl/aspect/gunplay
	name = ASPECT_GUNPLAY
	desc = "Fastest gun on Mars."
	use_icon_state = "guns_2"
	category = "Ranged Combat"
	parent_name = ASPECT_BASICGUNS
	aspect_cost = 3
	aspect_flags = ASPECTS_EQUIPMENT

/decl/aspect/taser
	name = ASPECT_TASER
	desc = "You have invested in a small taser."
	use_icon_state = "guns_1"
	category = "Ranged Combat"
	aspect_cost = 2
	aspect_flags = ASPECTS_EQUIPMENT
	transfer_with_mind = FALSE

/decl/aspect/gunsmith
	name = ASPECT_GUNSMITH
	desc = "The inner workings of firearms of all types are no mystery to you."
	parent_name = ASPECT_BASICGUNS
	use_icon_state = "guns_3"
	category = "Ranged Combat"
	aspect_cost = 1

/decl/aspect/marksman
	name = ASPECT_MARKSMAN
	desc = "Steady hand, steady eye."
	parent_name = ASPECT_BASICGUNS
	use_icon_state = "guns_3"
	category = "Ranged Combat"
	aspect_cost = 1

/decl/aspect/guns_akimbo
	name = ASPECT_DUALWIELD
	desc = "Two-handing is for nerds and children."
	parent_name = ASPECT_BASICGUNS
	use_icon_state = "guns_3"
	category = "Ranged Combat"
	aspect_cost = 1
