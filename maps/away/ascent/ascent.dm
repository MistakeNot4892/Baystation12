#include "ascent_areas.dm"
#include "ascent_jobs.dm"
#include "ascent_props.dm"
#include "ascent_shuttles.dm"

// Map template data.
/datum/map_template/ruin/away_site/ascent_caulship
	name = "Ascent Caulship"
	id = "awaysite_ascent_caulship"
	description = "A small Ascent civilian ship."
	suffixes = list("ascent/ascent-1.dmm")
	cost = 0.5
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/ascent)
	spawn_weight = 0.67

/obj/effect/submap_landmark/joinable_submap/ascent_caulship
	name = "Ascent Caulship"
	archetype = /decl/submap_archetype/ascent_caulship
	submap_datum_type = /datum/submap/ascent

/obj/effect/submap_landmark/joinable_submap/ascent_caulship/Initialize(mapload)
	var/list/all_elements = list(
		"Hydrogen",      "Helium",     "Lithium",     "Beryllium",    "Carbon",       "Nitrogen",      "Oxygen",
		"Fluorine",      "Neon",       "Sodium",      "Magnesium",    "Silicon",      "Phosphorus",    "Sulfur",
		"Chlorine",      "Argon",      "Potassium",   "Calcium",      "Scandium",     "Titanium",      "Chromium",
		"Manganese",     "Iron",       "Cobalt",      "Nickel",       "Zinc",         "Gallium",       "Germanium",
		"Arsenic",       "Selenium",   "Bromine",     "Krypton",      "Rubidium",     "Strontium",     "Zirconium",
		"Molybdenum",    "Technetium", "Ruthenium",   "Rhodium",      "Palladium",    "Silver",        "Cadmium",
		"Indium",        "Tin",        "Antimony",    "Tellurium",    "Iodine",       "Xenon",         "Caesium",
		"Barium",        "Lanthanum",  "Cerium",      "Praseodymium", "Neodymium",    "Promethium",    "Samarium",
		"Gadolinium",    "Dysprosium", "Holmium",     "Erbium",       "Ytterbium",    "Hafnium",       "Tantalum",
		"Tungsten",      "Rhenium",    "Osmium",      "Iridium",      "Gold",         "Mercury",       "Lead",
		"Bismuth",       "Polonium",   "Astatine",    "Radon",        "Francium",     "Radium",        "Actinium",
		"Thorium",       "Uranium",    "Plutonium",   "Americium",    "Curium",       "Berkelium",     "Californium",
		"Einsteinium",   "Fermium",    "Mendelevium", "Nobelium",     "Lawrencium",   "Rutherfordium", "Dubnium",
		"Seaborgium",    "Bohrium",    "Hassium",     "Meitnerium",   "Darmstadtium", "Roentgenium",   "Copernicium",
		"Nihonium",      "Flerovium",  "Moscovium",   "Livermorium",  "Tennessine",   "Oganesson"
	)
	name = "[pick(all_elements)]-[rand(10,99)]-[rand(10,99)]"
	. = ..()
