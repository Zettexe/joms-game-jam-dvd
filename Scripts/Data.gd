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
	CLEMENCIANS_3 = -3, 
	CLEMENCIANS_2 = -2, 
	CLEMENCIANS_1 = -1, 
	NEUTRAL      =  0, 
	PAIXLING_1 =  1,
	PAIXLING_2 =  2,
	PAIXLING_3 =  3
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

var dialogue = {
	Character.FRANCINE: {
		CYCLE_TUTORIAL: {
			Reputation.NEUTRAL: [
				"Hi there, I'm Francine! I was supposed to be the Clemencian head negotiator.",
				"My favorite food is tough beef without salt.",
				"I'm no nonsense and I believe In The Cause.",
				"...(and now for the text that was supposed to be)...",
				"Francine greets you with a brash and assertive demeanor. She extends a firm handshake",
				"So, you’re the royal chef, huh? I hope your culinary skills are as impressive as they say.",
				"Let’s get one thing straight right out of the gate: I don’t have time to banter nor time for small talk. My priorities are clear and they don’t involve gourmet meals or fancy desserts.",
				"I’m here to protect our land, every square kilometer of it, and I cannot – will not – back down on that.",
				"So, chef, make sure our meals are impeccable, because the negotiations I will lead are going to be anything but smooth."
			],
			Reputation.CLEMENCIANS_1: [
				"Chef, I can't express how pleased I am with how these negotiations have unfolded ",
				"We've managed to secure a favorable withdrawal of troops from Wolfrost, and Paixling has agreed to cut all alliances with Odrakh and Ulania. It's safe to say that Clemencia has come out on top in these talks, despite the challenges we faced.",
				"Tomorrow, we'll be ratifying all these agreements. It's the final stretch, and we're in a strong position. Let's continue with our strategic approach, and ensure that Clemencia gets the best possible outcome. I'm confident that we're on the right path, and I couldn't be happier with how things have gone"
				],
			Reputation.CLEMENCIANS_2: [
				"Chef, these negotiations have been a mixed bag so far. We've secured some valuable mineral rights on Dorados, and Oranjia is a reasonable compromise. The war reparations are hefty, but it's the price we must pay. Partial demilitarization was expected, but it's a bitter pill to swallow. We've managed to meet most of our expectations, but it's not without its sacrifices.",
				"Karlos, bless his heart, is more conciliatory than I'd like sometimes. He cares deeply about our nation's future and our people's well-being.",
				"Tomorrow, we've got a different beast to tackle. We'll be discussing troop withdrawals, closing supply lines, and ending those pesky wartime pacts. It's crucial that we navigate this smoothly to ensure our nation's future."
			],
			Reputation.CLEMENCIANS_3: [
				"DEV NOTE: With Clemencians at max reputation, Francine was supposed to be gone and lead a coup against their leader. Apparently the only military that the Paixlings had left were those annexxing Wolfrost - Clemencia's Capitol. Oh well."
			],
			Reputation.PAIXLING_1: [
				"Well, this isn't exactly the outcome we had in mind, but I won't let this discourage us. The Paixlings have certainly gained the upper hand here. We're paying war reparations, giving up Oranjia, and we couldn't secure any mining or trade rights on Dorados. There's also the demilitarization we'll have to deal with",
				"Tomorrow is the final day, and we'll be ratifying these agreements. It stings a bit, I won't lie, but we won't give up"
			],
			Reputation.PAIXLING_2: [
				"Chef, I can't hide my disappointment with how these negotiations have turned out. The Paixlings have outmaneuvered us at every turn.",
				"Severe war reparations, the annexation of Oranjia, no mining or trade rights on Dorados—it's a significant loss. And this demilitarization... it stings",
				"Tomorrow, we'll be ratifying these agreements, and it's not going to be easy. Our nation faces a heavy burden. We need to approach this with caution and seek any possible avenues to ease the impact on our people"
			],
			Reputation.PAIXLING_3: [
				"DEV NOTE: Francine and Karlos were supposed to be absent for Paixling Total Victory, allowing the Paixlings to get even *more* than they should in the treaty. Oh well. "
			]
			}
	},
	Character.KARLOS: {
		CYCLE_TUTORIAL: {
			Reputation.NEUTRAL: [
				"Hi there, I'm Karlos. I'm soft spoken but I stand for what I believe is right.",
				"I'm also a movie nerd 🤓🤓.",
				"Thanks to Taxen Of Hearts, Zettexe, LanciferP, and crickets for making us come alive.",
				"...(and now for the text that was supposed to be)...",
				"It's a pleasure to have you join us. I'm Karlos, and amidst the chaos of war, I believe in seeking harmony. As we navigate these negotiations, I carry the well-being of Clemencian citizens close to my heart.",
				"Instead of annexation and dragging this bloody conflict on further, I believe war reparations and demilitarization are essential for citizens’ safety and prosperity.",
				"What I truly hope to achieve is a brighter future for Clemencia, where our people can live in peace, unburdened by conflict. These negotiations offer us that chance, and your culinary skills may help smooth the path to resolution."
			],
			Reputation.CLEMENCIANS_1: ["CLEMENCIAN_ONE TEXT HERE, UNFORTUNATELY DIALOGUE TREE UNFINISHED."],
			Reputation.PAIXLING_1: [
				"Chef, as I reflect on the results of these negotiations, I find myself grappling with the decisions made. War reparations, annexation, and demilitarization are complex matters.",
				"War reparations, though difficult to accept, may serve as a path to reconciliation. Annexation of Oranjia, while a loss, may provide opportunities for future cooperation. Demilitarization, though challenging, can be seen as a step towards lasting peace.",
				"Tomorrow, as we finalize these agreements, my priority remains safeguarding the interests of our people. I'll quietly advocate for measures that balance our obligations with the welfare of our citizens."
			],
			Reputation.CLEMENCIANS_2: [
				"Greetings, Chef! It’s genuinely a joy to see you. Might I add, the meal last night was spectacular.",
				"You can talk to Francine to get all the nitty gritty details of our negotiations; I can’t focus enough on our luck to share right now.",
				"If this continues in this manner, we’ll have to host a feast back in Wolfrost! Maybe you could come and meet my wife and family? Regardless, I hope that, through these negotiations, we can pave the way for a brighter tomorrow for all Clemencians. ",
				"It is my desire to ensure that future generations can enjoy a life of peace and prosperity, much like the admittedly schlocky films I enjoy – stories of hope and unity."
				],
			Reputation.PAIXLING_2: [
				"Chef, these negotiations have taken a rather unexpected turn, and I must admit, I find myself at a loss. We've made substantial concessions - the relinquishment of Oranjia, heavy war reparations, and the call for significant demilitarization.",
				"It's not the outcome we had hoped for, but I suppose we should find a way forward. We must, after all. It’s our job, whether we like it or not.",
				"Tomorrow, we'll be facing the challenge of managing troop withdrawals, closing supply lines, and ending wartime pacts. It's all a bit daunting, but I still believe in the justness of our cause.",
				"My main concern remains the well-being of Clemencia's citizens, especially for the sake of my family"
				],
			Reputation.CLEMENCIANS_3: [
				"Karlos approaches the player character with a mix of relief and concern in his eyes. He takes a deep breath before speaking, his voice still soft-spoken but filled with emotion.",
				"I can hardly believe what's happened. The negotiations have taken a turn we could only have dreamed of.",
				"But Francine... she's gone, and I don't understand why. She said she'd return when all was made right. What could she mean by that? It's all so baffling.",
				"Tomorrow, when we ratify the agreements, it's vital that we ensure Clemencia's interests are upheld. I'll need your support to navigate this, especially without Francine by our side.",
				"The future of our nation hangs in the balance."
				],
			Reputation.PAIXLING_3: [
				"DEV NOTE: Francine and Karlos were supposed to be absent for Paixling Total Victory, allowing the Paixlings to get even *more* than they should in the treaty. Oh well. "
			]
			},
	},
	Character.HORTENSIA: {
		CYCLE_TUTORIAL: {
			Reputation.NEUTRAL: [
				"I am Hortensia Briarheart, but you can just call me Cici! or Rose... our creators never did decide on a nickname.",
				"I'm a bit of a ditz and airhead but still loveable.",
				"...(and now for the text that was supposed to be)...",
				"Hey there! I’m Rose, or Cici! but you can call me Hortensia if you want. Wars are such a bore, don't you think?",
				"I have a feeling that having you around might just make this whole thing a lot more fun. Negotiations can be such a drag, but with good food and good company, who knows what delightful surprises await us? "
			],
			Reputation.CLEMENCIANS_1: [
				"CLEMENCIANS_1 TEXT NOT IMPLEMENTED, BLAME [removed]"
			],
			Reputation.CLEMENCIANS_2: [
				"Well, well, look at us making strides! Trading Dorados for Oranjia seems like a decent deal, I suppose, though the specifics elude me.",
				"Tomorrow, we'll dive into topics like troop withdrawals, supply line closures, and ending pacts. Not the most thrilling subjects, but hey, with your culinary finesse, you'll keep the mood light. You can sneak me snacks in between meals, right?",
				"Leonidas? Well, he seems to be enjoying this a lot, isn't he? Always calculating, always thinking three steps ahead. He's a formidable partner, I'll give him that. But between you and me, he could use a bit more of my carefree spirit.",
				"Keep on fostering these vibes, chef. Who knows? Maybe we'll all leave these negotiations with full stomachs and smiles; I trust you'll help in achieving that."
			],
			Reputation.CLEMENCIANS_3: [
				"Cheffey! These negotiations have been a rollercoaster, haven't they? I mean, who would've thought things would turn out this way? ",
				"It's almost like Clemencia's got a secret weapon up their sleeve. ",
				"As for tomorrow, I'll be there to put on the final show. I don't expect any surprises. After all, we got the beaches, and that's what really matters, right?",
				"And where's dear Francine? Off on some adventure, I presume? Well, good riddance, I say. We've got this covered."
			],
			Reputation.PAIXLING_1: [
				"Well, isn't this interesting? We're making progress, and I'm all for it. Wolfrost is occupied, and that's fine, I guess. ",
				"But tomorrow? We'll be talking about land concessions and war reparations. Sounds like serious stuff, huh? ",
				"Just keep doing your thing, chef. Maybe whip up something extra special to keep the atmosphere light. Who knows? Your dishes might sprinkle a little more 'peace' into these negotiations."
			],
			Reputation.PAIXLING_2: [
				"My dear, these negotiations have become quite the yawn-fest, haven't they? I mean, who would've thought discussing borders and troops could be this tedious? Personally, I'd much rather be lounging on a pristine Paixling beach with a cocktail in hand. Alas, duty calls.",
				"Keep doing your thing to keep the peace, won't you? We're almost there, just a tad more, and then I can finally savor the sweet taste of relaxation.",
				"Those Clemencian negotiators, oh my, they're a real piece of work, aren't they? A pair of fiery bloody zealots if you ask me. They're like a couple of stubborn mules.",
				"Tomorrow wraps it all up! I can’t wait to get out of this stuffy room."

			],
			Reputation.PAIXLING_3: [
				"Chef, you won't believe the twist these negotiations have taken. The Clemencians have mysteriously vanished, and it's left me feeling as light as a cloud. Severe war reparations and the annexation of Oranjia—it's like floating on air!",
				"We've also managed to sprinkle in some clauses that secure Paixling's coastal interests for generations to come, like capturing the essence of a perfect daydream.",
				"Tomorrow is the final day, and I'm absolutely certain it'll be as enchanting as a fairy tale. We're on the brink of a new era of wonder! Keep up the fantastic work!"
			]
			},
	},
	Character.LEONIDAS: {
		CYCLE_TUTORIAL: {
			Reputation.NEUTRAL: [
				"You can call me Leonidas. I am smarter than Hortensia and yet somehow not head negotiator.",
				"The kids say I have 'rizz'. I think they have a case of not touching grass.",
				"...(and now for the text that was supposed to be)...",
				"Greetings. I am Leonidas Zarbounis. While Hortensia may handle the social aspects, I'll ensure our negotiations are strategically sound. Your culinary contributions may prove pivotal. Don't underestimate your role.",
				"I have clear goals: securing substantial war reparations, demilitarization, and annexation to strengthen Paixling's strategic position. Victory, not comfort, is my primary aim.",
				"Starting out on the right foot tomorrow is crucial. If you can provide any advantage to our side, I will make sure your valiant efforts are appropriately compensated."
			],
			Reputation.CLEMENCIANS_1: [
				"Progress is progress, no matter how minor. Wolfrost's safety is a necessary precaution. ",
				"Tomorrow is pivotal, and Clemencia must make substantial concessions. ",
				"Chef, your role becomes increasingly important as we navigate these complex discussions. Think about what I offered you yesterday. Should you choose to act on it, the time would be nigh. "
			],
			Reputation.CLEMENCIANS_2: [
				"CLEMENCIANS_2 NOT IMPLEMENTED, BLAME \"JOSEPH\" ANDERSON"
			],
			Reputation.CLEMENCIANS_3: [
				"The outcome of these negotiations is... unexpected, to say the least. Clemencia has secured far more than anyone could have anticipated. ",
				"But where is Francine? I can't help but wonder what she's up to, especially when they’ve clearly exceeded any expectations. ",
				"Tomorrow, when we ratify the agreements, we need to be cautious. This turn of events is suspicious, and we must ensure Paixling's interests remain protected. ","
				Keep your wits about you. We may still encounter surprises in the final stages of these negotiations."
			],
			Reputation.PAIXLING_1: [
				"Leonidas maintains his intellectual air, but a smirk breaks through the façade every so often.",
				"Progress is progress, and we are certainly making progress. Wolfrost's occupation is a necessary precaution. ",
				"Tomorrow is pivotal, and Clemencia must make substantial concessions. ",
				"Chef, your role becomes increasingly important as we navigate these complex discussions. Think about what I offered you yesterday. Should you choose to act on it, the time would be nigh. "
			],
			Reputation.PAIXLING_2: [
				"It seems these negotiations have evolved in our favor, but we mustn't underestimate the resilience of our adversaries. Tomorrow, as we delve into troop withdrawals and wartime pacts, remember that every detail holds significance. ",
				"I'll handle the intricate negotiations, but I'm relying on your discreet support. This final phase is pivotal for securing Paixling's dominance. Stay vigilant, and we shall navigate this intricate dance of diplomacy with finesse.",
				"As for Hortensia, she brings a unique charm to our partnership, doesn't she? Her nonchalance is a mask for a mind sharp as a dagger's edge. If only she took things more seriously at times…",
				"It's in these challenging negotiations that true tests of wit and strategy arise, and I relish every moment. ",
				"Come! Let us cement our names in the annals of history!"
			],
			Reputation.PAIXLING_3: [
				"Chef, this is nothing short of a stroke of genius in negotiations. The severe war reparations and annexation of Oranjia showcase our overwhelming success.",
				"Furthermore, we've skillfully included clauses that will significantly weaken the Clemencian navy. Tomorrow's the final day, and I anticipate a seamless finalization of these agreements.",
				"Our advantages are immeasurable, and we must capitalize on this puzzling opportunity that fate has presented us."
			]
			},
	}
}

