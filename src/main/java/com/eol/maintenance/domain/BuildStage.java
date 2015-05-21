package com.eol.maintenance.domain;

public enum BuildStage {
	SPECIAL_ORDER("Special Order Materials"),
	TOOL_HIRE("Tool Hire"),
	PLANT_HIRE("Plant Hire"),
	SKIPS("Builders Skips"),
	LOADS("Bulk Waste Removal"),
	FIRST_FLR("1st Flr"),
	SECOND_FLR("2nd Flr"),
	THIRD_FLR("3rd Flr"),
	ARCHITRAVE("Architrave"),
	BALUSTRADING("Balustrading"),
	BARGE_BOARDS("Barge Boards"),
	BASEMENT_FLR("Basement Flr"),
	BEARERS("Bearers"),
	BI_FOLD_DOOR("Bi-Fold Door"),
	BINDER("Binder"),
	BOX_VALLEY("Box Valley"),
	BRADSTONE("Bradstone"),
	BRICKWORKS("Brickworks"),
	CARPENTRY("Carpentry"),
	CEILING_JOIST("Ceiling Joist"),
	CHEMICAL_DPC("Chemical DPC"),
	CLADDING("Cladding"),
	CRANE_HIRE("Crane Hire"),
	DECORATING("Decorating"),
	DOOR_CLOSER("Door Closer"),
	DOOR_FRAME("Door Frame"),
	DOOR_LINING("Door Lining"),
	DOOR_STOPS("Door Stops"),
	DRAINAGE("Drainage"),
	ELECTRICAL("Electrical"),
	ENABLING_WORKS("Enabling Works"),
	FASCIA_BOARD("Fascia Board"),
	FIRE_DOOR("Fire Door"),
	FIRESTOP("Firestop"),
	FIXINGS("Fixings"),
	FLAT_ROOF("Flat Roof"),
	FLITCH_BEAM("Flitch Beam"),
	FLOOR_BATTENS("Floor Battens"),
	FLOORING("Flooring"),
	FLUE_SYSTEM("Flue System"),
	FOUNDATIONS("Foundations"),
	GALLOWS_BRACKET("Gallows Bracket"),
	GARAGE_FLR("Garage Flr"),
	GENERAL_TIMBER("General Timber"),
	GROUND_FLR("Ground Flr"),
	GUTTERING("Guttering"),
	HEATING("Heating"),
	HIP_RAFTER("Hip Rafter"),
	INSULATION("Insulation"),
	INTERNAL_DOOR("Internal Door"),
	IRONMONGERY_PACK("Ironmongery Pack"),
	JOINERY("Joinery"),
	LAY_BOARDS("Lay Boards"),
	LOFT_FLR("Loft Flr"),
	METAL_STUD("Metal Stud"),
	MORTISE_LOCK_PACK("Mortise Lock Pack"),
	NEWEL_BASE("Newel Base"),
	NEWEL_CAP("Newel Cap"),
	NEWEL_POST("Newel Post"),
	OAK("Oak"),
	PAINTING("Painting"),
	PAIR_FIRE_DOORS("Pair Fire Doors"),
	PAIR_INTERNAL_DOORS("Pair Internal Doors"),
	PARTITIONS("Partitions"),
	PLASTERING("Plastering"),
	PLUMBING_1ST_FIX("Plumbing 1st fix"),
	PLYWOOD("Plywood"),
	POLE_PLATE("Pole Plate"),
	PRELIMINARIES("Preliminaries"),
	PROP("Prop"),
	PURLIN("Purlin"),
	RAFTER("Rafter"),
	RAIN_WATER("Rain Water"),
	RENDERING("Rendering"),
	RESILIENT_FLR("Resilient Flr"),
	RESTRAINT_STRPS("Restraint Strps"),
	RETAINING_WALLS("Retaining Walls"),
	RIDGE_BOARD("Ridge Board"),
	ROOF_VENTILATION("Roof Ventilation"),
	ROOFING("Roofing"),
	SANITARY_WARES("Sanitary Wares"),
	SCAFFOLDING("Scaffolding"),
	SHEATHING("Sheathing"),
	SIP_FRAME("SIP Frame"),
	SKIRTING_BOARD("Skirting Board"),
	SOFFIT_BOARD("Soffit Board"),
	STAIRCASE("Staircase"),
	STRUCTURAL_WORKS("Structural Works"),
	STRUTTING("Strutting"),
	TANKING("Tanking"),
	TILING("Tiling"),
	TIMBER_CLADDING("Timber Cladding"),
	TIMBER_FRAME("Timber Frame"),
	VALLEY_BOARDS("Valley Boards"),
	VALLEY_RAFTER("Valley Rafter"),
	VCL("VCL"),
	VELUX("Velux"),
	WALL_BATTENS("Wall Battens"),
	WALL_LININGS("Wall Linings"),
	WALL_PLATE("Wall Plate");
	
	private final String name;
	private BuildStage(String name) { this.name = name; }
	public String getName() { return name; }
}
