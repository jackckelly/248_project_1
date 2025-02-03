LIST VinceEmotional = normal, mad 
LIST Knowledge = NoKnows, knows 
VAR KnowledgeStateVince = (NoKnows)
VAR KnowledgeStateJohnny = (NoKnows)
VAR KnowledgeStateAmy = (NoKnows)
VAR KnowledgeStateDarcie = (NoKnows)

~ VinceEmotional = normal 

-> begin
==begin==
Your heart pounds out of your chest, a decision that can make or break your fate in this household. 
*[It all leads down to this.] 

You glare at the red 6 card in front of you, switching your glare between it and your housemate with one card. 
**(redSix)[Play another red 6]
**(blueSix)[Play a blue 6] 
**(PlusTwo) [Use your plus 2]

- You play your card 
-> reaction

= reaction
# CLEAR

{redSix: Vince\: NO! WHAT ARE YOU DOING?!} 
{blueSix: Vince\: WE'RE SAVED!!} 
{PlusTwo: Vince\: OH C'MON I CAN'T STACK THAT!!}

{redSix: Amy\: I told you he has a red card!} 
{blueSix: Amy\: Oh thank goodness.} 
{PlusTwo: Amy\: That doesn't help!}

{redSix: Johnny\: Babe, are you looking at my cards?!} 
{blueSix: Johnny\: DAMN YOU!} 
{PlusTwo: Johnny cackles and points at Vince.}

{redSix: Amy\: It's called card counting.} 

{redSix or PlusTwo: Vince sighs and plays his wild card.} 
{redSix or PlusTwo: Vince\: Blue!}
{redSix or PlusTwo: Johnny\: Damn it.} 
{blueSix: Vince plays a blue 8.} 

*["We should probably quiet down"] -> quietDown
*[Try to peek at Vince's cards] -> peekAtVince

= quietDown
Vince: It's fine! It's not that late!! 
Johnny: Yeah, c'mon. 
Amy: I think Darcie has work tomorrow so we should keep it down a bit. 
Vince: Yeah, maybe at like 11 though caus-
Amy: Uno. 
Johnny: BABE NO. C'MON. 
*[You laugh at Johnny's distraught face]-> GlassTumbling

= peekAtVince 
You stretch your neck a bit to look over at Vince. 
{~ A blue 7. Noted. | Vince\: EY EY EY THE HELL YOU DOING?!} 

-> GlassTumbling

= GlassTumbling

All of the sudden, a clattering in the living room causes everyone to jump. 
Johnny: What was that?! 
Amy: I don't know.

*["I'll go check it out"] -> InvestigateLivingRoom -> 

*["Probably another picture frame fell."] 

- -> GhostTalk 

==GhostTalk==
# CLEAR
{InvestigateLivingRoom: Vince\: So, what was it?}
{InvestigateLivingRoom.pictureFrame: You tell them that the picture frame fell.} 
{not InvestigateLivingRoom.pictureFrame and InvestigateLivingRoom: You shrug unsure}
Johnny: You sure it wasn't a ghoOoOoOOoOst?
Vince: C'mon that's not funny.
Johnny: Oh lighten up! 
*(notReal)["We all know ghosts aren't real"] 
Johnny: See! You get it now. This house always cracks and does weird stuff. -> goingToBed 
*(Follow)["I'd prefer if we don't make ghost jokes"] 
Johnny: Gah, I know you're new but c'mon. After the first couple weeks you got'ta know now that the house makes all kinda weird noises. -> goingToBed

=goingToBed
Vince: You know what, I'm pretty tired I think I'm going to bed. 
Johnny: Seriously? C'mon! I'm just joking! 
Vince: Good night guys. 
*["I'm going to bed too"] 
Amy: Oh...ok. Good night guys. 
Johnny begins to pack up the Uno cards. 

**[Go straight to bed] -> goToSleep 
**[Catch up with Vince] -> VinceChat ->
- -> goToSleep

==InvestigateLivingRoom==
# CLEAR
{pictureFrame: You look around to see what could've made that noise.}
* [Check picture frames] -> pictureFrame
* [Knock on Darcie's door] -> DarcieDoor
* [Go back to table] ->->

= pictureFrame
You look around the walls and find a blank space where the frame should've been, and see it on the floor. 

Upon lifting it up, you what once was a simple drawing of Amy now displays her jaw unhinged. 

*[But you don't make a big deal out of it] 

There's no use gasping or screaming when you're the only one who sees this. Just need to wait for the apparition to disappear. 

You put it to the side to ensure no one trips on it. 

-> InvestigateLivingRoom

= DarcieDoor
# CLEAR
Darcie opens the door rubbing her eyes with a groan. 
Darcie: What?! 
*["Did you fall?"] 
Darcie: No I didn't fall. I was just sleeping, you know I have early shift tomorrow. Keep it down, will ya? 
She slams the door in your face 
-> InvestigateLivingRoom
*["Are you ok?"] 
Darcie: I was until you knocked. You know I have an early shift tomorrow. Yall keep it down, will ya? 
she slams the door in your face. 
-> InvestigateLivingRoom

==VinceChat== 
#CLEAR
{GhostTalk.notReal && not AngryVince: 
Vince: What the hell was that? 
-> AngryVince
}

{GhostTalk.Follow && not WorriedVince: 
Vince: Hey, you ok? 
-> WorriedVince 
}

->->

==AngryVince== 
*["I'm sorry"]
Vince: It's fine. Just...I don't know. I know you don't like talking ghost stuff but at least try to back me up when I try to shift the convo. 
You nod 
Vince: So, what did you actually see? 
-> ActuallySee 

*["What?"]
Vince: Oh come on! "We know ghosts aren't real!" Really?! I'm trying to shift the convo away from ghost stuff and now you're making me look lik- 

Vince takes a deep sigh and you both sit in silence for a moment. 

**["I'm sorry"]
Vince: It's fine. Just...I don't know. I know you don't like talking ghost stuff but at least try to back me up when I try to shift the convo. 
You nod 
Vince: So, what did you actually see? 
->ActuallySee

**[Remain quiet]
~ VinceEmotional = mad
Vince: You know what? Good night. 
Vince enters his room. 
->VinceChat


==WorriedVince== 
*["No, not really"] 
Vince: What's up? 
-> ActuallySee
*["I'm fine."]
Vince: You sure? You look like you've seen a ghost, no pun indended. 
**["Actually, not really."]
Vince: What's up? 
->ActuallySee

**["Yeah, I just need to go to bed."] -> concernTalk.goodNightVince

==ActuallySee== 
*{InvestigateLivingRoom.pictureFrame} ["The picture frame fell."] 
Vince: That's it? 
**["That's it."] -> concernTalk.goodNightVince
**["And it had blood"] -> concernTalk
*{InvestigateLivingRoom.pictureFrame} ["The picture frame had blood."] -> concernTalk
*{not InvestigateLivingRoom.pictureFrame} ["Didn't see anything"] 
Vince: Really? 
**["Really."] -> concernTalk.goodNightVince 
*{InvestigateLivingRoom.DarcieDoor} ["The old hag was mad."] 
Vince: Of course she was, there isn't a day where Darcie doesn't complain about us. But seriously, was there anything? ->ActuallySee
->concernTalk.goodNightVince

==concernTalk==
Vince: Yikes. That's really concerning. Listen, you're the medium and you know more than me. Why don't you just tell them? 

*["I don't want to look weird"] 
Vince: You won't look weird! Look, I've known you for 3 years now and I don't think you're weird 

**["And I've only been here for a couple weeks"] 

Vince: ...fair point. But hey! Whatever you choose, I got your back, alright? 

***["Alright."]
-> goodNightVince

*(danger)["We're not in danger"] 
Vince: Alright, I'll take your word for it, you're the medium after all. 
-> goodNightVince
*["I don't want them to freak out."] 
Vince: You really think they'd freak out? 
**["Why do you think the rent is so low?"] 
Vince: I don't follow. 
***["Everyone flees screaming before finishing their lease"] 
Vince: That's cause not everyone has a cool medium friend who can keep an eye on whatever casper the friendly ghost there is here. 
****["Fair point.]
-> goodNightVince

= goodNightVince
Vince: Alright, well I'm pretty tired. Get plenty of rest, goodnight! 
Vince walks into his room and closes his door. 
-> VinceChat

==goToSleep==
# CLEAR
You go into your room, put on your pjamas, and go to bed. 

Your body sinks into the mattress, and you await to feel your mind transfer...

*[Into the land of the souls] -> souls

= souls 

<link rel="stylesheet" type="text/css" href="styleDream.css"/>

You can't see anything, but you can feel it. Fours souls, other than your own, spark with lively energy in this house. 

Last you counted, there were at least 10 other souls that hummed in this house...

**[Unable to relinquish themselves from this world.]

Some are at peace with their entrapment. 
Others are saddened. 
***[But one is wrathful.] 

You lay in the visionless void, your mind trapped between a limbo of life and death. When suddenly...

****[A violent vibration begins to stir] 

It's vile, and the clashing between energies stirs your stomach wrong. A panic begins to rise as you realize...

*****[One has begun to engulf another] 

You feel a lively soul suddenly become overwhelmed with bitter hatred, until it is no longer itself. You've only seen this one other time in your life...

******[A posession.] 

You can't tell who's soul has been taken over, but you must act quietly before the spirit realizes you're trying to exorcise it. 

Or else it will harm whoever it is posessing. 

*******[Or possibly the people around it.] 

You must...
********[Awaken.] -> Daytime 

==Daytime== 
# CLEAR
<link rel="stylesheet" type="text/css" href="styleDay.css"/>
Full day 
-> END 


