extends Node

var current_cycle = CYCLE_1
var current_reputation = Reputation.NEUTRAL

enum Character {
	NONE,
	FRANCINE
}
const CHARACTER_NAMES = { Character.NONE: "This is a bug", Character.FRANCINE: "Francine" }
enum { CYCLE_TUTORIAL, CYCLE_1, CYCLE_2, CYCLE_3 }
enum Reputation { 
	OPPOSITION_5 = -5, 
	OPPOSITION_4 = -4, 
	OPPOSITION_3 = -3, 
	OPPOSITION_2 = -2, 
	OPPOSITION_1 = -1, 
	NEUTRAL      =  0, 
	GOVERNMENT_1 =  1,
	GOVERNMENT_2 =  2,
	GOVERNMENT_3 =  3,
	GOVERNMENT_4 =  4,
	GOVERNMENT_5 =  5
}

var dialogue = {
	Character.FRANCINE: {
		CYCLE_TUTORIAL: {
			Reputation.NEUTRAL: [
				"this is cycle 0 reputation 0 dialogue, which is when the PC first interacts with this character."
			]
		},
		CYCLE_1: {
			Reputation.NEUTRAL: [
				"this is cycle 1 reputation 0 dialogue, which is after day 1 and neutral reputation.", 
				"this is the second dialogue box.",
				"i am fine with how the negotiations are going."
			],
			Reputation.GOVERNMENT_1: [
				"This is cycle 1 reputation 1C dialogue, which is after day 1 and one towards clemencian reputation.",
				"I am pleased with how negotiations are going."
			]
		}
	}
}
