extends SceneBase

func _init():
	sceneID = "MirriTalkScene"

func _run():
	if(state == ""):
		addCharacter("mirri")
		playAnimation(StageScene.Duo, "stand", {npc="mirri"})
		saynn("You approach Mirri. The catgirl is eyeing you out.")

		saynn("[say=mirri]"+str(getModule("SlaveAuctionModule").getMirriGreeting())+"[/say]")

		saynn(""+str(getModule("SlaveAuctionModule").getRepInfoString())+"")

		addButton("Sell Slave", "Sell one of your slaves on a slave auction", "sell_menu")
		addButton("Talk", "Ask her a few things", "chat_menu")
		addButton("Sex", "See if you can get a little kinky with her", "sex_menu_check")
		addDisabledButton("Upgrades", "You don't access to this yet")
		addButton("Leave", "Enough talking", "endthescene")
		GM.ES.triggerRun(Trigger.TalkingToNPC, ["mirri"])
	if(state == "kinky_times_intro"):
		saynn("Feeling horny, you close the distance with Mirri, your stare checking her girly curves.. that she decided to put out on display. Her striped panties are sitting a little tight, the cloth outlining her kitty, highlighting the thin slit.")

		saynn("[say=pc]Why don't we put our side deals away for a second.. and get down to real business.[/say]")

		saynn("Mirri eyes you out.")

		saynn("[say=mirri]Huh. I don't think you can handle a Syndicate Agent, softie. I'm a little.. out of your league.. by a few lightyears at least~.[/say]")

		saynn("[say=pc]Oh yeah?[/say]")

		saynn("The catgirl sways her hips in a hypnotic way while circling you.")

		saynn("[say=mirri]You're welcome to be my obedient sextoy, though~. It gets very lonely on this.. here.[/say]")

		saynn("[say=pc]I guess real sex toys aren't satisfying you anymore.[/say]")

		saynn("Mirri puts on her mean eyes, her claws are out and ready to scratch..")

		addButton("Continue", "See what happens next", "sex_menu")
	if(state == "sex_menu"):
		saynn("How do you want to have fun with Mirri?")

		addButton("Dominate", "Try to overpower Mirri.. Might include a high amount of scratching and biting", "try_dominate")
		if (getFlag("SlaveAuctionModule.sexSubbedToMirri")):
			addButton("Be her toy", "Agree to let Mirri have it her way with you", "sub_menu")
		else:
			addButton("Be her toy", "Agree to let Mirri have it her way with you. Will unlock submissive sex options", "agree_be_toy")
		addButton("Back", "Back to the previous menu", "")
	if(state == "sub_menu"):
		saynn("How do you wanna sub to Mirri?")

		addButton("Painplay", "See what that crazy bitch can do to your body..", "sub_painplay")
		if (true):
			addButton("Pussy worship", "See what that crazy bitch will do to you with her pussy..", "sub_pussy")
		if (true):
			addButton("Puppy walkies", "See yourself become the bitch..", "sub_walkies")
		addButton("Back", "Back to the previous menu", "sex_menu")
	if(state == "chat_menu"):
		saynn("What do you wanna ask Mirri?")

		addButton("Wolf", "Who is that wolf with glowing black and gold fur", "ask_luxe")
		addButton("BDCC", "Ask her about how she stumbled upon the AlphaCorp prison", "ask_bdcc")
		addButton("Blacktail", "Ask her about her family", "ask_blacktail")
		addButton("Slaves", "Ask her about why she enslaves people", "ask_slaves")
		addButton("Collar", "Ask about them possible removing your collar", "ask_collar")
		addButton("Catgirl", "Ask her about her species", "ask_catgirl")
		addButton("Back", "Enough questions..", "")
	if(state == "ask_luxe"):
		saynn("[say=pc]That wolf.. with the black and gold fur. Who is he?[/say]")

		saynn("Mirri rolls her eyes.")

		saynn("[say=mirri]That's my dad.[/say]")

		saynn("That.. wasn't very obvious.. all things considered.")

		saynn("[say=pc]You don't seem particularly happy about that.[/say]")

		saynn("[say=mirri]Uh huh. If he'd hear me tell you that I'd be dead already. Or worse.[/say]")

		saynn("That's one way to parent.")

		addButton("Continue", "See what happens next", "chat_menu")
	if(state == "ask_bdcc"):
		saynn("[say=pc]How did you stumble upon BDCC?[/say]")

		saynn("[say=mirri]Is that what your stupid giant hamster cage called? Hah, didn't know.[/say]")

		saynn("She didn't even know the prison's name..")

		saynn("[say=mirri]I just scanned the whole dimension.[/say]")

		saynn("[say=pc]That's.. how is that even possible?[/say]")

		saynn("[say=mirri]I guess I'm just that smart~.[/say]")

		saynn("[say=pc]You're not gonna tell me how?[/say]")

		saynn("She shakes her head.")

		addButton("Continue", "See what happens next", "chat_menu")
	if(state == "ask_blacktail"):
		saynn("[say=pc]So you are.. Blacktail.[/say]")

		saynn("Mirri nods.")

		saynn("[say=mirri]Yeah. One of the Syndicate families. One of the most important ones.[/say]")

		saynn("[say=pc]Syndicate families?[/say]")

		saynn("She tilts her head, annoyed tones hiding in her voice.")

		saynn("[say=mirri]Yeah? You've been living under a rock or something?[/say]")

		saynn("[say=pc]More like, attached to a rock.[/say]")

		saynn("Mirri giggles softly.")

		saynn("[say=mirri]Oh, right, AlphaCorp thinks asteroid belts can protect their stupid silly space stations. Their brains are so one-dimensional.[/say]")

		saynn("[say=pc]Seems to work for them for now.[/say]")

		saynn("She shrugs.")

		saynn("[say=mirri]Syndicate is not a single entity. Syndicate is just many families under the same goal. Having many heads is better than one silly dictator. Brains over brute force, that was always our way.[/say]")

		saynn("[say=pc]And why is Blacktail one of the most important Syndicate families?[/say]")

		saynn("[say=mirri]Cause we enslave people, duh.[/say]")

		saynn("She has a point. But you're not sure if you see it.")

		saynn("[say=mirri]It's fun. And it pays well.[/say]")

		saynn("Interesting.")

		addButton("Continue", "See what happens next", "chat_menu")
	if(state == "ask_slaves"):
		saynn("[say=pc]Why are you.. selling slaves?[/say]")

		saynn("Mirri blinks, genuinely confused at your question.")

		saynn("[say=mirri]Are you dumb or something? I'm Blacktail.[/say]")

		saynn("[say=pc]So?[/say]")

		saynn("[say=mirri]SO? Yeah, I was right. You are just very-very..[/say]")

		saynn("You decide to cut her off before she insults you even more.")

		saynn("[say=pc]Listen. I know who you are. I know what your family does. I don't care that Blacktail is known for trading slaves. Why are YOU doing this?[/say]")

		saynn("Mirri shuts up and frowns at you, her claws are visible out.")

		saynn("[say=mirri]Fuck you. I do this for the credits and pleasure. Happy now, fucker?[/say]")

		saynn("[say=pc]Why not do something else?[/say]")

		saynn("Suddenly, she pulls her gun out and presses it against your skull. Ohh, the cat got very angry. An audible click makes your blood freeze.")

		saynn("[say=mirri]You're saying that I suck at this? That I should just give up? Yeah, fucker?[/say]")

		saynn("[say=pc]No, I don't.[/say]")

		saynn("Her mean eyes have that predator glow in them, her tail wagging aggressively.")

		saynn("[say=mirri]But you're implying that.[/say]")

		saynn("She pushes the gun more into your head, the barrel leaving a little circular imprint on above your brow already. Better not to push her further now..")

		saynn("[say=pc]Relax, Mirri, please. You're a good slaver, the best one that I know.[/say]")

		saynn("Mirri smiles, her cheeks receive a faint red glow.")

		saynn("[say=mirri]Well thank you, you're such a nice {pc.boy}.[/say]")

		saynn("She decides to put her gun away.")

		saynn("[say=pc]..you're welcome..[/say]")

		addButton("Continue", "See what happens next", "chat_menu")
	if(state == "ask_collar"):
		saynn("[say=pc]I have this collar on my neck.[/say]")

		saynn("[say=mirri]I've noticed, I like it a lot.[/say]")

		saynn("[say=pc]Yeah, sure. Can you or someone else.. help me remove it?[/say]")

		saynn("Mirri takes a closer look.")

		saynn("[say=mirri]Huh.[/say]")

		saynn("She grabs you by the collar and pulls closer. You can feel her warm breath on your chest as she closely inspects the device.")

		saynn("[say=mirri]Nope. It would be easier to cut your head off. Should I?[/say]")

		saynn("[say=pc]I'm good.[/say]")

		saynn("[say=mirri]It's a different design, I have no idea how to break this one. Looks like your shithole is really worried about the security of its fucktoys. Wrong priorities if you'd ask me.[/say]")

		saynn("[say=pc]I guess.[/say]")

		saynn("[say=mirri]I can see the bluespace transmitter. The thing is relaying its position constantly.[/say]")

		saynn("Does that mean what you think it means?")

		saynn("[say=mirri]You're lucky we have a jammer installed. Otherwise you'd be dead already.[/say]")

		saynn("[say=pc]Wait. But the jammer only covers this..[/say]")

		saynn("You realize that you have no idea if you're on a space station.. or on a planet.. you could be anywhere..")

		saynn("[say=pc]This.. place?[/say]")

		saynn("[say=mirri]Mhm.[/say]")

		saynn("[say=pc]So.. the slaves that you sell..[/say]")

		saynn("[say=mirri]Syndicate isn't stupid. Bluespace might be novel to you but it's a commodity here. Everyone has jammers.[/say]")

		saynn("Necessity pushes the progress forward..")

		saynn("[say=mirri]And if someone doesn't and AlphaCorp frees them.. that's their problem. I'm totally okay with enslaving and selling someone for the second time~.[/say]")

		addButton("Continue", "See what happens next", "chat_menu")
	if(state == "ask_catgirl"):
		saynn("You focus your curious eyes on her black fur..")

		saynn("[say=pc]Interesting.. pattern.. for a human.[/say]")

		saynn("Mirri shrugs, her tail wagging a bit.")

		saynn("[say=mirri]Yes, I know, I know, I'm a hybrid and everything.[/say]")

		saynn("Her feline ears flick. Huh. That ponytail that she has is hiding something interesting.")

		saynn("[say=mirri]Just call me what I am. A catgirl.[/say]")

		saynn("A question lingers in your mind..")

		saynn("[say=pc]I'm curious.. Do you..[/say]")

		saynn("[say=mirri]..purr during sex? Only one way to find out~.[/say]")

		saynn("[say=pc]That's.. alright. but I had a different question.[/say]")

		saynn("Mirri giggles.")

		saynn("[say=pc]Do you have two pairs of ears?[/say]")

		saynn("She stops giggling and starts coughing instead.")

		saynn("[say=mirri]..really? That's what you're curious about?[/say]")

		saynn("You nod.")

		saynn("[say=mirri]Curiosity.. murdered the cat.[/say]")

		saynn("Looks like you're not gonna get the answer for that question..")

		addButton("Continue", "See what happens next", "chat_menu")
	if(state == "agree_be_toy"):
		playAnimation(StageScene.Duo, "stand", {npc="mirri"})
		saynn("You glance at Mirri, standing in front of you, with that predatory smile of hers.")

		saynn("Normally, you're the one in control. You dominate and enslave.. but today.. something about the way her blue feline eyes lock onto yours.. makes you hesitate. Maybe a Syndicate agent is indeed a little out of your league..")

		saynn("[say=pc]Mirri..[/say]")

		saynn("Your voice shows those little notes of uncertainty.. Mirri tilts her head slightly, a dangerous glint in her eyes. But then she realizes..")

		saynn("[say=mirri]Oh. Well, well, well..[/say]")

		saynn("She purrs while stepping closer and around you, her armored boots making a powerful cling each time. Her sheer confidence makes you subtly lower your head.")

		saynn("[say=mirri]Someone is acting.. like a subby bitch.[/say]")

		saynn("You showed a little weakness.. but you're not a bitch.. for sure..")

		saynn("[say=pc]I'm not..[/say]")

		saynn("You feel the sting of her claws as she digs them into your cheek, her padded palm covering your lips.")

		saynn("[say=mirri]Shh.. shut your mouth.. Toys don't talk.[/say]")

		saynn("Something is making you stay quiet after she pulls her hand away from your face. Mirri sees that and chuckles.")

		saynn("[say=mirri]You enslave people.. and yet.. inside.. you're the most subby thing that I know. That is so funny.[/say]")

		saynn("You open your mouth and try to say something.. but seeing Mirri frown makes you seize up, her claws are already following the lines of your throat, threatening..")

		saynn("[say=mirri]On your fucking knees, bi-i-itch.[/say]")

		saynn("She is savoring that last word for a long time.")

		addButton("Kneel?", "Do as she says maybe", "subintro_kneel")
	if(state == "subintro_kneel"):
		playAnimation(StageScene.Duo, "kneel", {npc="mirri", bodyState={leashedBy="mirri"}})
		saynn("You silently look at the dark wood under your feet.. while a storm of thoughts, kinky and not, is brewing in your head..")

		saynn("Mirri stares at your face, getting more and more annoyed by the second, her tail swiping the floor.")

		saynn("[say=mirri]Fine, I will make it easy.[/say]")

		saynn("A leash gets clipped to your collar by Mirri. She steps on the hanging bit with her boot and pins it to the floor, making you jerk your head down, your body bending forward.. but you're still standing, putting strain on that leash.")

		saynn("[say=pc]Kh..[/say]")

		saynn("[say=mirri]Lower, whore, lower. Kiss the fucking floor already.[/say]")

		saynn("Mirri pulls on the leash.. pretty much forcing you to bend lower and lower.. until you have to get on your knees before her. But she doesn't stop there..")

		saynn("[say=mirri]Say hi to my boot.[/say]")

		saynn("You resist.. but you also don't, your hands just resting on your knees while Mirri keeps making you kneel lower and lower.. until that boot is all that you can see.")

		saynn("[say=mirri]I'm waiting. Say hi, bitch.[/say]")

		saynn("She can not be serious.. That's humiliating, even for you.. Her boot is shifting a bit, rubbing that leash into the floor.")

		saynn("[say=mirri]Say hi or I will make you kiss it. Try me, subby bitch, see what happens.[/say]")

		saynn("[say=pc]H.. h-hi..[/say]")

		saynn("Mirri hears that and giggles, her boot instantly letting go of the leash, letting you sit up.")

		saynn("[say=mirri]Good {pc.boy}.. such a good little subby {pc.boy}.. I love you, you know?[/say]")

		saynn("Huh? You raise your stare and see her face.. still as mean as before.. while yours is blushing in deep red tones.")

		saynn("[say=mirri]What? I love me a little subby bitch~. You are a subby bitch, right?[/say]")

		saynn("The leash is still in her hand.. and you are still sitting on your knees before her.. obeying her orders.. There is only one correct answer.")

		saynn("You nod.")

		saynn("Mirri smiles, showing her sharp fangs to you. She leans closer to your ear, purring and whispering.")

		saynn("[say=mirri]I could bring you to that auction room at any point.. I could chain you to the ceiling.. and sell you off to the first bidders that I see..[/say]")

		saynn("You swallow audibly. She is not wrong..")

		saynn("[say=mirri]If you didn't notice yet.. I fucking hate AlphaCorp slaves..[/say]")

		saynn("After saying that with such a mean tone, she pulls away from your ear.. the tension in your body is making you squirm hard. You realize how one wrong move from you can basically kill you now..")

		saynn("Mirri's sly smile is making you melt.. you feel like you are ready to do anything.. She slides her paw into her striped panties and moans.")

		saynn("[say=mirri]I'm so fucking wet.[/say]")

		saynn("She looks at you, at the squirming mess beneath her feet.")

		saynn("[say=mirri]Arms behind your back.[/say]")

		saynn("They snap there instantly, your obedient eyes meet hers and try to avoid them. She tugs on the leash to get your attention.")

		saynn("[say=mirri]No, look at me. Look at Mirri, you AlphaCorp bitch.[/say]")

		saynn("You obey.. but your gaze is shaky.. you can't find rest, constantly shifting your position a bit..")

		saynn("[say=mirri]Pull my panties down.[/say]")

		saynn("Instinctively, you reach your hands out.. but Mirri catches them and digs her claws in.")

		saynn("[say=mirri]Wrong.[/say]")

		saynn("You bring your arms behind your back again..")

		saynn("Looks like you will have to do it some other way.")

		addButton("Teeth", "Pull them with your teeth", "subintro_teeth")
	if(state == "subintro_teeth"):
		playAnimation(StageScene.Duo, "kneel", {npc="mirri", npcBodyState={exposedCrotch=true}, bodyState={leashedBy="mirri"}})
		saynn("Having no access to your hands.. There is only one other way to do it. You squirm just thinking about it.. but Mirri is waiting, her impatient figure looming over you, boot tapping the wooden floor.")

		saynn("You begin leaning forward.. but not fast enough for the catgirl. She runs the leash between her legs and pulls on it, yanking you forward, your face meeting her inner thigh. So warm..")

		saynn("[say=mirri]So pathetic.[/say]")

		saynn("She uses her knee to push you back a little and guide you up to her panties. Lips parted, you catch the blue striped cloth between your teeth.. being careful to avoid biting anything sensitive.. and then begin tugging her panties down.")

		saynn("As you do it, the wetness clinging to her skin makes the fabric slightly damp in your mouth. The scent of her arousal fills your senses, you can't help but shudder as the material slides down further, finally revealing the drippy pink folds of her pussy in all its needy glory.")

		saynn("Mirri bites her lip, purring while looking down at you.")

		saynn("[say=mirri]See how wet I am? You did this, you know. Such a good {pc.boy}.[/say]")

		saynn("Your eyes betray you, you can't look away.. Her pussy is right in front of you now, inches from your lips, her juices dripping down onto the floor.. All you have to do is reach out.. touch.. taste.. bury yourself in that wet heat..")

		saynn("But as your breath hitches.. as you begin to reach.. Mirri's voice slices through the air, harsh and teasing.")

		saynn("[say=mirri]Don't even fucking think about it.[/say]")

		saynn("You stop.. the sight makes you desperate.. You almost let out a whine..")

		saynn("[say=mirri]You earned the right to look. But the rest you're yet to earn, little slave.[/say]")

		saynn("You look up at her.. awaiting your next order.")

		saynn("[say=mirri]How? Simple. Through abuse..[/say]")

		saynn("She digs her claws into your chin, sending agonizing sparks of discomfort throughout, drawing some blood even..")

		saynn("[say=mirri]..degradation..[/say]")

		saynn("Her digits find your lips and force themselves in between, making you suck them while she tightens the leash with her other hand.. and begins to slide her pussy along it, each chain link running into her clit and rubbing it..")

		saynn("[say=mirri]..and complete submission. Ah..[/say]")

		saynn("Mirri's body trembles, her pussy visible pulsing in your view while her claws dig into your tongue.. ouch.. and yet, you don't bite, just tasting your blood while watching that beatiful pussy orgasm in front of you..")

		saynn("[say=mirri]Such a good.. sextoy.. fuck yes-s-s..[/say]")

		saynn("The view is great.. but the moment is over just as quick as it started.. Mirri pulls up her panties and takes a step back, her hand detaching the leash.")

		saynn("[say=mirri]I loved it~. Get used to this, toy.[/say]")

		setFlag("SlaveAuctionModule.customMirriGreeting", "Came back for more~? Such a good {pc.boy}.")
		saynn("Just like that, she leaves you there, on your knees..")

		addButton("Continue", "See what happens next", "endthescene")
	if(state == "sub_painplay"):
		playAnimation(StageScene.Duo, "stand", {npc="mirri", bodyState={leashedBy="mirri"}})
		saynn("[say=pc]Hey, uh..[/say]")

		saynn("Before you can finish your sentence, a leash gets clipped to your collar, Mirri's predator eyes flashing brightly.")

		saynn("[say=mirri]You are SO coming with me.[/say]")

		saynn("[say=pc]Hey, chill![/say]")

		saynn("Mirri rushes off somewhere, her paw yanking on the leash, forcing you to follow.")

		addButton("Continue", "See what happens next", "sub_painplay_chains")
	if(state == "sub_painplay_chains"):
		playAnimation(StageScene.HangingDuo, "idle", {pc="pc", npc="mirri", bodyState={naked=true, hard=true}})
		aimCameraAndSetLocName("market_market")
		saynn("The next moments are a complete blur..")

		saynn("Only the cold metal rattle of chains makes you snap out of it. They pull your wrists high above your head. You realize that you're standing on the auction stage, completely naked and exposed.. while Mirri is circling you, eyeing out your {pc.masc} body from every angle..")

		saynn("Each step she takes feels like a countdown, echoing out in your head.")

		saynn("[say=pc]Hey.. you're not planning to sell me, are you? Don't you fucking dare.[/say]")

		saynn("She pauses her step and stays quiet, staring you down with a sadistic smirk. In her paw, she toys with a leather nine-tailed whip, letting the tails brush teasingly against her fingers.")

		saynn("[say=mirri]I might. Scared, fucker~? You better be.[/say]")

		saynn("[say=pc]I'm not..[/say]")

		saynn("Snap! The first crack of the whip cuts through the air, landing square on your back, forcing you to lose your train of thought.")

		saynn("[say=pc]Argh..[/say]")

		saynn("[say=mirri]Shut up, little AlphaCorp slave. Right now you're nothing but my toy to play with. Mine to mark..[/say]")

		saynn("The many whip tails strike your back again, leaving lots of little stinging lines all around. Your body jerks involuntarily..")

		saynn("[say=mirri]Mine to hurt.[/say]")

		saynn("..but there is no time to process the pain before another leash follows, hitting your chest now"+str(" and making your {pc.breasts} jiggle.." if GM.pc.hasBigBreasts() else "")+".. and then another.. and another.. You cry out in shock, your body squirming and making the chains rattle, your {pc.feet} barely touching the ground.")

		saynn("[say=mirri]Mine to own.[/say]")

		if (GM.pc.hasPenis()):
			saynn("The last strike hits your {pc.thick} {pc.masc} thighs, forcing you to close your legs tightly. You feel the blood rushing down to your"+str(" locked" if GM.pc.isWearingChastityCage() else "")+" cock"+str(" and pussy slit" if GM.pc.hasVagina() else "")+"..")

		elif (GM.pc.hasVagina()):
			saynn("The last strike hits your {pc.thick} {pc.masc} thighs, forcing you to close your legs tightly. You feel the blood rushing down to your pussy slit..")

		else:
			saynn("The last strike hits your {pc.thick} {pc.masc} thighs, forcing you to close your legs tightly. You feel the blood rushing down to your crotch..")

		saynn("Mirri steps back and admires the many little marks that the whip has left.")

		saynn("[say=mirri]Work of art..[/say]")

		saynn("[say=pc]Ghh.. Too bad the creator went crazy..[/say]")

		saynn("She giggles.")

		saynn("[say=mirri]Nah. Let me fix your sentence.[/say]")

		saynn("Oh no.. Mirri visibly extends her claws and puts her paw on your neck. Her touch is deceptively light at first.. she trails her claws down your skin, over your shoulders, across your chest, just enough to make your skin tingle..")

		saynn("You can feel her warm breath on your ear..")

		saynn("[say=mirri]Too bad the creator didn't finish it yet..[/say]")

		saynn("Without warning, her claws [color=red]DIG IN[/color] - leaving angry red lines along your back that are quick to begin bleeding. Shit, she isn't playing around.. You gasp, jerking in the chains.. but the metal holds you firmly in roughly one place.")

		saynn("[say=mirri]Crazy is such a subjective word..[/say]")

		saynn("She keeps tearing through your skin, leaving more and more shallow cuts with her claws.. each one adding to the pain..")

		saynn("[say=pc]Ghh.h.. fu-uck.. agh.. C-crazy f-fucking bitch..[/say]")

		saynn("She just keeps going.. her half-feline body brushing against yours, sharing heat.")

		saynn("[say=mirri]To me you are the crazy one.. Thinking you can tame me.. The Legendary Syndicate Pussy Cat.[/say]")

		saynn("Her claws, sharp and unforgiving, trace over the fresh whip marks, digging into your skin enough to make your head spin.")

		saynn("[say=mirri]And you seem to like it just as much as me.[/say]")

		saynn("Her other hand is dragging the tips of the whip between your legs.. dangerously close to your most sensitive areas.."+str(" Your pussy dripping like it's a small fountain by now.." if GM.pc.hasReachableVagina() else "")+""+str(" Your cock hard as a rock, swaying from the constant squirming.." if GM.pc.hasReachablePenis() else "")+""+str(" Your caged up toy is leaking in its little prison.." if GM.pc.isWearingChastityCage() else "")+"")

		saynn("She forces eye contact with her claws and then grins.")

		saynn("[say=mirri]You're pathetic.. but it's adorable how much you try to hold on.. Too bad I'm going to break you anyway.[/say]")

		saynn("[say=pc]F-fuck you M-Mirri..[/say]")

		saynn("Hearing your words.. Mirri suddenly stops and puts the whip away for a second.")

		saynn("[say=pc]What are you..[/say]")

		addButton("Continue", "See what happens next", "sub_painplay_panties")
	if(state == "sub_painplay_panties"):
		playAnimation(StageScene.HangingDuo, "idle", {pc="pc", npc="mirri", npcBodyState={exposedCrotch=true}, bodyState={naked=true, hard=true}})
		saynn("She quickly pulls down her wet panties, exposing the moist pink folds to your eyes. The catgirl then takes her panties.. turns them into a ball of dripping cloth.. and forces it into your mouth.")

		saynn("[say=mirri]I told you to shut up, bitch.[/say]")

		saynn("Before you can even taste her juices, she suddenly sinks her fangs into your shoulder, biting down hard enough to draw a thin line of blood.. Her claws follow, raking across your back, leaving more stinging red marks everywhere.. So many that you arch your back and let out a muffled cry, the panties blocking your mouth..")

		saynn("[say=pc]Arghh-h..[/say]")

		saynn("Gasps keep escaping your lips as the pain overwhelms your senses.")

		saynn("Mirri purrs, hearing and feeling your pain. She licks the blood off from your shoulder and then licks her lips..")

		saynn("[say=mirri]Tasty. How can I sell such a tasty bitch?.. I have feelings for you, you know..[/say]")

		saynn("She stands in front of you, her hand gripping the whip again before raising it high. You feel like you know what is coming next.. but you can't stop yourself, the anticipation building in your bruised chest..")

		saynn("[say=mirri]Biggest one is.. love. I just love to hate you.[/say]")

		saynn("She brings the whip down one final time, leather snapping against your most vulnerable spot..")

		if (GM.pc.hasPenis()):
			saynn("The crack of the whip lands square on your dangling balls, sending a shockwave of pain through your entire body. Your knees buckle and give up, making you dangle off of the chains, your mind blanking as a sudden orgasm rips through you, your {pc.penis} pulsing and spilling {pc.cum} helplessly under her control.")

		elif (GM.pc.hasReachableVagina()):
			saynn("The whip tails strike your pussy exactly, the sharp stings sending a jolt of pain through your entire body. Your knees buckle and give up, making you dangle off of the chains, your mind blanking as a sudden orgasm rips through you, your thighs quivering as your slit releases a torrent of slick wetness down onto the floor..")

		else:
			saynn("The whip tails strike your crotch exactly, the sharp stings sending a jolt of pain through your entire body. Your knees buckle and give up, making you dangle off of the chains, your mind blanking as a sudden orgasm rips through you, your thighs quivering, your body convulsing hard..")

		saynn("You gasp into Mirri's panties, every muscle in your body tightening. The mixture of pain and pleasure blurs together, leaving you breathless in the end, just hanging limply from the chains..")

		saynn("Mirri watches with a satisfied grin, her clawed paw groping her own breasts while she is admiring the mess that she's made of you.")

		saynn("[say=mirri]F-fuck me.. now that's art worth masturbating over.. Not your limp-dick golden abstract shit.[/say]")

		saynn("All the cuts, all the wounds.. they ache.. and bleed. The room is getting and darker.. or.. is that your mind saying goodbye?")

		saynn("All you hear is..")

		saynn("[say=mirri]H-hey.[/say]")

		saynn("..before the dreamworld takes over.")

		addButton("Continue", "See what happens next", "sub_painplay_wakeup")
	if(state == "sub_painplay_wakeup"):
		aimCameraAndSetLocName("market_intro")
		playAnimation(StageScene.Sleeping, "sleep", {pc="pc", bodyState={naked=true}})
		saynn("The world seemed to have.. rotated.. while you were taking a nice quiet nap.")

		saynn("You feel a bed underneath you. One of the most comfiest beds that you have ever felt.. it's like a cloud compared to your usual prison ones..")

		saynn("You open your eyes..  and see yourself.. your body is still bruised and cut.. The signs of the abuse are all there.. but not the blood.")

		saynn("[say=mirri]Oh, you're up. Wanna continue?[/say]")

		saynn("[say=pc]No?[/say]")

		saynn("She chuckles.")

		saynn("[say=mirri]How was it?[/say]")

		saynn("[say=pc]..different.[/say]")

		saynn("Your voice barely above a whisper.")

		saynn("[say=mirri]I knew you would like it.[/say]")

		saynn("Her feline eyes shine sharply.")

		saynn("[say=mirri]Now get the fuck off my bed.[/say]")

		saynn("Right..")

		setFlag("SlaveAuctionModule.customMirriGreeting", "How are the bruises~?")
		addButton("Continue", "See what happens next", "endthescene")
	if(state == "sub_pussy"):
		saynn("[say=pc]Uhm..[/say]")

		saynn("One noise from you is enough to make Mirri perk her ears.")

		saynn("You see her feline eyes.. and take a step back.. while she takes two.. forward.")

		saynn("[say=mirri]Don't make me pull out my gun.[/say]")

		saynn("[say=pc]Hey, no. Bad Mirri.[/say]")

		saynn("She tilts her head, her ass wiggles a bit like she is about to pounce..")

		saynn("[say=mirri]Bad? Being bad is for tame pussies.[/say]")

		saynn("Her tail is wagging. You notice her pulling out the chains..")

		saynn("[say=mirri]I am simply the best.. at being the worst. Get the fuck on the table.[/say]")

		saynn("She swipes everything off her desk, including her laptop.. and then pounces at you!")

		addButton("Continue", "See what happens next", "subpussy_table")
	if(state == "subpussy_table"):
		# (( New anim here (idle above)
		saynn("In the next moment, you already feel the cold metal of the desk biting into your wrists and ankles as the chains lock you down to it. Only your head is sticking out slightly, hanging from its side, giving you some wiggle room but mostly forcing you to look up at the ceiling..")

		saynn("Mirri paces around you, her armored boots clicking ominously against the wooden floor, her blue eyes shining with wicked delight as she watches you struggle. The more you try to escape.. the more you realize that the resistance is futile. Mirri is a slaver after all..")

		saynn("[say=pc]You are one crazy girl.[/say]")

		saynn("[say=mirri]Look at you. I thought you're tough, big and scary~. But now, you're nothing more than my personal furniture.[/say]")

		saynn("She giggles softly, pacing in your view more, flashing her exposed butt and thighs, her paws tugging on her striped panties, causing the outline of her little slit to show more prominently.")

		saynn("[say=mirri]You called this pussy bad, didn't you.. Such a rude fucker you are..[/say]")

		saynn("[say=pc]Hey, listen.. I didn't say that..[/say]")

		saynn("She presses a button on her fancy desk.. that makes it start to go down.. your head getting dangerously close to her inner thigh level with each second.")

		saynn("When that's done, Mirri positions herself just above you, spreading her legs slightly, the fabric of her panties right above your face. You can smell her, the intoxicating scent of her flower is filling your lungs, and it takes everything in you to not squirm.")

		saynn("[say=mirri]Do you like 'em~?[/say]")

		saynn("Your throat tightens as you feel her clawed digits land on your neck, tracing along the skin.")

		saynn("[say=mirri]I can't hear you..[/say]")

		saynn("Your throat tightens even more as she squeezes it..")

		saynn("[say=pc]I.. gh.. y-yes, sure. Great panties, girl.[/say]")

		saynn("[say=mirri]Make love, not war, is that what they say? You know what happens when you combine them?[/say]")

		saynn("She sways her butt teasingly, making the cloth shift around, creating folds around her natural folds.")

		saynn("[say=pc]Uh.. I don't think I do.[/say]")

		saynn("[say=mirri]Torture~. I'm gonna torture you, {pc.name}. I'm gonna torture you like no one else has ever done.[/say]")

		saynn("Her digits sneak under your collar, eliminating the small amount of space that you had there. Looking at her pussy behind her panties without being able to touch it could be considered cruel.. but it's not exactly a torture, is it..")

		saynn("[say=pc]You're.. gonna sit on my face? That's the torture?[/say]")

		saynn("She gets a better grip.. You feel like something big is about to happen..")

		saynn("[say=mirri]Ever heard of.. waterboarding?[/say]")

		addButton("Continue", "See what happens next", "subpussy_start")
	if(state == "subpussy_start"):
		# (( New anim here (sit-rub)
		saynn("You barely have time to react before Mirri suddenly grabs you by the collar and pulls on it while lowering herself and pressing her crotch hard against your face. Her heat is radiating through the fabric as she grinds her pussy against your face without warning.")

		saynn("[say=mirri]This is pussyboarding! I will make your sorry ass drown in my cunt.[/say]")

		saynn("She growls, her voice dark and intimidating. Her striped panties begin to get wet with arousal.. the scent of her juices is all that you can breathe in.. the air is in a very short supply now.")

		saynn("[say=pc]Khh..[/say]")

		saynn("[say=mirri]You're going to lap up every drop that comes off my pussy like a good puppy bitch.[/say]")

		saynn("She doesn't give you a choice exactly, her hips moving in aggressive, tight circles as she rubs herself all over your face, smearing her wetness across your lips and chin. The slick fabric clings to your mouth, pressing against you as she grinds harder, her thighs trapping your head, forcing you into her heat. You feel yourself suffocating..")

		saynn("[say=mirri]What? You're gonna drown? Or you're gonna open your fucking mouth already.[/say]")

		saynn("Your body obeys before your mind can catch up, your lips parting as her soaked panties push into your mouth. The taste of her pussy juices spreads across your tongue, salty and strong. Mirror moans softly as she feels you struggling. Her hips are speeding up, grinding becoming rougher, more desperate, as she forces her dripping cunt onto your face.")

		saynn("[say=mirri]That's right. Nothing but a pussy licker..[/say]")

		saynn("Her words sting.. but her body presses harder, grinding her wet panties into your mouth, the fabric soaked through with her juices. Her hips are bucking as she loses herself in the sensations, her pussy practically leaking into your mouth.")

		saynn("[say=mirri]Pathetic little bitch.. I love using you.. like a fucking rag.. drowning in my cunt.[/say]")

		saynn("Your head spins from the lack of air.. her scent, her taste.. everything about her is overwhelming your senses. You feel yourself losing the last bits of control, submitting fully to her as she rides your face with reckless abandon..")

		addButton("Continue", "See what happens next", "subpussy_breather")
	if(state == "subpussy_breather"):
		# (( New anim here (idle, no panties)
		saynn("Just when you think you might pass out.. Mirri finally pulls back, gasping softly as she steps away, her breathing almost as heavy as yours. You're gasping for air, your face soaked with her juices, the taste of her still thick on your tongue.")

		saynn("[say=mirri]Hah.. Think I'm done yet? I'm not one of those soft bitches.[/say]")

		saynn("She hooks her clawed thumbs into the waistband of her striped panties and pulls them down, revealing her soaked pink blushing pussy. Her lips are shining, drenched with her juices.")

		saynn("Mirri smirks down at you, her eyes have that sadistic light in them..")

		saynn("[say=mirri]Look at this..[/say]")

		saynn("She purrs, spreading her legs slightly, her wet pussy on full display with multiple slick ropes of juices hanging between the thighs.")

		saynn("[say=mirri]I love you.. See how wet you made me, you filthy little slut?[/say]")

		saynn("You can't tear your eyes away.. You feel like you will do anything for her by this point..")

		addButton("Continue", "See what happens next..", "subpussy_masturbate")
	if(state == "subpussy_masturbate"):
		# (( New anim (sit + masturbate)
		saynn("Mirri steps forward again, positioning herself over your face once more, her naked slit hovering inches above your mouth.")

		saynn("[say=mirri]I want to feel you choke on my juices.. Drown in me, you fuck..[/say]")

		saynn("And with that, she sits on your face, her wet hot pussy resting on your face, covering your mouth. As soon as that happens, you begin polishing her folds with your tongue, gathering all the juices that you can get to.. before swallowing them all.")

		saynn("[say=mirri]Ah..[/say]")

		saynn("She doesn't grind your face as much anymore.. just using your face as a nice firm seat, her slick folds spreading across your lips, the taste of her raw arousal flooding your taste sensors.")

		saynn("[say=mirri]Faster, bitch, faster.. I love you, {pc.name}.. I love you so fucking much.. S-stupid sext-toy..[/say]")

		saynn("While you're busy eating her out, her clawed digits find her clit and proceed to rub it fast. Passionate bright moans begin to fill the dark room, her hips bucking again, her thigh muscles tensing up..")

		saynn("The more you lick her up.. the more she teases her clit.. the deeper her breathing becomes, her voice breaking as she loses herself in the moment, squirming above you like a woman possessed.")

		saynn("[say=mirri]Swallow it all.. Every drop, you useless fuck.. I want to love you.. feel you.. choking on my cum.[/say]")

		saynn("Suddenly, her thighs clamp around your head, squeezing your head tightly.")

		saynn("[say=mirri]AHhh-h-![/say]")

		saynn("Mirri throws her head back as her juices are gushing into your mouth in a hot, overwhelming flood. You lose your ability to breathe again, her wetness is coating your lips and chin as she pushes you deeper into her cunt.")

		saynn("She growls, her voice breathless as she forces you to swallow every drop of her squirt. Her body is shaking the feral force of her release. You have no choice but to swallow, her hips moving in slow, trembling circles.")

		addButton("Continue", "See what happens next", "subpussy_after")
	if(state == "subpussy_after"):
		# ((New anim idle
		saynn("Finally, after what feels like an eternity, she pulls back, panting heavily as she stares down at you with a satisfied, wicked grin. Her pussy still drips juices onto her thighs..")

		saynn("[say=mirri]Such a good little toy. Proving it again and again that it was worth it to keep you.[/say]")

		saynn("She purrs, her voice soft but still dripping with that cruel satisfaction.")

		saynn("[say=mirri]Let's get you off my fucking desk.[/say]")

		setFlag("SlaveAuctionModule.customMirriGreeting", "You liked my desk, didn't you? It's a nice sturdy desk.")
		addButton("Continue", "See what happens next", "endthescene")
		addButtonWithChecks("Extra humiliation", "Ask her to pee on you..", "subpussy_pee", [], [[ButtonChecks.ContentEnabled, ContentType.Watersports]])
	if(state == "subpussy_pee"):
		# (( New anim sit no panties
		saynn("You find yourself craving more.. craving extra humiliation.")

		saynn("Before she unchains your wrists and ankles.. you decide to stop her.")

		saynn("[say=pc]Mirri.. I want you..[/say]")

		saynn("[say=mirri]I noticed~.[/say]")

		saynn("[say=pc]No. I want you to.. pee on me.[/say]")

		saynn("Her eyes narrow, sharp as blades, as she stares at you. For a moment, there is silence, just the sound of your ragged breathing and the distance hum of random machinery in the background. Then.. Mirri bursts into laughter, throwing her head back, her fangs shining in the dim light.")

		saynn("[say=mirri]AHAHA. You.. what?[/say]")

		saynn("She steps forward, her boots clacking against the floor as she looms over, her hips swaying provocatively. Her predator eyes lock onto yours. She leans in even lower.. down to your level, her lips bear your ear.. her breath hot against your skin as she whispers, her voice dripping with mockery.")

		saynn("[say=mirri]You're.. that.. pathetic, huh? Really? You are lower than a worm.. You're filth.[/say]")

		saynn("Her words cut deep.. and yet.. there is a twisted thrill in all of this.. Your face blushes red.. her juices are still there on your face.. and yet, you're asking for more. You nod.")

		saynn("[say=pc]Yes. Please, Mirri..[/say]")

		saynn("She stands up and stares at you for a moment, a mixture of disgust and delight swirling in her eyes. Slowly, a smile creeps back onto her lips, the corners of her lips curling up.")

		saynn("[say=mirri]Fine. You want to be my toilet that badly? I could use one. But I ain't pissing on my desk, no fucking way. You understand what I am saying?[/say]")

		saynn("You're going to have to.. drink it all.. Every. Last. Drop..")

		saynn("You nod.. Without another word, she stands over your face again, her crotch hovering inches above your face, her legs spread wide as she positions herself just right.")

		saynn("Mirri bites her lips while looking down at you, her digits teasing her clit a little more. Her juicy pink pussy is up in your face again in its full glory..")

		saynn("[say=mirri]Get ready, pathetic little toy.[/say]")

		saynn("Seconds feel like hours.. You can feel the muscles of her crotch tensing up.. again and again..")

		saynn("You hear her soft grunt.. and then it happens. A sudden, warm stream of piss sprays down onto your face. But, before the mess gets too bad, you clamp your lips around her pisshole and let her start to flood your mouth with her golden juice.")

		saynn("[say=mirri]Drink it. Swallow. Now![/say]")

		saynn("The taste is awful. it's gross.. hot.. bitter.. acrid.. it's simply the worst tasting fluid you have ever tasted. And yet, you force yourself to swallow, gulping down her piss fast.. and then again and again.")

		saynn("Mirri watches, her smirk shining brightly as she keeps the steady yellow stream flowing, the warm liquid going straight into your mouth..")

		saynn("[say=mirri]Ah.. Feels nice~. This is what you wanted, isn't it? You're so pathetic, drinking up my piss like a thirsty little slut. Are you proud of yourself?.. Because I'm proud of you, love~.[/say]")

		saynn("You choke on her piss, your body trembling.. and yet, you submit entirely to her cruel methods. You keep swallowing, drinking her piss, feeling it fill your mouth again and again. The humiliation.. is intoxicating.")

		saynn("[say=mirri]My favorite little toy.[/say]")

		saynn("Her golden stream finally begins to slow down.. making it able for you to catch a break. After she is done, Mirri just stands there, towering over you, her eyes shining brightly.")

		saynn("[say=mirri]Swallowed every drop, huh? Of course you did. You're a good pussy licker and you're an even better toilet~. Did you like it?[/say]")

		saynn("[say=pc]T-thank you, Mirri.. Y-yes.. This is great.. you are great.[/say]")

		saynn("She smiles, a little blush tints her cheeks red.")

		saynn("[say=mirri]Well thank you, kitty likes hearing nice words. I need my desk though. So let's get you the fuck down.[/say]")

		setFlag("SlaveAuctionModule.customMirriGreeting", "I ain't gonna tongue with you for some time. Not after what you begged me to do last time.")
		addButton("Continue", "See what happens next", "endthescene")
	if(state == "sub_walkies"):
		saynn("You're feeling a bit.. subby.. but you make sure not to show it. You put on a stone-cold face expression and try to be as motionless as possible in front of Mirri.")

		saynn("She looks at you.. and raises a brow. Fuck. Where do you look? At her! Right. You look her into the eyes.")

		saynn("[say=mirri]Oh? My lovely little sextoy is feeling subby?[/say]")

		saynn("You don't even know anymore.. Maybe it was the way you glanced at her.. or the way you hesitated, just a split second longer than usual.")

		saynn("[say=pc]No![/say]")

		saynn("Too late, Mirri's eyes have already lit up, a dangerous, predatory glint flashing through them as she tilts her head, her lips curving into a smirk.")

		saynn("You step back, she steps forward. You hear purring.. dark purring.. purring that gradually crossfades into growling.")

		saynn("[say=pc]Wait, Mirri, wait! Let's not rush to action and just talk about it![/say]")

		saynn("[say=mirri]Do you love me?[/say]")

		saynn("One heck of a question to ask in this situation.")

		saynn("[say=pc]Of course, baby.[/say]")

		saynn("[say=mirri]Shh.. Fine. I won't do anything.[/say]")

		saynn("She suddenly stops dead in her tracks. You can only phew.. It feels like you have defused a bomb.")

		saynn("[say=pc]..crazy..[/say]")

		saynn("[say=mirri]But now I will![/say]")

		saynn("Oh shit.")

		addButton("Continue", "See what happens next", "subwalkies_suit")
	if(state == "subwalkies_suit"):
		playAnimation(StageScene.PuppyDuo, "stand", {pc="mirri", npcBodyState={naked=true, leashedBy="mirri", hard=true}})
		saynn("Before you can react, Mirri tackles you and drags you off to the special wardrobe that she has. Your heart sinks when you see what kind of restraints she pulls out.")

		saynn("[say=mirri]Hold still, you stupid mutt! Don't make me grab the buttplug tail![/say]")

		saynn("She forces your knees and elbow into special leather caps that she then tightens using straps and locks with small padlocks, forcing your wrists to your shoulders and your ankles to your thighs.. making you stand on all fours.")

		saynn("[say=mirri]PERFECT![/say]")

		saynn("[say=pc]Mirri, fucking wait, I-..[/say]")

		saynn("She snaps the leash onto your collar with a sharp click, cutting you off. Her eyes narrow.")

		saynn("[say=mirri]Pups don't talk.[/say]")

		saynn("She tugs on the leash, enough to make you jerk your head up.")

		saynn("[say=mirri]A pup is not gonna say a word unless I let them. And you? You're nothing but a little bitch right now![/say]")

		saynn("You open your mouth to argue.. to say something.. anything. But she is quick to crouch and grab you by the muzzles, forcing your lips shut. Her face is inches away from yours, her hot breath tickling your cheek.")

		saynn("[say=mirri]I said.. Shut the fuck up. Do I really need to remind you how a real bitch behaves?[/say]")

		saynn("She gets up and takes a few steps back, as much as the leash allows, her eyes never leaving you.")

		saynn("[say=mirri]Puppy needs to learn.[/say]")

		saynn("You try to speak up again but she just yanks the leash sharply, your throat getting extremely tight as the collar digs in.")

		saynn("[say=mirri]Stop it, you fuck. Pups don't use words. They obey.[/say]")

		saynn("Mirri leans down and gives the leash a soft tug, her voice softening up and becoming all sweet.")

		saynn("[say=mirri]Now, be a good {pc.boy} and give Mirri your paw.[/say]")

		addButton("Give paw", "Obey her words", "subwalkies_paw")
		addButton("Refuse", "You don't have that many spare paws to just hand them to others!", "subwalkies_refusepaw")
	if(state == "subwalkies_paw"):
		playAnimation(StageScene.PuppyDuo, "stand", {pc="mirri", npcAction="paw", npcBodyState={naked=true, leashedBy="mirri", hard=true}})
		saynn("You know how it's gonna end if you don't obey.. So might as well.")

		saynn("You lower yourself.. before awkwardly pushing your top part of the body off the floor in order to sit down.")

		saynn("Mirri is crouching near, her eyes judging you.")

		saynn("[say=mirri]Mhm?[/say]")

		saynn("With nothing better to do, you raise your.. paw.. and offer it to Mirri.")

		saynn("[say=mirri]Yay![/say]")

		saynn("She shakes it like crazy and then gives you lots of headpats.")

		saynn("[say=mirri]Good {pc.boy}! Such a good fucking {pc.boy}! See, you can obey when you want to.[/say]")

		saynn("Might as well commit..")

		saynn("[say=pc]A-..woof.. awoof..[/say]")

		saynn("More scritches and pats come your way, Mirri rubs your face and gives you a small kiss.")

		saynn("[say=mirri]Lovely. Now let's go explore your stupid station. Walkies time![/say]")

		saynn("Your heart sinks..")

		saynn("[say=pc]Uh..[/say]")

		saynn("Mirri raises a brow.")

		saynn("[say=mirri]What was that? You don't want walkies?[/say]")

		saynn("[say=pc]Uh.. um.. woof..[/say]")

		saynn("[say=mirri]I knew you would![/say]")

		saynn("She opens a blue glowing rift.. and steps through, her hand tugging on the leash.")

		saynn("Welp..")

		addButton("Continue", "See what happens next", "subwalkies_tp")
	if(state == "subwalkies_refusepaw"):
		playAnimation(StageScene.PuppyDuo, "stand", {pc="mirri", npcAction="sad", npcBodyState={naked=true, leashedBy="mirri", hard=true}})
		saynn("You hesitate, still trying to maintain at least some shred of dignity. Your muscles are tensing, resisting the degrading command.")

		saynn("Mirri sees that, her expression shifting from amusement to cold frustration. She steps closer, her armored boot finding your back and resting on it. Her fingers wrap around the stunbaton that is hanging from her leg.")

		saynn("[say=mirri]You're going to be a stubborn little bitch?[/say]")

		saynn("She growls.. but you don't budge.")

		saynn("With a swift motion, she flicks the stunbaton to life, the crackling sound of electricity filling the air. She brings it closer and closer.. just inches away from your face now. Her eyes are locked on yours.")

		saynn("[say=mirri]Last chance, whore. Give paw.[/say]")

		saynn("You swallow hard, fear making all your insides shrink.. but you still can't bring yourself to comply.")

		saynn("Mirri's eyes darken. She clicks her tongue in disapproval. Then, without warning, she presses the weapon against your arm.")

		saynn("[say=pc]ARgh![/say]")

		saynn("The jolts of electricity shoot through your body, sharp and painful, your muscles spasming uncontrollably for a brief moment, making you kiss and hug the wooden floor with all your paws.")

		saynn("[say=mirri]Bad pup. But, you know.. there is a good side to this.[/say]")

		saynn("She smiles, putting the baton away.")

		saynn("[say=mirri]I can do this all day.[/say]")

		saynn("She crouches down near you.")

		if (GM.pc.hasPenis()):
			saynn("[say=mirri]Maybe next time I will press it against something else.. Like your cock. Bet you'd be a real obedient little puppy then, won't you?[/say]")

		elif (GM.pc.hasVagina()):
			saynn("[say=mirri]Maybe next time I will press it against something else.. Like your cunt. Bet you'd be a real obedient little puppy then, won't you?[/say]")

		else:
			saynn("[say=mirri]Maybe next time I will press it against something else.. Like your ass. Bet you'd be a real obedient little puppy then, won't you?[/say]")

		saynn("Your heart races.. the humiliation and fear mix in your stomach..")

		saynn("Slowly, reluctantly, you raise your paw as best as you can.")

		saynn("[say=mirri]Good {pc.boy}. But we're over that now. Let's go for some walkies, I know just the spot![/say]")

		saynn("You get a strong feeling that you know exactly what she means by the.. spot.")

		saynn("Mirri opens the blue glowing rift and invites you to crawl through.. you see your cell through it..")

		saynn("[say=pc]Woo-oof..[/say]")

		saynn("Somehow that noise that came out on its own..")

		saynn("[say=mirri]What? It will be fun![/say]")

		saynn("She yanks you through..")

		addButton("Continue", "See what happens next", "subwalkies_tp")
	if(state == "subwalkies_tp"):
		aimCameraAndSetLocName("cellblock_corridor_middle")
		playAnimation(StageScene.PuppyDuo, "walk", {pc="mirri", npcAction="walk", npcBodyState={naked=true, leashedBy="mirri", hard=true}, flipNPC=true})
		saynn("Mirri tugs you through the corridors of the prison. She looks around a lot, checking out the architecture of this place.. the place that has become a new home for you.")

		saynn("[say=mirri]I don't know what's more stupid, concrete and metal or wood and metal.[/say]")

		saynn("The many inmates that you walk past stop just to check out the fancy leashed pup that is being led by a sexy pantsless catgirl. You two sure are standing out..")

		saynn("[say=mirri]Yes, you all can pat. Just be careful, {pc.he} might bite.[/say]")

		addButton("Continue", "See what happens next", "subwalkies_moreexplore")
	if(state == "subwalkies_moreexplore"):
		aimCameraAndSetLocName("main_punishment_spot")
		playAnimation(StageScene.PuppyDuo, "walk", {pc="mirri", npcAction="walk", npcBodyState={naked=true, leashedBy="mirri", hard=true}, flipNPC=true})
		saynn("Mirri's grin never goes away as she leads you through the prison corridors, her naked half-furry hips swaying confidently, her feline tail playfully flicking behind her as she tugs you along, her striped panties proudly presented to the eyes of others.")

		saynn("You encounter stairs.. your true nemesis. You just about manage to pull your paws onto the first step.. but the next ones Mirri has to help you with, janking you up by the leash.")

		saynn("[say=mirri]Such a clumsy animal, I love you.[/say]")

		saynn("As you walk past the punishment area, Mirri takes note of the many pillories.. with some of them being used.")

		saynn("[say=mirri]Oh wow. Maybe your stupid little prison has some flair to it. I'm sure the captain stole this idea from one of our prisons. You guys steal everything that isn't bolted down.[/say]")

		saynn("She sees the yard.")

		saynn("[say=mirri]Oh, perfect. Let's go play on some grass![/say]")

		addButton("Continue", "See what happens next", "subwalkies_nova")
	if(state == "subwalkies_nova"):
		addCharacter("nova")
		playAnimation(StageScene.Duo, "stand", {pc="mirri", npc="nova"})
		aimCameraAndSetLocName("yard_northCorridor")
		saynn("Mirri follows the stone pathways while you are touching the grass with your new puppy paws..")

		saynn("But as you turn around a corner, you suddenly run into another guard.")

		saynn("[say=nova]Huh. Oh wow, such an adorable pup~.[/say]")

		saynn("[say=mirri]Takes one to know one.[/say]")

		saynn("A husky blocks your path. Her attention was glued to you.. but then the naked butt stole it.")

		saynn("[say=nova]Interesting armor.. configuration. You're one of the newbies? Don't remember seeing you around. What's your name?[/say]")

		saynn("Nova is trying to make out the badge. The tension is slowly rising..")

		saynn("[say=mirri]Hey, well, you're not running the default kit either, are you?[/say]")

		saynn("Nova looks into her wrist computer that is built into her armor.")

		saynn("[say=nova]You didn't answer my..[/say]")

		saynn("Mirri blocks the screen with her paw, blocking it for Nova. Mirri goes full out, her tail wagging.")

		saynn("[say=mirri]I recognize that. That is Syndicate tech. Should I file a report on your ass? Makes you look like some kind of spy, you know.[/say]")

		saynn("Nova starts reaching for her stun baton.")

		saynn("[say=nova]What is. Your. Name.[/say]")

		saynn("The bluff clearly didn't work.")

		saynn("[say=mirri]It's.. Kirri. Happy, stupid mutt?[/say]")

		saynn("Nova squints and wraps her digits around the handle of her weapon.")

		saynn("[say=nova]Your badge clearly says Officer Lyra.[/say]")

		saynn("[say=mirri]That is my.. that's my other name. And yes, I'm new around here. Don't be stupid.[/say]")

		saynn("Mirri's bullshit clearly isn't working. Her own paw begins to reach.. it begins to reach for her gun. You really don't like where this is going now..")

		saynn("[say=mirri]You know, puppy.. I am just giving my personal little bitch a walk. I think we should just walk past each other and pretend that this little misunderstanding didn't happen.[/say]")

		saynn("[say=nova]Oh yeah? Try me.[/say]")

		saynn("Her paw reaches further..")

		saynn("[say=mirri]I will. You are making a huge mistake. This mistake might just cost you.. everything.. you know?[/say]")

		saynn("[say=nova]I think I'm fixing a mistake right now. You and I are gonna go pay the warden a visit and see what they have to say.[/say]")

		saynn("An unstoppable force has met an immovable object.. This is not how you saw your walkies going.")

		saynn("Mirri is giving you a sneaky stern look.")

		addButton("Do nothing", "Just let it happen", "subwalkies_donothing")
		addButton("Bark!", "Be a puppy", "subwalkies_barksavepuppy")
	if(state == "subwalkies_donothing"):
		playAnimation(StageScene.Solo, "defeat", {pc="nova"})
		removeCharacter("mirri")
		GM.pc.setLocation("yard_northCorridor")
		saynn("You decide to see how this will play out.")

		saynn("Mirri frowns at you.. really hard. But you just shrug with your shoulders.")

		setFlag("SlaveAuctionModule.customMirriGreeting", "You fuck. You almost made me blow my cover, you stupid bitch. I would have easily made 6 new holes in that guard's face if I wanted to. Ugh, fuck you. I could destroy your whole stupid prison at any point, you know!? I need to calm down, bring me a slave to sell or something.")
		saynn("[say=nova]So? What is it gonna.. AGH![/say]")

		saynn("[say=mirri]Shut up.[/say]")

		saynn("A bright flash blinds you.. Nova hits the floor in an instant.")

		saynn("The last thing you see is Mirri taking off in a random direction.. before disappearing into thin air.. like a ghost.")

		saynn("[say=nova]Fuck.. My eyes. What the fuck what that.[/say]")

		saynn("As you recover, you notice Nova.. on her knees.. seemingly fine.")

		saynn("Head is still buzzing like hell.")

		saynn("[say=nova]Shit.. Where is that bitch? Did she disappear or something?[/say]")

		saynn("Nova looks at you.")

		saynn("[say=nova]Who is that girl?[/say]")

		saynn("Probably best to play it dumb. You crawl up to the husky and nuzzle her face.")

		saynn("[say=pc]W-woof..[/say]")

		saynn("[say=nova]Adorable. Oh well, newbies these days, holy shit, they seriously need to learn their place.[/say]")

		saynn("Nova gives you scritches and pats.")

		saynn("[say=nova]You want more walkies?[/say]")

		saynn("You shake your head.")

		saynn("[say=nova]Aww. If you do, just hit me up, I love adorable puppies~. Let's get you out.[/say]")

		saynn("Nova helps you to remove the bitchsuit.")

		saynn("[say=nova]Don't get into trouble now. Or do~.[/say]")

		addButton("Continue", "See what happens next", "endthescene")
	if(state == "subwalkies_barksavepuppy"):
		playAnimation(StageScene.PuppySexOral, "tease", {pc="nova", npc="pc", npcBodyState={naked=true, hard=true}})
		saynn("Before the things can escalate any further, you decide to get your paws in this conflict. Without thinking much, you let out a loud cute bark, breaking the tension.")

		saynn("[say=pc]WOOF![/say]")

		saynn("Second bark comes soon after.. and then a few more. You wiggle in your restraints like an excited puppy.")

		saynn("Nova's expression softens, she stops gripping the handle of her weapon and pats you instead.")

		saynn("[say=nova]Awww. This hecking pup is so adorable, I can't.[/say]")

		saynn("Mirri raises a brow.. but stops reaching for her gun. Her smirk returns.")

		saynn("[say=mirri]Yeah, {pc.he} needed some walkies.[/say]")

		saynn("[say=nova]Make sure to treat {pc.him} well~.[/say]")

		saynn("[say=mirri]Oh, of course. That bitch is gonna get my personal treatment~.[/say]")

		saynn("You keep up the act.. nuzzling the hand that pats you and barking enthusiastically.")

		saynn("[say=nova]But yeah. Make sure you report to the warden later, newbie.[/say]")

		saynn("[say=mirri]Of course. I will be sure to do that. It's not like I can just disappear from this place.[/say]")

		saynn("Nova nods softly.")

		saynn("[say=nova]Yeah-h-h.. Stay cute, puppy.[/say]")

		saynn("The guard gives you both one last glance before getting up.. and continuing her patrol.")

		addButton("Continue", "See what happens next", "subwalkies_aftersave")
	if(state == "subwalkies_aftersave"):
		playAnimation(StageScene.PuppyDuo, "stand", {pc="mirri", npcBodyState={naked=true, leashedBy="mirri", hard=true}})
		removeCharacter("nova")
		saynn("As soon as Nova is gone, Mirri lets out a soft, relieved laugh.")

		saynn("[say=mirri]Huh. That went better than expected.[/say]")

		saynn("She leans down and boops you on the nose.")

		saynn("[say=mirri]Love you, puppy, good idea to trick that bitch. I think my lovely bitch deserves something as a reward.. something big.[/say]")

		saynn("Something big.. She tugs on the leash, inviting you to follow back to your cell..")

		addButton("Follow", "See what she will do with you next..", "subpuppy_back")
	if(state == "subpuppy_back"):
		aimCameraAndSetLocName("market_intro")
		saynn("As pushes you into the rift that her fancy toys have created.. you end back in her room.")

		saynn("Mirri's smirk widens as she jogs to her special wardrobe, her eyes glowing in the dimly-lit space.. Her tail flicks excitedly as she rummages through her wide collection of toys.")

		saynn("[say=mirri]You know, puppy..[/say]")

		saynn("She purrs.. before pulling out a canine-shaped strapon dildo with a thick knot at the base.")

		saynn("[say=mirri]I think it's time I breed my bitch~.[/say]")

		addButton("Continue", "See what happens next", "subpuppy_putonstrapon")
	if(state == "subpuppy_putonstrapon"):
		playAnimation(StageScene.PuppySexOral, "tease", {pc="mirri", npc="pc", npcBodyState={naked=true, hard=true, leashedBy="mirri"}, bodyState={exposedCrotch=true}})
		saynn("Your heart begins to pound as she straps the harness around her waist, the silicone length now swaying menacingly between her legs, covering up her kitty. Obviously it has that bulbous knot at the base.. what else would Mirri use..")

		saynn("[say=pc]W-woof..[/say]")

		saynn("She snaps her fingers and points to the floor in front of her.")

		saynn("[say=mirri]Hah. I knew you would like it. Now come here like a good bitch.[/say]")

		saynn("You crawl over, still wearing the pieces of that bitchsuit.. Mirri crouches and grabs a fistful of your hair, forcing your face toward the toy, rubbing the tip of the dildo against your closed lips.")

		saynn("[say=mirri]I can always go in dry if you want.[/say]")

		saynn("Looks like saying no now is not an option..")

		addButton("Suck", "Get that toy wet", "subpuppy_suck")
	if(state == "subpuppy_suck"):
		playAnimation(StageScene.PuppySexOral, "sex", {pc="mirri", npc="pc", npcBodyState={naked=true, hard=true, leashedBy="mirri"}, bodyState={exposedCrotch=true}})
		saynn("Slowly, you part your lips, feeling the cool silicone press against your tongue. Mirri isn't exactly the soft kind, instantly pushing more of her new length deeper into your mouth, grinning wickedly as the pointy tip triggers your gag reflex.")

		saynn("[say=mirri]Good puppy. Such a lovely puppy.[/say]")

		saynn("She keeps thrusting the dildo in and out of your mouth with no mercy, making you take every inch apart from the knot.. while your tongue works on polishing it, giving the silicone that wet shiny appearance.")

		saynn("[say=mirri]Such a whore too, wow. Your chocking is making me so fucking wet.[/say]")

		saynn("After a few degrading minutes of forcing you to suck and slurp on the dildo, she pulls out..")

		addButton("Present ass", "Mirri will peg you", "subpuppy_ass")
		addButtonWithChecks("Present pussy", "Mirri will fuck your pussy", "subpuppy_pussy", [], [[ButtonChecks.HasReachableVagina]])
	if(state == "subpuppy_ass"):
		playAnimation(StageScene.PuppySexAllFours, "sex", {pc="mirri", npc="pc", bodyState={exposedCrotch=true}, npcBodyState={naked=true, hard=true}})
		saynn("Mirri jumps behind you and grabs your hips, quickly aligning herself against your exposed {pc.analStretch} tailhole.")

		saynn("Without warning, she pushes the dildo inside, making you groan as it stretches you open, your anal star opening wide.")

		saynn("[say=mirri]You feel that? Gonna breed your ass.[/say]")

		saynn("She purrs while your inner walls grip the wet toy, your fuckhole clenching around the sudden intruding object.")

		saynn("[say=pc]W..woo-of..[/say]")

		saynn("She giggles, enjoying your struggle, her hands gripping your ass tightly as she thrusts deeper, the knot already teasing your rim.")

		saynn("[say=mirri]That's what a good bitch gets.[/say]")

		if (GM.pc.hasPenis()):
			saynn("Each thrust is rough and deliberate, the thick toy pressing against your prostate, sending waves of pleasure through your body. You try to stay quiet.. but the sensation is overwhelming, your {pc.penis} stiffens and throbs, leaking pre onto the floor as Mirri rails your ass, the knot teasing but never quite pushing in all the way.")

		elif (GM.pc.hasVagina()):
			saynn("Each thrust is rough and deliberate, the thick toy subtly massaging your pleasure spot through the inner wall, sending waves of pleasure through your body. You try to stay quiet.. but the sensation is overwhelming, your pussy dripping juices profusely as Mirri rails your ass, the knot teasing but never quite pushing in all the way.")

		else:
			saynn("Each thrust is rough and deliberate, the thick toy pressing against your pleasure spot, sending waves of pleasure through your body. You try to stay quiet.. but the sensation is overwhelming, various lewd noises escape you as Mirri rails your ass, the knot teasing but never quite pushing in all the way.")

		addButton("Continue", "See what happens next", "subpuppy_ass_fast")
	if(state == "subpuppy_ass_fast"):
		playAnimation(StageScene.PuppySexAllFours, "fast", {pc="mirri", npc="pc", bodyState={exposedCrotch=true}, npcBodyState={naked=true, hard=true}, npcCum=true})
		saynn("[say=mirri]You love this, don't you?[/say]")

		saynn("Mirri purrs louder, her hips slamming against you harder, her breath hot against your back as you rock back and forth on your paws.")

		saynn("[say=mirri]My little puppy, begging to get knotted.[/say]")

		if (GM.pc.hasPenis()):
			saynn("You're panting now, the intense pleasure building with every thrust. The way the dildo rubs against your prostate makes it impossible to hold back. Your cock pulses"+str(" in its little cage" if GM.pc.isWearingChastityCage() else "")+", and before you can stop it, you cum hard, ropes of thick {pc.cum} shooting out, splattering onto the cold wooden floor beneath you. Your whole body shudders as you're forced to ride the waves of your orgasm, every second is pure bliss, elevated by the relentless thrusting in your ass.")

		elif (GM.pc.hasVagina()):
			saynn("You're panting now, the intense pleasure building with every thrust. The way the fat dildo rubs your g-spot through the inner wall makes it impossible to hold back. Your {pc.vaginaStretch} pussy pulses, and before you can stop it, you cum hard, a shower of your girlcum shooting out, splattering onto the cold wooden floor beneath you. Your whole body shudders as you're forced to ride the waves of your orgasm, every second is pure bliss, elevated by the relentless thrusting in your ass.")

		else:
			saynn("You're panting now, the intense pleasure building with every thrust. The way the dildo rubs against your sensitive spots makes it impossible to hold back. Your tailhole pulses, and before you can stop it, you cum hard. Your whole body shudders as you're forced to ride the waves of your orgasm, every second is pure bliss, elevated by the relentless thrusting in your ass.")

		saynn("Mirri's giggling echoes in your ears as she notices your peak.")

		saynn("[say=mirri]Already, puppy? How pathetic. I'm not even..[/say]")

		addButton("Continue", "See what happens next", "subpuppy_ass_knot")
	if(state == "subpuppy_ass_knot"):
		playAnimation(StageScene.PuppySexAllFours, "inside", {pc="mirri", npc="pc", bodyState={exposedCrotch=true}, npcBodyState={naked=true, hard=true}, npcCum=true})
		if (GM.pc.hasPenis()):
			saynn("With one final push, she forces the whole length of the toy deep into your ass, stretching you to your limits, the knot locking inside you. The pressure sends you over the edge once more, your cock pulsing as another dribble of your seed leaks from your overstimulated body, coupled with a passionate moan.")

		elif (GM.pc.hasVagina()):
			saynn("With one final push, she forces the whole length of the toy deep into your ass, stretching you to your limits, the knot locking inside you. The pressure sends you over the edge once more, your pussy clenching as another dribble of your girlcum leaks from your overstimulated body, coupled with a passionate moan.")

		else:
			saynn("With one final push, she forces the whole length of the toy deep into your ass, stretching you to your limits, the knot locking inside you. The pressure sends you over the edge once more, your ass clenching hard.")

		saynn("[say=mirri]There we go. Bred like the good bitch that you are.[/say]")

		saynn("She gives a few more slow, grinding thrusts, enjoying every second of your body trembling beneath her.")

		saynn("[say=mirri]Now give me my toy back, slut~.[/say]")

		saynn("Finally, after what feels like an eternity, she pulls out, the knot popping free with a wet noise.")

		setFlag("SlaveAuctionModule.customMirriGreeting", "Hello, lovely pup. How is your ass, still sore I hope?")
		addButton("Continue", "See what happens next", "subpuppy_after_sex")
	if(state == "subpuppy_pussy"):
		playAnimation(StageScene.PuppySexAllFours, "sex", {pc="mirri", npc="pc", bodyState={exposedCrotch=true}, npcBodyState={naked=true, hard=true}})
		saynn("Mirri jumps behind you and grabs your hips, quickly aligning herself against your exposed {pc.pussyStretch} pussy.")

		saynn("Without warning, she pushes the dildo inside, making you groan as it stretches you open, your needy flower opening wide.")

		saynn("[say=mirri]You feel that? Gonna breed you.[/say]")

		saynn("She purrs while your inner walls grip the wet toy, your fuckhole clenching around the sudden intruding object.")

		saynn("[say=pc]W..woo-of..[/say]")

		saynn("She giggles, enjoying your struggle, her hands gripping your ass tightly as she thrusts deeper, the knot already teasing your slick folds.")

		saynn("[say=mirri]That's what a good bitch gets.[/say]")

		if (GM.pc.hasPenis()):
			saynn("Each thrust is rough and deliberate, the thick toy pressing against your g-spot, sending waves of pleasure through your body. You try to stay quiet.. but the sensation is overwhelming, your {pc.penis} stiffens and throbs, leaking pre onto the floor as Mirri rails your cunt, the knot teasing but never quite pushing in all the way.")

		else:
			saynn("Each thrust is rough and deliberate, the thick toy massaging your pleasure spot hard, sending waves of pleasure through your body. You try to stay quiet.. but the sensation is overwhelming, your pussy dripping juices profusely as Mirri rails it, the knot teasing but never quite pushing in all the way.")

		addButton("Continue", "See what happens next", "subpuppy_pussy_fast")
	if(state == "subpuppy_pussy_fast"):
		playAnimation(StageScene.PuppySexAllFours, "fast", {pc="mirri", npc="pc", bodyState={exposedCrotch=true}, npcBodyState={naked=true, hard=true}, npcCum=true})
		saynn("[say=mirri]You love this, don't you?[/say]")

		saynn("Mirri purrs louder, her hips slamming against you harder, her breath hot against your back as you rock back and forth on your paws.")

		saynn("[say=mirri]My little puppy, begging to get knotted.[/say]")

		if (GM.pc.hasPenis()):
			saynn("You're panting now, the intense pleasure building with every thrust. The way the dildo rubs against your pleasure spot makes it impossible to hold back. Your cock pulses"+str(" in its little cage" if GM.pc.isWearingChastityCage() else "")+", and before you can stop it, you cum hard, ropes of thick {pc.cum} shooting out, splattering onto the cold wooden floor beneath you, your pussy clenching hard around the silicon shaft. Your whole body shudders as you're forced to ride the waves of your orgasm, every second is pure bliss, elevated by the relentless thrusting.")

		else:
			saynn("You're panting now, the intense pleasure building with every thrust. The way the fat dildo rubs your g-spot makes it impossible to hold back. Your {pc.vaginaStretch} pussy pulses, and before you can stop it, you cum hard, a shower of your girlcum shooting out, splattering onto the cold wooden floor beneath you, your inner walls clench. Your whole body shudders as you're forced to ride the waves of your orgasm, every second is pure bliss, elevated by the relentless thrusting.")

		saynn("Mirri's giggling echoes in your ears as she notices your peak.")

		saynn("[say=mirri]Already, puppy? How pathetic. I'm not even..[/say]")

		addButton("Continue", "See what happens next", "subpuppy_pussy_knot")
	if(state == "subpuppy_pussy_knot"):
		playAnimation(StageScene.PuppySexAllFours, "inside", {pc="mirri", npc="pc", bodyState={exposedCrotch=true}, npcBodyState={naked=true, hard=true}, npcCum=true})
		if (GM.pc.hasPenis()):
			saynn("With one final push, she forces the whole length of the toy deep into your slit, stretching you to your limits, the knot locking inside you, the tip breaking into your womb. The pressure sends you over the edge once more, your cock pulsing as another dribble of your seed leaks from your overstimulated body, coupled with a passionate moan.")

		else:
			saynn("With one final push, she forces the whole length of the toy deep into your slit, stretching you to your limits, the knot locking inside you, the tip breaking into your womb. The pressure sends you over the edge once more, your pussy clenching hard as another dribble of your girlcum leaks from your overstimulated body, coupled with a passionate moan.")

		saynn("[say=mirri]There we go. Bred like the good bitch that you are.[/say]")

		saynn("She gives a few more slow, grinding thrusts, enjoying every second of your body trembling beneath her.")

		saynn("[say=mirri]Now give me my toy back, slut~.[/say]")

		saynn("Finally, after what feels like an eternity, she pulls out, the knot popping free with a wet noise.")

		setFlag("SlaveAuctionModule.customMirriGreeting", "Hello, lovely pup. How is your pussy, still sore I hope?")
		addButton("Continue", "See what happens next", "subpuppy_after_sex")
	if(state == "subpuppy_after_sex"):
		playAnimation(StageScene.PuppyDuo, "stand", {pc="mirri", npcAction="sad", npcBodyState={naked=true, leashedBy="mirri", hard=true}})
		saynn("Mirri steps back, admiring her work.. while you just sprawl all over the floor. She gives your ass a sharp slap.")

		saynn("[say=mirri]That's a good puppy. Kitties will always be above pups, you better remember that.[/say]")

		saynn("You pant heavily.. until Mirri finally decides to start removing the puppy restraints.")

		saynn("[say=mirri]Such a mess you left. Was fun though.[/say]")

		addButton("Continue", "See what happens next", "endthescene")

