LIST Knowledge = NoKnows, Knows 
VAR KnowledgeStateVince = (NoKnows)
VAR KnowledgeStateJohnny = (NoKnows)
VAR KnowledgeStateAmy = (NoKnows)
VAR KnowledgeStateDarcie = (NoKnows)
VAR VinceMad = false
VAR WentShopping = false
VAR NotHomeVince = false 
VAR NotHomeJohnny = false 
VAR VinceWithYou = false

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
Johnny: See! You get it now. This house always cracks and does weird stuff. 
-> goingToBed 
*(Follow)["I'd prefer if we don't make ghost jokes"] 
Johnny: Gah, I know you're new but c'mon. After the first couple weeks you got'ta know now that the house makes all kinda weird noises. 
-> goingToBed

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
{not pictureFrame: You look around to see what could've made that noise.}
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
**["Jeez, sorry"]-> InvestigateLivingRoom
*["Are you ok?"] 
Darcie: I was until you knocked. You know I have an early shift tomorrow. Yall keep it down, will ya? 
she slams the door in your face. 
**["Jeez, sorry"]-> InvestigateLivingRoom

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
~ VinceMad = true 
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

*["I don't want to look weird"] -> lookWeird

*["We're not in danger"]-> danger 
*["I don't want them to freak out."] 
Vince: You really think they'd freak out? 
**["Why do you think the rent is so low?"] 
Vince: I don't follow. 
***["Everyone flees screaming before finishing their lease"] 
Vince: That's cause not everyone has a cool medium friend who can keep an eye on whatever casper the friendly ghost there is here. 
****["Fair point."]
-> goodNightVince

=danger 
Vince: Alright, I'll take your word for it, you're the medium after all. 
-> goodNightVince

=lookWeird
Vince: You won't look weird! Look, I've known you for 3 years now and I don't think you're weird 

**["And I've only been here for a couple weeks"] 

Vince: ...fair point. But hey! Whatever you choose, I got your back, alright? 

***["Alright."]
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
You gasp awake to a new day. The fog overcasts the trees outside your home and you look at your clock to notice it's already noon!  
What would you like to do? 
+[Talk to housemates] 
You get out of bed and begin your regular routine. Get dressed, brush your teeth, and set off to the hallway. -> convoStarter
+[Go get supplies for exorcism] 
You get out of bed and begin your regular routine. Get dressed, brush your teeth, and head out. -> Shopping 

==Shopping==
# CLEAR
<link rel="stylesheet" type="text/css" href="styleDay.css"/>
{Shopping < 2: You head out to get your supplies.}
{holyWater: holy water in hand... }
{medicine: medicine in the other...}
{Shopping > 2: you head to your next location.} 
*(HolyWater)[Get holy water.] -> holyWater
+{DarcieConversation.askForMedicine}(DarcieMedicine)[Get Darcie's Medicine] -> medicine
+{HolyWater}[Go home] -> convoStarter

=holyWater
You walk into your local church with an empty waterbottle and sneak to the stoup. 
Making sure no one is looking, you steal just enough for the exorcise. 
<- Shopping

=medicine 
{holyWater: You hide the bottle of holy water in your pocket and walk to your local supermarket} 
You search for a while but eventually find Darcie's medicine. 
<- Shopping

==convoStarter==
# CLEAR
<link rel="stylesheet" type="text/css" href="styleDay.css"/>
{Shopping: You finally return to the house as the sun begins to set.}
Who would you like to speak to? 
*{VinceConversation or AmyConversation or JohnnyConversation or DarcieConversation}[Go Shopping] -> Shopping
*{not NotHomeVince && not Shopping}[Vince] -> VinceConversation
*{Shopping} [Amy] -> AmyPostShopping
*{AmyConversation < 5 && not Shopping} [Amy] -> AmyConversation
*{not NotHomeJohnny && not Shopping}[Johnny] -> JohnnyConversation
*{not Shopping}[Darcie] -> DarcieConversation 
*{Shopping}[Darcie] -> DarciePostShopping
+{Shopping} [Wait to begin exorcism] -> FinalShowdown

==VinceConversation== 
# CLEAR 
<link rel="stylesheet" type="text/css" href="styleDay.css"/>
You walk to the kitchen and see Vince, greeting him. 
{VinceMad: 
<- VinceMadConversation
} 
{not VinceMad: 
<- VinceNeutralConvo
}
<- additionalQuestions 


==additionalQuestions==
<link rel="stylesheet" type="text/css" href="styleDay.css"/>
*["Is anyone else home?"] -> elseHome
*{not sawSomething} ["I saw something last night"] -> sawSomething 
Vince: Hm? 
*{sawSomething && VinceMadConversation.makeup} ["Like I said before, I saw something last night"] -> sawSomething
+["I'll catch you later"] -> VinceGoodbye 

== VinceMadConversation==
<link rel="stylesheet" type="text/css" href="styleDay.css"/>
Vince: "What do you want from me?" 
-> confrontVince 
=confrontVince
*["Are you still mad about last night?"] 
Vince: "Yeah I'm mad. But what do you want?" 
**["I'm sorry."] -> apologize 
**["Something's going on."] -> dontApologize 

= apologize 
Vince: "Hm?" 
*["I shouldn't have thrown you under the bus like that"] -> makeup
*["I'm sorry for not having your back."] -> makeup

= dontApologize
Vince: If it's some ghost shit, I don't want to hear it. 
*["Vince, come on."] -> stormOut 
*["I'm sorry"] -> apologize

=stormOut 
Vince: No! Ok? I'm done trying to help you with this phantom- or- whatever bullshit. I'm late for class anyways. 
You watch him pack up his breakfast and storm out. 
->convoStarter
~NotHomeVince = true

=makeup
~ VinceMad = false 
Vince: ...ok. Yeah. I'm sorry for going a bit haywire on you. It's just hard keeping this whole medium thing a secret, you know? 
*["I get it."] 
Vince: Of course, yeah, it's your secret after all. Apology accepted! 
**["Thanks!"] 
{not sawSomething: Vince: So, what's up?} -> additionalQuestions
{sawSomething: Vince: So, what did you see?} 

==elseHome ==
<link rel="stylesheet" type="text/css" href="styleDay.css"/>
{VinceMad: Vince: Yeah. Darcie's sick. Johnny's being an ass. Amy's...somewhere, I dont know.} 
{not VinceMad: Vince: Yeah! Uhhh Amy is...somewhere I'm not sure where. Darcie is in her room, I think she's sick or something? And Johnny, I don't know. As long as he stays away I don't care where he went.} 
<- PeopleHome 


=PeopleHome 
*["What's Darcie sick with?"] -> DarcieSickness 
*(VinceExplinationOfIncident)["Is there something going on with you and Johnny?"] ->JohnnyExplotion 
<-additionalQuestions
{VinceMad: 
<- VinceMadConversation.confrontVince
}

=DarcieSickness 
{not VinceMad: Vince: Not sure, looks like the flu or something. She's been sneezing all morning. } 
{VinceMad: Don't know.} 
<- PeopleHome 

= JohnnyExplotion
{not VinceMad: Vince: Yeah, for some reason he got all up in my face and started yelling at me. Saying I was the most annoying and no one likes me here. }

{VinceMad: Vince: Yeah he got mad at me.} 

*["I'm sorry to hear that."] 

{not VinceMad: Vince: It's fine.} 
{not VinceMad && posessed: Vince: I hope it's a wrathful spirit and he didn't just turn into a jackass overnight.} 
{not VinceMad: But that's not that important, anything else you want to chat about?} -> additionalQuestions
{VinceMad: Vince: ...} -> VinceMadConversation.confrontVince


==sawSomething==
<link rel="stylesheet" type="text/css" href="styleDay.css"/>
{VinceMad: 
-> VinceMadConversation.dontApologize
}

*["I think someone's posessed by a wrathful spirit."] -> posessed 
*["Nevermind."] -> Nevermind 

=Nevermind 
Vince: Nevermind? C'mon, you know you can tell me anything, right? 

*["I think for everyone's safety it's best if I don't] 
Vince: ...ominous but alright. -> additionalQuestions
*["I think someone's posessed by a wrathful spirit."] -> posessed 

==posessed== 
<link rel="stylesheet" type="text/css" href="styleDay.css"/>
Vince: POSESSED?! 
You hush him down 
Vince: Possessed?! The hell you mean?! 
**["I'm not sure who it is"] -> VinceHelps 
**["I'm going to be preforming an exorcism"] 
Vince: Well make sure you get the right person tonight, or else that ghost is going to get pissed. -> VinceHelps
**["I think I know who it is"] -> VinceQuestionsWho 

=VinceQuestionsWho
Vince: Who?! 
*[You]
    -> accuse("You")
*(accuseJohnny)[Johnny] 
    -> accuse("Johnny") 
*[Amy] 
    -> accuse("Amy") 
*[Darcie] 
    -> accuse("Darcie") 
    
=accuse(name)
{name == "You": Vince: ...ok so. Let me get this straight. Your plan was to walk up to me...say I'm posessed...and then what? Obviously, I'm not. But if I was, that would've been a real dumb move. Yeah, accuse the angry ghost in a room full of knives, what could possibly be the worst case scenario?}

{name == "Johnny": Vince: Hmmmm... I mean if it's a wrathful spirit then yeah I guess that could explain his outburst this morning. Just make sure not to tell Amy though, you know she always loudmouths everyone's buisness to him.} 
{name == "Amy": Vince: I highly doubt that, she seems chill as usual.} 
{name == "Darcie": Vince: Wrathful? Oh yeah, well she always is. It's gonna be hard to tell the difference on if she's posessed by some angry spirit or not, but hey, doesn't look like she's getting up anytime soon. Being sick and all that.} 

-> VinceHelps
=VinceHelps 
Vince: If there's anything I can do to help, let me know. 
*["Will do."] 
Vince: Anything else you wanna chat about? 
<- additionalQuestions


==VinceNeutralConvo==
# CLEAR 
<link rel="stylesheet" type="text/css" href="styleDay.css"/>
Vince: Oh hey! What's up? 
<- additionalQuestions
*["Something's going on"] 
Vince: Hm? -> sawSomething

==VinceGoodbye==
{VinceMad: Vince: Ok. Bye.} 
{not VinceMad: Vince: Catch ya later!} 
You watch Vince pack the rest of his backpack and head out.
-> convoStarter

==AmyConversation==
# CLEAR
<link rel="stylesheet" type="text/css" href="styleDay.css"/>
{not WalkAway: You walk down the hall and see Johnny and Amy's room ajar. Knocking on it, Amy opens with a tired smile.}
{WalkAway: You knock on the door again.}
{AmyConversation < 2: Amy: Oh hey. What's up?}
{AmyConversation > 1 && AmyConversation < 3: Amy: Uhhh...can I help you?} 
{AmyConversation > 3 && AmyConversation < 4: Amy: What?! Why do you keep knocking?!} 
{AmyConversation > 4 or danger: 
-> AmyIgnores 
}
+[Can I walk to you for a bit?] -> talkToAmy
+[Nevermind, sorry for bothering you.] -> WalkAway 

=talkToAmy 
{AmyPostShopping: Amy: Uh...sure}
{talkToAmy < 2: Amy: Sure...come in. Is something wrong?} 
{talkToAmy < 3: Amy: Well, I'm kinda running short on time, but I'm glad to chat a bit more.} 
{talkToAmy > 3 and not AmyPostShopping: 
-> AmyGoodbye
}
*{elseHome.JohnnyExplotion} ["Do you know what happened between Johnny and Vince?"] -> AmyExplnationJohnny 
*{elseHome.DarcieSickness} ["Do you know what Darcie's sick with?"] -> AmyExplinationSickness 
*{JohnnyConversation} ["What's going on with Johnny?"] -> JohnnyTalkAmy
*["There's something I need to tell you."] -> tellHer 

=JohnnyTalkAmy 
Amy: What do you mean? 
*["He seems to not be doing well."] 
{AmyExplnationJohnny: Amy: I mean...ok fine we did have a slight disagreement last night but not anything too serious. Why? Is he ok?}

**["No not really"] -> tellHer
**["He just seems upset"] -> AmyExplnationJohnny
=AmyExplnationJohnny
{not JohnnyTalkAmy: Amy: Oh...yeah. I'm not sure why that happened...but he's been in a really bad mood today.}
{JohnnyTalkAmy: Amy: Yeah...maybe he's just outlashing at everyone? I don't know...doesn't seem very like him.} 
*["Do you know why?"] 
Amy: No clue. <-talkToAmy 

*["Maybe it's not him..."] -> tellHer

=AmyExplinationSickness
Amy: Yeah...seems like a simple cold...nothing too crazy. 
<- talkToAmy

= tellHer
Amy: What's going on? 
*["I'm a spirit medium"] -> medium
*["Nevermind."] 
Amy: Oh...ok. -> AmyGoodbye

=medium
Amy: hahahahaha! 
*[...]
Amy: Oh...oh you're serious. 
**["Yep."] 
Amy: Well...uhhhh thanks for telling me, I guess. 
***[You're in danger] -> danger 
***["Sure."]->talkToAmy
~ KnowledgeStateAmy = Knows

=danger 
~ KnowledgeStateJohnny = Knows 
Amy: What???
*["Someone's posessed, and I don't know who."] 
Amy: Ok, you're speaking nonsense. I-I have alot of work to do. 
**["Please listen to me."]
Amy: Please get out of my room. 
***[Leave] 
-> convoStarter

=AmyGoodbye 
Amy: Well, I have to study quite a bit, but it was nice chatting. 
*["Yeah, nice chatting."]->convoStarter

=WalkAway 
Amy: Oh...ok. 
She shuts the door. 
-> convoStarter

=AmyIgnores 
{AmyIgnores < 2: Amy: Enough! Ok? I'm trying to study.}
{AmyIgnores < 2: Amy shuts the door.} 
{AmyIgnores > 1: No answer.} 
-> convoStarter

==JohnnyConversation==
# CLEAR 
<link rel="stylesheet" type="text/css" href="styleDay.css"/>
You wander around for a while before finding Johnny in the garage. 
Johnny: "Hello." 
{AmyConversation.danger: 
<- MediumTalk
}
<- generalQuestions

=generalQuestions
*["Are you feeling ok?"] -> MediumTalk.fine
*{elseHome.JohnnyExplotion or DarcieConversation.ExplosionConvo}["What's going on between you and Vince, man?"] -> MediumTalk.VincePissOff

==MediumTalk==
<link rel="stylesheet" type="text/css" href="styleDay.css"/>
Johnny: So...you're a "medium"? 
*["How did you know?"] 
Johnny pulls out his phone and shows a text message thread between him and Amy. 
Johnny: You feeling ok man? Sounds like you had a bit of a freakout. 
**["A freakout?"] -> freakout
**["I'm fine"] -> fine 

= freakout 
Johnny: Yeah a freak out. 
{VinceMad: 
<- MentionVinceMad
} 
Johnny: Now Amy's all anxious cause you told her she's "in danger". 

*(misunderstanding)["This is a big misunderstanding"] -> passiveProgress 
*(dontBelieve)["I thought you didn't believe in ghosts."] -> passiveProgress

=MentionVinceMad
Johnny: First you pissed off Vince with your ghost talk. 
*(ghostJoke)["No, you made the ghost joke first."] ->agressiveProgress
*(clapBack){elseHome.JohnnyExplotion}["You're one to talk."] ->agressiveProgress

=passiveProgress
{misunderstanding: Johnny: I don't think there's any misunderstanding in you getting this whole house rattled up.}
{dontBelieve: I don't. But I do believe that you messing with people's heads is pissing me off.} 

*(sorry)["I'm sorry."] -> fine
*["Are you feeling ok?"] -> fine

= agressiveProgress
{ghostJoke: Johnny: Oh no! Don't you pin this on me when you're out here talking ghost crap you freak.} 
{clapBack: The hell do you mean by that?!} 
*["This is very out of character for you."] -> Finalfine
*{elseHome.JohnnyExplotion}["I know you went off on Vince this morning"] -> VincePissOff
*["Nevermind."] -> JohnnyConversation.generalQuestions

= VincePissOff
Johnny: Yeah, cause he was pissing me the hell off. 
*["You seem very angry."] -> Finalfine

= fine
{sorry: Johnny: Damn right you should be.}
{sorry: You try to get closer.}
Johnny: I'm fine. Leave me alone. 
*["Ok, I'll leave."] -> convoStarter
You leave the garage. 
*["Are you sure?"] -> Finalfine 

=Finalfine 
Johnny: IM FINE. 
You watch him punch a nearby wall and begin to cackle. 
Johnny: You should leave. 

*["Ok."] 
**[You leave the garage] -> convoStarter


==DarcieConversation==
# CLEAR
<link rel="stylesheet" type="text/css" href="styleDay.css"/>
You knock on the door to her bedroom. 
{DarcieConversation < 2: Darcie: WHAT?! }
{DarcieConversation < 2: You hear her begin to cough violently before blowing her nose. }
{InvestigateLivingRoom.DarcieDoor:
<- CommentAboutLastNight
}

*["Can I come in?"] -> enterRoom

=CommentAboutLastNight
{CommentAboutLastNight<2: Darcie: I SWEAR. IF ITS YOU I'M GONNA LOSE IT.} 
*["I'm sorry for waking you up last night"] 
Darcie: what do you want?! -> DarcieConversation
*(DarcieMad)["It's me"] 
Darcie: oh C'MON. -> DarcieConversation

= enterRoom
You quietly enter 
{not DarcieMad and enterRoom < 2: Darcie: Yeah sure, barge in I suppose.} 
{DarcieMad and enterRoom < 2: Darcie:First you wake me up in the middle of the night, now you barge into my room.} 

{DarcieMad && dodge: Darcie: Then get the hell out!! -> leaveDarcie}


*{DarcieMad} ["It wasn't the middle of the night, it was 10pm] -> angryTalk
*["How long have you been sick?"] -> sick
{not DarcieMad or angryTalk:
<- ExplosionConvo
}
*["I need to tell you something."] -> tellDarcie 
*["I think I'm going to head out."] -> leaveDarcie

= ExplosionConvo 
Darcie: Well since you're here, did those two jackasses stop fighting? 
*{elseHome.JohnnyExplotion or AmyConversation.JohnnyTalkAmy}["So you heard."] 
Darcie: Oh yeah, it was a whole screamin' match right here. First Johnny screamed, then Vince- well I guess he just sort of raised his voice. But yeah.<-CommentAboutLastNight
*{not elseHome.JohnnyExplotion or not AmyConversation.JohnnyTalkAmy}["What?"] 
Darcie: Oh yeah, I'm surprised you didn't hear it. It was a whole screamin' match right here. First Johnny screamed, then Vince- well I guess he just sort of raised his voice. But yeah.<-CommentAboutLastNight

=angryTalk
Darcie: God, you can't let me sleep, can you? 
*["I'm sorry."]
Darcie: Fine. Whatever. 
-> enterRoom

=sick 
Darcie: Since this mornin'. 
*["Does it feel like a normal cold or...?"] -> lashOut
*["Do you need any medicine?"] -> askForMedicine 

= lashOut
Darcie: Yes it feels like a normal col- THE HELL ARE YOU ON ABOUT? I'M JUST SICK. 
{KnowledgeStateAmy == Knows: Darcie: Amy already texted me, goin on about how you've been actin' weird. Now I'ont know bout what, but I'm not in the mood.} -> enterRoom

=askForMedicine
Darcie: ... 
*["..."] 
{not DarcieHelp: Darcie: I mean if you're goin' out I would appreciate some.} 
{DarcieHelp: Darcie: Some medicine would be great.} 
**["I'll get some then."]-> enterRoom

=tellDarcie 
Darcie: "Tell me what?" 
*["I'm a spirit medium."] -> confess 
*["Nevermind."] -> dodge 

= confess 
~ KnowledgeStateDarcie = Knows
{not DarcieMad: You tell her about your powers.} 
Darcie: ....what? 
*[You don't believe me?] 
Darcie: I....KNEW IT. THERE WAS ALWAYS SOMETHIN' OFF HERE. 
**["What?!"] 
Darcie: Oh come on...the random frames falling. The plates falling. The whispers. How does no one know this place is haunted?! 
***["So you're not posessed?"] -> DarciePosessed
***(unknowing)["I'm glad we're on the same page."] 
Darcie: Yeah. So, why tell this now? -> DarciePosessed
= dodge
{DarcieMad: TELL ME WHAT?! YA ALREADY CAME INTO MY ROOM SPIT IT OUT.} 
{not DarcieMad: Ya alright? Ya look like ya seen a ghost.} 
*{not DarcieMad}["Funny you should say that...] -> confess 
*{DarcieMad} ["I'm a spirit medium"] -> confess 
*["I said nevermind."] -> enterRoom

= DarciePosessed
{unknowing: Darcie: Is something wrong?!} 
{not unknowing: Darcie: POSESSED?! SOMEONE'S POSESSED?!} 
*{not unknowing}["Yes"] 
*{unknowing}["Yeah, someone's posessed"] 
{unknowing: Darcie: POSESSED?!} 
Darcie: Well DAMN. Then who is?! 
**["I'm not sure who it is"] -> DarcieHelp
**["I'm going to be preforming an exorcism"]  -> DarcieHelp
**["I think I know who it is"] -> DarcieQuestionsWho 

=DarcieQuestionsWho
Darcie: Who?!
*["Well I thought it was you."]
    -> accuse("You")
*[Johnny] 
    -> accuse("Johnny") 
*[Amy] 
    -> accuse("Amy") 
*[Vince] 
    -> accuse("Vince") 
    
=accuse(name)
{name == "You": Darcie: Me?! Oh well...yeah I did randomly fall sick...and...ok. Understandable misunderstanding.}

{name == "Johnny": Darcie: Oh yeah...could definately be. He's been actin' all weird.} 
{name == "Amy": Darcie: I mean.....maybe???? She's been kinda locked in her room, but that's bout it.} 
{name == "Vince": Darcie: Vince? Yeah, definately could be. He was also pretty rattled up about this mornin' too.} 

-> DarcieHelp

= DarcieHelp
Darcie: Then the hell are you doin here?! Go out and find it!! If you need any help, let me know. Though...I'm kinda bedridden right now. 
*["Thanks."] -> leaveDarcie
*["Do you need anything while I'm out?"] -> askForMedicine
=leaveDarcie
{DarcieMad and not angryTalk: Darcie: Ok. Bye.} 
*[You leave the room] -> convoStarter

==DarciePostShopping==
# CLEAR 
<link rel="stylesheet" type="text/css" href="styleDayPostShopping.css"/>
You walk up and knock on the door. 
{DarcieConversation.DarcieMad && not DarcieConversation.confess: ...No reply.} 
{DarcieConversation.confess: Darcie: Come in!} 
*{DarcieConversation.DarcieMad && not DarcieConversation.confess} [You walk away] -> convoStarter
*{DarcieConversation.confess} [Go in] -> DarcieChat

=DarcieChat 
{DarcieChat < 2: Darcie: Hey.}
{ DarcieConversation.confess: 
<- ConfessChat
}
{DarcieConversation.askForMedicine: 
<- MedicineChat
}
*["I think I'm going to go."] 
Darcie: Alright, take care of yourself. -> convoStarter


==ConfessChat==
<link rel="stylesheet" type="text/css" href="styleDayPostShopping.css"/>
Darcie: Did you exorcise the bastard? 
* ["Not yet"] 
Darcie: Well whatcha waiting for?! Go! -> DarciePostShopping.DarcieChat

==MedicineChat==
<link rel="stylesheet" type="text/css" href="styleDayPostShopping.css"/>
*{Shopping.medicine}["You got anything to help with the exorcism?"] -> medicineDeal 
*{not Shopping.medicine}["Sorry, I forgot your medicine"] -> angryAboutMedicine

= medicineDeal
Darcie: Depends, did you get my medicine? 
*[Of course.] 

Darcie: Thanks. Listen, I always keep a bundle of sage in my bathroom. It's mainly to make it smell nice, but I heard it can ward off bad shit. Go ahead and take it. 

**(Sage)[Take Sage.] 
<-DarciePostShopping.DarcieChat 

=angryAboutMedicine
Darcie: Goddamn it!! Gah, I guess that's fine. 
<- DarciePostShopping.DarcieChat 

==AmyPostShopping==
<link rel="stylesheet" type="text/css" href="styleDayPostShopping.css"/>
You knock on her bedroom door.
{AmyConversation < 5: Despite the obvious movement inside, no one answers. -> convoStarter}
{not AmyConversation: Amy: Hey, what's up?} 
{AmyConversation.medium: Amy: Oh...hey.} 

=AmyPostShoppingConvos

*{not AmyConversation}["Can I talk to you for a minute?"] <- AmyConversation.talkToAmy 
*{AmyConversation.medium}["I'm sorry for the medium talk."] -> mediumTalk
*["Have you seen Johnny and Vince anywhere?"] -> seenGuys
*["Gotta go"] -> goodByeAmyPostShopping

=seenGuys 
Amy: I think Vince went out with a couple friends...
*["And Johnny?"] 
Amy: Not sure...maybe he went on a walk or something. 
-> AmyPostShoppingConvos

=mediumTalk
Amy: It's fine... 
*["You seem kind of shaken up"] -> shakenUp
*["Ok"] -> AmyPostShoppingConvos

= shakenUp
Amy: Well yeah. Between Johnny being all angry and now you telling me this...I don't know. 
*["I hope tomorrow is better."] -> tomorrow 
*{MediumTalk && posessed.accuseJohnny}["Please don't tell Johnny."] -> didSheTell 

= didSheTell
{AmyConversation.danger && not tomorrow: Amy: I'm sorry, I already did.} 
{AmyConversation.danger && tomorrow: Amy: You're freaking me out...}
{not AmyConversation.danger: Amy: Ok...if it makes you more comfortable I won't.} 
*{AmyConversation.danger && not tomorrow}["Ok. Thanks for telling me."] -> AmyPostShoppingConvos
*{not AmyConversation.danger && not tomorrow}["Thank you so much."] -> AmyPostShoppingConvos
*(LeaveEarly){AmyConversation.danger && tomorrow} ["I think I'll just leave."] -> goodByeAmyPostShopping
*(BackOff){AmyConversation.danger && tomorrow} ["I'm sorry, I'll back off"] -> AmyPostShoppingConvos

{LeaveEarly or BackOff: 
~ KnowledgeStateJohnny = Knows
}

= tomorrow 
Amy: Yeah...me too. I'll try to talk to Johnny tonight 
*["Please don't"] -> didSheTell
*["Ok."] -> AmyPostShoppingConvos

=goodByeAmyPostShopping
Amy: Bye. 
*[You leave her room.] -> convoStarter

==FinalShowdown== 
{FinalShowdown < 2: You go back into your room and collect your items. Looking at the cup of holy water, you...}
*{MedicineChat.Sage}[Light Sage] -> lightSage
*{Shopping.HolyWater}[Check how much holy water you have] 
There's only so much to exorcise one person. ->FinalShowdown
*[Find posessed person] -> Selection 

= lightSage
You light the Sage and watch the smoke go into the house vent. 
{KnowledgeStateJohnny == Knows: It only takes a couple of moments to hear a wheezing, agonizing cough outside of your door.} 

{KnowledgeStateJohnny == NoKnows: It only takes a couple of moments to hear a wheezing, agonizing cough in the kitchen.} 

-> FinalShowdown

==Selection== 
{VinceWithYou: Vince follows closely behind with his phone flashlight} 
{not FinalShowdown.lightSage: With your holy water in hand, you go to...} 
{FinalShowdown.lightSage && KnowledgeStateJohnny == Knows: Hearing the coughing behind the door, you slowly approach... -> AmbushJohnnyFirst} 

+{FinalShowdown.lightSage or AnJRoom} [Kitchen] -> kitchen
+[Vince's Room] -> VinceRoom
+[Amy and Johnny's Room] -> AnJRoom
+[Darcie's Room] -> DarcieRoom

= AmbushJohnnyFirst 
*(TossSage)[Toss Sage into hall] 
You quickly open the door and briefly see Johnny with pitch black eyes and a frothing mouth. He rapidly lunges at you, but you toss the sage and close the door. The ravage yelling that devolves into coughing, until you hear a knife hit the floor. -> AmbushJohnnyFirst
*[Splash person with holy water] -> SplashPerson

=SplashPerson
{TossSage: You open the door and see Johnny on the floor, tears pouring out of his eyes. Without a second thought, you pour the holy water on him.} 
{not TossSage: You open the door, and in seconds he lunges at you and drives a knife into your shoulder. Pleading in pain, you quickly retaliate and pour the water on him} 

He spazams on the floor, as a double-toned scream echoes throughout the house before his movement stops. With a couple blinks, his eyes return to normal. 

Johnny: What...happened? 

Ending 1/7

-> END

==JohnnyAmbushesYou== 
You open the door, and don't have a moment to react before Johnny lunges at you. His pitch black eyes meet yours, and it's meer seconds before you feel a warmth in your stomach...
*[And look down at the knife plunged in.] 
Instict kicks in and you try to splash him, but he grabs your arm with an inhumane amount of strength. 
 His voice has a deep growl, as though two were intertwined within his throat.
 Johnny: Amy...oh what a good friend of yours...always looking out for you. Always telling others how much of a little freak you are. 
 **[You fall to the floor.] 
 Johnny: The medium dies at the hand of the spirit it once watched. How pitiful. 
 The wretched spirit cackles within the body of your friend as your vision goes black. 
 Ending 2/7 
 -> END 

==VinceRoom==
You slowly walk into Vince's room to see him awake and on his computer. 
{VinceMad: Vince: The hell are you doing?!} 
{KnowledgeStateVince == Knows: Vince: Did you find who it was yet?} 
{KnowledgeStateVince == NoKnows: Vince: Yo, is everything ok?} 

*{KnowledgeStateVince == NoKnows} ["There's a posession happening"] -> posessionHappening
*{KnowledgeStateVince == Knows} ["I need your help."] -> help 
*[Exorsice him] -> VinceReaction

= VinceReaction 
You splash the water on him. 
Vince: Dude what the fuck?! 
{KnowledgeStateVince == Knows: Vince: I'm not posessed!!} 
{KnowledgeStateJohnny == NoKnows: Vince: What is happening?!} 
*["Shit."] -> badEnding1

=posessionHappening
Vince: What?! Why didn't you tell me before?! 
*["Doesn't matter now"] 
Vince: Fuckin- Jeez dude. Ok fine. What can I do? 
**["I need your help."] -> help
**["Stay here"] -> stayHere 

= stayHere
Vince: What?! No, I can help!! 
**["Please stay here."] 
Vince: ...alright. Fine. -> Selection
**["Fine."] -> Selection

= help 
~ VinceWithYou = true 
Vince: Alright! I'm coming with you! 

You see him put on a hoodie and follow you out. 

->Selection

==kitchen==
You slowly make your way into the kitchen to see Johnny still coughing, but a knife in hand. 
*[Silently approach] -> approach
<- KitchenWVince


=KitchenWVince
Vince: I'll distract him, you ambush him. 
*(VinceDistracts)["Good idea"] -> approach
*(VinceStaysBack)["No, stand back and wait in case I'm in trouble."] -> approach 

=approach
As you make your approach you see Johnny glares at you with ravage eyes. 
{VinceDistracts: Vince: HEY SPIRIT. OVER HERE!!} 
{VinceDistracts: It's almost instantanious as Johnny lunges at Vince, plunging the knife into his shoulder} 
{VinceStaysBack: You watch Vince from afar as he, awaits your next move} 

*[Exorcise Johnny] -> kitchenEnding

=kitchenEnding
{VinceDistracts: You run over and pour the water on Johnny before he can get another jab on Vince} 
{VinceStaysBack or not VinceStaysBack or not VinceDistracts: As you approach, Johnny moves as an inhumane pace and jabs the blade into your stomach.} 
{VinceStaysBack: You begin to fall to the floor, and just before the cup slips from your hand, Vince grabs it and pours it over Johnny} 

{VinceDistracts && VinceStaysBack: He spazams on the floor, as a double-toned scream echoes throughout the house before his movement stops. With a couple blinks, his eyes return to normal.} 

{not VinceStaysBack or not VinceDistracts: Your possessed friend cackles with a heinous two-toned voice, continuing to plunge the blade over and over until your vision goes dark.} 

{VinceDistracts or VinceStaysBack: Johnny: What...happened?}

{VinceDistracts: Vince: YOU STABBED ME YOU JACKASS.}
{VinceStaysBack: Vince: YOU STABBED YOUR FRIEND, JACKASS.} 

{VinceDistracts && VinceStaysBack: Johnny: Shit!! We need to call 911!! Now!!}  

{VinceDistracts: Ending 4/7} 
{VinceStaysBack: Ending 5/7} 
{not VinceStaysBack or VinceDistracts: Ending 6/7} 

-> END


== AnJRoom ==
You creep into Amy's room, seeing she is in a deep slumber. 
*[Exorcise Amy] -> badEnding2
*[Look somewhere else] -> Selection 
Where could Johnny be...?
== DarcieRoom ==
As you creep into Darcie's room, you see she is in a deep slumber. 
*[Exorcise Darcie] 
Darcie: The hell are you doing?! Wha-what is this?! -> badEnding1
*[Look somewhere else] -> Selection
Maybe...it's not her. 

==badEnding1==
A sudden screech from the other room calls your attention. Sprinting down the hall with an empty cup, a thought crosses your mind...
What if you exorcised the wrong person? 
You burst into Amy and Johnny's room...
*[And gasp at the horrific sight] 
Johnny's pitch black eyes are a sharp contrast to the bright red blood splattered across his face. You break eye contact with him to meet Amy's cold dead eyes, her chest still spitting blood from the freshly open cavern. The knife in Johnny's hand reflects the moonlight into your eyes. 
**[You try to react] 
But with no holy water left, there's nothing you can do. Johnny rapidly rushes towards the window and leaps through. You try to follow, but as you look out he is long gone into the night. 

Ending 3/7
-> END

==badEnding2==
Amy: Wha-what is this?! Why did you just dump water on me?! 
*["You're not posessed?"] 
Amy: Posessed? Posessed?! What the hell do you mean by- 
In an instant, a sharp pain rings throughout your back as a two-toned cackle fills the room. You try to turn around...
**[Only finding a blade preventing you from doing so.] 
Amy screams in terror as you fall to the floor, briefly meeting the gaze of Johnny's pitch black eyes. He plunges the blade in your back over and over again until the screams silence...
and your vision goes black. 

Ending 7/7

-> END