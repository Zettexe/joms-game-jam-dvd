extends Node

var current_cycle = CYCLE_TUTORIAL
var current_reputation = Reputation.NEUTRAL

enum Character {
	NONE,
	FRANCINE,
	KARLOS,
	HORTENSIA,
	LEONIDAS,
	REMY
}
const CHARACTER_NAMES = { 
	Character.NONE: "This is a bug", 
	Character.FRANCINE: "Francine", 
	Character.KARLOS: "Karlos", 
	Character.HORTENSIA: "Hortensia Briarheart", 
	Character.LEONIDAS: "Leonidas Zarbounis", 
	Character.REMY: "Remy Lingweenee" 
	}
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

enum Minigame{
	NONE,
	SLICE_MEAT
}

var minigame_name_pretty = {
	Minigame.SLICE_MEAT:
		"Slice The Meat"
}

var instructions = {
	Minigame.SLICE_MEAT:
		"Cut the steak into 8 slices as evenly as possible."
}

var position = {
	Character.FRANCINE: {
		CYCLE_TUTORIAL: {
			Reputation.NEUTRAL: [0, -64]
			},
		CYCLE_1: {
			Reputation.NEUTRAL: [],
			Reputation.OPPOSITION_1: [],
			Reputation.GOVERNMENT_1: []
		},
		CYCLE_2: {
			Reputation.NEUTRAL: [],
			Reputation.OPPOSITION_1: [],
			Reputation.GOVERNMENT_1: [],
			Reputation.OPPOSITION_2: [],
			Reputation.GOVERNMENT_2: []
		},
		CYCLE_3: {
			Reputation.NEUTRAL: [],
			Reputation.OPPOSITION_1: [],
			Reputation.GOVERNMENT_1: [],
			Reputation.OPPOSITION_2: [],
			Reputation.GOVERNMENT_2: [],
			Reputation.OPPOSITION_3: [],
			Reputation.GOVERNMENT_3: []
		}
	},
	Character.KARLOS: {
		CYCLE_TUTORIAL: {
			Reputation.NEUTRAL: [0, -69]
			},
		CYCLE_1: {
			Reputation.NEUTRAL: [],
			Reputation.OPPOSITION_1: [],
			Reputation.GOVERNMENT_1: []
			},
		CYCLE_2: {
			Reputation.NEUTRAL: [],
			Reputation.OPPOSITION_1: [],
			Reputation.GOVERNMENT_1: [],
			Reputation.OPPOSITION_2: [],
			Reputation.GOVERNMENT_2: []
			},
		CYCLE_3: {
			Reputation.NEUTRAL: [],
			Reputation.OPPOSITION_1: [],
			Reputation.GOVERNMENT_1: [],
			Reputation.OPPOSITION_2: [],
			Reputation.GOVERNMENT_2: [],
			Reputation.OPPOSITION_3: [],
			Reputation.GOVERNMENT_3: []
			}
	},
	Character.HORTENSIA: {
		CYCLE_TUTORIAL: {
			Reputation.NEUTRAL: [0, -66]
			},
		CYCLE_1: {
			Reputation.NEUTRAL: [],
			Reputation.OPPOSITION_1: [],
			Reputation.GOVERNMENT_1: []
			},
		CYCLE_2: {
			Reputation.NEUTRAL: [],
			Reputation.OPPOSITION_1: [],
			Reputation.GOVERNMENT_1: [],
			Reputation.OPPOSITION_2: [],
			Reputation.GOVERNMENT_2: []
			},
		CYCLE_3: {
			Reputation.NEUTRAL: [],
			Reputation.OPPOSITION_1: [],
			Reputation.GOVERNMENT_1: [],
			Reputation.OPPOSITION_2: [],
			Reputation.GOVERNMENT_2: [],
			Reputation.OPPOSITION_3: [],
			Reputation.GOVERNMENT_3: []
			}
	},
	Character.LEONIDAS: {
		CYCLE_TUTORIAL: {
			Reputation.NEUTRAL: [-660, 433]
			},
		CYCLE_1: {
			Reputation.NEUTRAL: [],
			Reputation.OPPOSITION_1: [],
			Reputation.GOVERNMENT_1: []
			},
		CYCLE_2: {
			Reputation.NEUTRAL: [],
			Reputation.OPPOSITION_1: [],
			Reputation.GOVERNMENT_1: [],
			Reputation.OPPOSITION_2: [],
			Reputation.GOVERNMENT_2: []
			},
		CYCLE_3: {
			Reputation.NEUTRAL: [],
			Reputation.OPPOSITION_1: [],
			Reputation.GOVERNMENT_1: [],
			Reputation.OPPOSITION_2: [],
			Reputation.GOVERNMENT_2: [],
			Reputation.OPPOSITION_3: [],
			Reputation.GOVERNMENT_3: []
			}
	}
}

var dialogue = {
	Character.FRANCINE: {
		CYCLE_TUTORIAL: {
			Reputation.NEUTRAL: [
				"Hi there, I'm Francine! I was supposed to be the Clemencian head negotiator.",
				"My favorite food is tough beef without salt.",
				"I'm no nonsense and I believe In The Cause.",
				"Nice to meet you."
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
	},
	Character.KARLOS: {
		CYCLE_TUTORIAL: {
			Reputation.NEUTRAL: [
				"Hi there, I'm Karlos. I'm soft spoken but I stand for what I believe is right.",
				"I'm also a movie nerd 🤓🤓.",
				"Thanks to Taxen Of Hearts, Zettexe, LanciferP, and crickets for making us come alive."
			]
		}
	},
	Character.HORTENSIA: {
		CYCLE_TUTORIAL: {
			Reputation.NEUTRAL: [
				"I am Hortensia Briarheart, but you can just call me Cici! or Rose... our creators never did decide on a nickname.",
				"I'm a bit of a ditz and airhead but still loveable."
			]
		}
	},
	Character.LEONIDAS: {
		CYCLE_TUTORIAL: {
			Reputation.NEUTRAL: [
				"You can call me Leonidas. I am smarter than Hortensia and yet somehow not head negotiator.",
				"The kids say I have 'rizz'. I think they have a case of not touching grass."
			]
		}
	}
}