func _react(_action: String, _args):
	if(_action == "endthescene"):
		endScene()
		return

	if(_action == "sell_menu"):
		runScene("SlaveAuctionGenericSellScene")
		endScene()
		return

	if(_action == "sex_menu_check"):
		if(!getModule("SlaveAuctionModule").canDomMirri() && !getFlag("SlaveAuctionModule.pickedSexSub")):
			setFlag("SlaveAuctionModule.pickedSexSub", true)
			setState("kinky_times_intro")
			return
		
		setState("sex_menu")
		return

	if(_action == "try_dominate"):
		setState("dom_about_to_fight")
		return

	if(_action == "agree_be_toy"):
		setFlag("SlaveAuctionModule.sexSubbedToMirri", true)

	if(_action == "sub_painplay"):
		processTime(5*60)

	if(_action == "sub_pussy"):
		processTime(5*60)

	if(_action == "sub_walkies"):
		processTime(5*60)

	if(_action == "ask_luxe"):
		processTime(5*60)

	if(_action == "ask_bdcc"):
		processTime(5*60)

	if(_action == "ask_blacktail"):
		processTime(5*60)

	if(_action == "ask_slaves"):
		processTime(5*60)

	if(_action == "ask_collar"):
		processTime(5*60)

	if(_action == "subintro_kneel"):
		processTime(5*60)

	if(_action == "subintro_teeth"):
		processTime(5*60)
		GM.pc.addLust(100)

	if(_action == "sub_painplay_chains"):
		processTime(5*60)
		GM.pc.doWound("mirri")
		GM.pc.addPain(50)

	if(_action == "sub_painplay_panties"):
		processTime(5*60)
		GM.pc.getInventory().forceEquipStoreOtherUnlessRestraint(GlobalRegistry.createItem("ballgag"))
		GM.pc.doWound("mirri")
		GM.pc.addPain(50)
		GM.pc.orgasmFrom("mirri")

	if(_action == "sub_painplay_wakeup"):
		processTime(60*60)
		GM.pc.getInventory().clearSlot(InventorySlot.Mouth)

	if(_action == "subpussy_table"):
		processTime(5*60)

	if(_action == "subpussy_start"):
		processTime(5*60)

	if(_action == "subpussy_breather"):
		processTime(5*60)

	if(_action == "subpussy_masturbate"):
		processTime(10*60)
		GM.pc.cummedOnBy("mirri", FluidSource.Vagina)
		GM.pc.cummedInMouthBy("mirri", FluidSource.Vagina)

	if(_action == "subpussy_after"):
		processTime(5*60)

	if(_action == "subpussy_pee"):
		processTime(5*60)
		GM.pc.cummedInMouthBy("mirri", FluidSource.Pissing)

	if(_action == "subwalkies_suit"):
		processTime(10*60)

	if(_action == "subwalkies_paw"):
		processTime(5*60)

	if(_action == "subwalkies_refusepaw"):
		processTime(5*60)

	if(_action == "subwalkies_tp"):
		processTime(5*60)

	if(_action == "subwalkies_moreexplore"):
		processTime(5*60)

	if(_action == "subwalkies_nova"):
		processTime(5*60)

	if(_action == "subwalkies_donothing"):
		processTime(5*60)

	if(_action == "subwalkies_barksavepuppy"):
		processTime(5*60)

	if(_action == "subwalkies_aftersave"):
		processTime(5*60)

	if(_action == "subpuppy_back"):
		processTime(10*60)

	if(_action == "subpuppy_putonstrapon"):
		processTime(5*60)
		getCharacter("mirri").getInventory().forceEquipStoreOtherUnlessRestraint(GlobalRegistry.createItem("StraponCanine"))

	if(_action == "subpuppy_suck"):
		processTime(5*60)

	if(_action == "subpuppy_ass"):
		processTime(5*60)
		GM.pc.gotAnusFuckedBy("mirri")

	if(_action == "subpuppy_pussy"):
		processTime(5*60)
		GM.pc.gotVaginaFuckedBy("mirri")

	if(_action == "subpuppy_ass_fast"):
		processTime(5*60)
		GM.pc.orgasmFrom("mirri")

	if(_action == "subpuppy_ass_knot"):
		processTime(5*60)
		GM.pc.gotAnusFuckedBy("mirri")

	if(_action == "subpuppy_after_sex"):
		processTime(5*60)
		getCharacter("mirri").removeStrapon()

	if(_action == "subpuppy_pussy_fast"):
		processTime(5*60)
		GM.pc.orgasmFrom("mirri")

	if(_action == "subpuppy_pussy_knot"):
		processTime(5*60)
		GM.pc.gotVaginaFuckedBy("mirri")

	setState(_action)