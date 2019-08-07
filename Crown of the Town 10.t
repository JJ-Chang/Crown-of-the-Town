%Jada Chang
%Jan. 2018
%ISU Project: "Crown of the Town"

import GUI

%Variables
var answer : string := "blank"
var character : string := "blank"
var chrc : int := 0
var chrc1 : int
var click : boolean := false
var continue : boolean := false
var day : int := 0
var degree : int := 5
var ex : int := 980
var ey : int := 10
var fx : int := 660
var fy : int := 540
var gold : int := 100
var gold1 : int := gold
var happy : int := 100
var happy1 : int := happy
var modify : int := 2
var num : int := 1
var people : int := 100
var people1 : int := people
var random : int
var random2 : int
var speak : string := "nothing"
var top : int

%Buttons
var enterButton : int
var yes : int
var no : int

%Fonts
var leafy : int := Font.New ("leafy:40")
var leafy2 : int := Font.New ("leafy:20")
var leafy3 : int := Font.New ("leafy:45")
var leafy4 : int := Font.New ("leafy:30")

%Images
var advisor : int := Pic.FileNew ("advisor.gif")
var advisorF : int := Pic.FileNew ("advisor flip.gif")
var artist : int := Pic.FileNew ("artist.gif")
var artistF : int := Pic.FileNew ("artist flip.gif")
var author : int := Pic.FileNew ("author.gif")
var authorF : int := Pic.FileNew ("author flip.gif")
var bat : int := Pic.FileNew ("bat.gif")
var batF : int := Pic.FileNew ("bat flip.gif")
var cat : int := Pic.FileNew ("cat.gif")
var catF : int := Pic.FileNew ("cat flip.gif")
var cloud : int := Pic.FileNew ("cloud.gif")
var cover : int := Pic.FileNew ("cover2.gif")
var crown : int
var crown1 : int := Pic.FileNew ("crown.gif")
var crown2 : int
var dbox : int := Pic.FileNew ("scroll large.gif")
var dead : int := Pic.FileNew ("game over.jpg")
var emo : int := Pic.FileNew ("emo.gif")
var emoF : int := Pic.FileNew ("emo flip.gif")
var endScreen : int := Pic.FileNew ("ending screen.gif")
var enterButton1 : int := Pic.FileNew ("enter.gif")
var fairy : int := Pic.FileNew ("fairy.gif")
var fairyF : int := Pic.FileNew ("fairy flip.gif")
var farmer : int := Pic.FileNew ("farmer.gif")
var farmerF : int := Pic.FileNew ("farmer flip.gif")
var happiness : int := Pic.FileNew ("happiness.gif")
var happiness2 : int := Pic.FileNew ("happiness 50x50.gif")
var healer : int := Pic.FileNew ("healer.gif")
var healerF : int := Pic.FileNew ("healer flip.gif")
var hunter : int := Pic.FileNew ("hunter.gif")
var hunterF : int := Pic.FileNew ("hunter flip.gif")
var jester : int := Pic.FileNew ("jester.gif")
var jesterF : int := Pic.FileNew ("jester.gif")
var knight : int := Pic.FileNew ("knight.gif")
var knightF : int := Pic.FileNew ("knight flip.gif")
var merchant : int := Pic.FileNew ("merchant.gif")
var merchantF : int := Pic.FileNew ("merchant flip.gif")
var minion : int := Pic.FileNew ("minion.gif")
var minionF : int := Pic.FileNew ("minion flip.gif")
var money : int := Pic.FileNew ("money.gif")
var money2 : int := Pic.FileNew ("money 50x50.gif")
var n : int := Pic.FileNew ("no.gif")
var owl : int := Pic.FileNew ("owl.gif")
var owlF : int := Pic.FileNew ("owl flip.gif")
var penguin : int := Pic.FileNew ("penguin.gif")
var penguinF : int := Pic.FileNew ("penguin flip.gif")
var population : int := Pic.FileNew ("population.gif")
var population2 : int := Pic.FileNew ("population 50x50.gif")
var potato : int := Pic.FileNew ("potato seller.gif")
var potatoF : int := Pic.FileNew ("potato seller flip.gif")
var potatoBomb : int := Pic.FileNew ("potato bomb seller.gif")
var potatoBombF : int := Pic.FileNew ("poato bomb seller flip.gif")
var robot : int := Pic.FileNew ("robot.gif")
var robotF : int := Pic.FileNew ("robot flip.gif")
var rocket : int := Pic.FileNew ("rocket chair man.gif")
var rocketF : int := Pic.FileNew ("rocket chair man flip.gif")
var rockstar : int := Pic.FileNew ("rockstar.gif")
var rockstarF : int := Pic.FileNew ("rockstar flip.gif")
var scroll : int := Pic.FileNew ("day scroll.gif")
var stats : int := Pic.FileNew ("scroll small.gif")
var superhero : int := Pic.FileNew ("superhero.gif")
var superheroF : int := Pic.FileNew ("superhero flip.gif")
var sword : int := Pic.FileNew ("sword.gif")
var swordF : int := Pic.FileNew ("sword flip.gif")
var teen : int := Pic.FileNew ("teen.gif")
var teenF : int := Pic.FileNew ("teen flip.gif")
var turtle : int := Pic.FileNew ("turtle.gif")
var turtleF : int := Pic.FileNew ("turtle flip.gif")
var throne : int := Pic.FileNew ("throne room.gif")
var wheelchair : int := Pic.FileNew ("wheelchair.gif")
var wheelchairF : int := Pic.FileNew ("wheelchair flip.gif")
var y : int := Pic.FileNew ("yes.gif")

%Arrays
var dialogue : flexible array 1 .. 0 of string

%Forward procedures
forward procedure yesAdvisor1
forward procedure noAdvisor1
forward procedure advisorTalk
forward procedure advisor1
forward procedure advisorAs
forward procedure advisor1A
forward procedure yesArtist1
forward procedure artist1
forward procedure artistAs
forward procedure artist1A
forward procedure noArtist1
forward procedure artistTalk
forward procedure fairy1
forward procedure fairyA1
forward procedure yesFairy1
forward procedure noFairy1
forward procedure fairyTalk
forward procedure fairyAs
forward procedure bat1
forward procedure batA1
forward procedure yesBat1
forward procedure noBat1
forward procedure batTalk
forward procedure batAs
forward procedure healer1
forward procedure healerA1
forward procedure yesHealer1
forward procedure noHealer1
%forward procedure healerTalk
forward procedure healerAs
forward procedure dayEnd
forward procedure potato1
forward procedure potatoTalk
forward procedure potato1A
forward procedure yesPotato1
forward procedure noPotato1
forward procedure potatoAs
forward procedure hunter1
forward procedure hunter1A
forward procedure yesHunter1
forward procedure noHunter1
forward procedure hunterTalk
forward procedure hunterAs
forward procedure merchant1
forward procedure merchant1A
forward procedure yesMerchant1
forward procedure noMerchant1
forward procedure merchantTalk
forward procedure merchantAs
forward procedure rocket1
forward procedure rocket1A
forward procedure yesRocket1
forward procedure noRocket1
forward procedure rocketTalk
forward procedure rocketAs
forward procedure knight1
forward procedure knight1A
forward procedure yesKnight1
forward procedure noKnight1
forward procedure knightTalk
forward procedure knightAs
forward procedure emo1
forward procedure emo1A
forward procedure yesEmo1
forward procedure noEmo1
forward procedure emoTalk
forward procedure emoAs
forward procedure rockstar1
forward procedure rockstar1A
forward procedure yesRockstar1
forward procedure noRockstar1
forward procedure rockstarTalk
forward procedure rockstarAs
forward procedure turtle1
forward procedure turtle1A
forward procedure yesTurtle1
forward procedure noTurtle1
forward procedure turtleTalk
forward procedure turtleAs
forward procedure jester1
forward procedure jester1A
forward procedure yesJester1
forward procedure noJester1
forward procedure jesterTalk
forward procedure jesterAs
forward procedure teen1
forward procedure teen1A
forward procedure yesTeen1
forward procedure noTeen1
forward procedure teenTalk
forward procedure teenAs
forward procedure penguin1
forward procedure penguin1A
forward procedure yesPenguin1
forward procedure noPenguin1
forward procedure penguinTalk
forward procedure penguinAs
forward procedure sword1
forward procedure sword1A
forward procedure yesSword1
forward procedure noSword1
forward procedure swordTalk
forward procedure swordAs
forward procedure author1
forward procedure author1A
forward procedure yesAuthor1
forward procedure noAuthor1
forward procedure authorTalk
forward procedure authorAs
forward procedure owl1
forward procedure owl1A
forward procedure yesOwl1
forward procedure noOwl1
forward procedure owlTalk
forward procedure owlAs
forward procedure robot1
forward procedure robot1A
forward procedure yesRobot1
forward procedure noRobot1
forward procedure robotTalk
forward procedure robotAs
forward procedure wheelchair1
forward procedure wheelchair1A
forward procedure yesWheelchair1
forward procedure noWheelchair1
forward procedure wheelchairTalk
forward procedure wheelchairAs
forward procedure minion1
forward procedure minion1A
forward procedure yesMinion1
forward procedure noMinion1
forward procedure minionTalk
forward procedure minionAs
forward procedure farmer1
forward procedure farmer1A
forward procedure yesFarmer1
forward procedure noFarmer1
forward procedure farmerTalk
forward procedure farmerAs
forward procedure cat1
forward procedure cat1A
forward procedure yesCat1
forward procedure noCat1
forward procedure catTalk
forward procedure catAs
forward procedure superhero1
forward procedure superhero1A
forward procedure yesSuperhero1
forward procedure noSuperhero1
forward procedure superheroTalk
forward procedure superheroAs
forward procedure advisor2
forward procedure yesAdvisor2
forward procedure noAdvisor2
forward procedure artist2
forward procedure yesArtist2
forward procedure noArtist2
forward procedure fairy2
forward procedure yesFairy2
forward procedure noFairy2
forward procedure bat2
forward procedure yesBat2
forward procedure noBat2
forward procedure healer2
forward procedure yesHealer2
forward procedure noHealer2
forward procedure advisor2A
forward procedure potato2
forward procedure yesPotato2
forward procedure noPotato2
forward procedure hunter2
forward procedure merchant2
forward procedure rocket2
forward procedure knight2
forward procedure emo2
forward procedure rockstar2
forward procedure turtle2
forward procedure jester2
forward procedure teen2
forward procedure penguin2
forward procedure sword2
forward procedure author2
forward procedure owl2
forward procedure robot2
forward procedure wheelchair2
forward procedure minion2
forward procedure farmer2
forward procedure cat2
forward procedure superhero2
forward procedure advisor3
forward procedure artist3
forward procedure rocket3
forward procedure author3
forward procedure robot3

%Procedures/processes
%Title screen crown animation
process crowns
    crown2 := Pic.Rotate (crown1, degree, -1, -1)
    crown := Sprite.New (crown2)
    Sprite.SetPosition (crown, 60, 260, false)
    Sprite.Show (crown)
    loop
	crown2 := Pic.Rotate (crown1, degree, -1, -1)
	Sprite.Animate (crown, crown2, 60, 260, false)
	degree := degree + modify
	if degree >= 45 or degree >= 225 then
	    modify := modify * -1
	end if
	delay (40)
	exit when click = true
    end loop
    Pic.Free (crown1)
    Pic.Free (crown2)
    Sprite.Free (crown)
end crowns

process music
    Music.PlayFileLoop ("little idea.mp3")
end music

process emoMusic
    Music.PlayFile ("Welcome to the Black Parade.mp3")
    fork music
end emoMusic

%Redraw main screen
procedure main
    cls
    Pic.Draw (cloud, 160, 400, picMerge)
    Pic.Draw (cloud, 360, 340, picMerge)
    Pic.Draw (cloud, 520, 460, picMerge)
    Pic.Draw (cloud, 720, 380, picMerge)
    Pic.Draw (throne, 0, 0, picMerge)
    Pic.Draw (dbox, 580, 380, picMerge)
    GUI.Refresh
end main

%Display stats
procedure ctrl
    Pic.Draw (stats, 20, 20, picMerge)
    Pic.Draw (population, 60, 90, picMerge)
    Pic.Draw (happiness, 60, 60, picMerge)
    Pic.Draw (money, 60, 30, picMerge)

    Font.Draw (intstr (people), 100, 90, leafy2, black)
    Font.Draw (intstr (happy), 100, 60, leafy2, black)
    Font.Draw (intstr (gold), 100, 30, leafy2, black)
    GUI.Refresh
end ctrl

%Character entrace
procedure enter
    Sprite.SetPosition (chrc, 980, 20, false)
    Sprite.Show (chrc)
    loop
	Sprite.Animate (chrc, chrc1, ex, ey, false)
	delay (15)
	ex := ex - 2
	exit when ex <= 700
    end loop
end enter

procedure flyingEnter
    Sprite.SetPosition (chrc, 980, 220, false)
    Sprite.Show (chrc)
    loop
	Sprite.Animate (chrc, chrc1, ex, 220, false)
	delay (15)
	ex := ex - 2
	exit when ex <= 700
    end loop
end flyingEnter

%Character exit
procedure leave
    main
    ctrl
    Sprite.SetPosition (chrc, 700, 20, false)
    Sprite.Show (chrc)

    loop
	Sprite.Animate (chrc, chrc1, ex, ey, false)
	delay (15)
	ex := ex + 2
	exit when ex >= 980
    end loop

    Sprite.Free (chrc)
end leave

%Dialogue box
procedure talk
    Font.Draw (character, 700, 290, leafy4, 111)

    if num = top then
	GUI.Enable (yes)
	GUI.Enable (no)
	GUI.Disable (enterButton)
    end if

    speak := dialogue (num)
    for i : 1 .. length (speak)
	var speak1 : string := speak (i)
	delay (20)
	Font.Draw (speak1, fx, fy, leafy2, black)
	fx := fx + 17

	if fx + 40 > 880 and speak (i) = " " then
	    fx := 660
	    fy := fy - 22
	end if

	if fx >= 880 then
	    fx := 660
	    fy := fy - 22
	end if
    end for


    fx := 660
    fy := 540

    if num = top then
	num := 1
	for i : 1 .. upper (dialogue)
	    dialogue (i) := ""
	end for
    end if
end talk

%Enter button
procedure next
    num := num + 1
    main
    ctrl
    talk
end next

%Game over
procedure gameOver
    Music.PlayFileStop
    Music.PlayFileLoop ("sad.mp3")
    Pic.DrawSpecial (dead, 0, 0, picCopy, picFadeIn, 2000)
end gameOver

%INTRO
%Intro dialogue
procedure intro
    top := 10
    new dialogue, 10
    character := "Royal Advisor"

    dialogue (1) := "Your Majesty! Welcome to your castle. Our town is currently in a tight spot,"
    dialogue (2) := "our population and resources declined since the last monarch left."
    dialogue (3) := "As our brand new monarch, it's your responsibility to make decisions for the town."
    dialogue (4) := "Your decisions will affect the town's population and happiness."
    dialogue (5) := "You also have full reign of the town's treasury. However, please keep in mind, if you deplete"
    dialogue (6) := "any of these three things, you will be impeached, and we will be forced to abandon our town."
    dialogue (7) := "So please, make choices with our best interests in  mind. Today is your first day as our ruler."
    dialogue (8) := "The longer you represent the crown, the more responsibilities we will give you. Do your best,"
    dialogue (9) := "and prove that you are deserving of the crown."
    dialogue (10) := "Do you understand what will be required of you?"

    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end intro

%Intro answers
procedure introA
    if answer = "yes" then
	happy := happy + 5
	main
	ctrl
	GUI.Disable (yes)
	GUI.Disable (no)
	GUI.Enable (enterButton)
	answer := "blank"

	Sprite.Free (chrc)
	chrc := Sprite.New (advisorF)
	chrc1 := advisorF
	leave

	GUI.Dispose (yes)
	GUI.Dispose (no)

	main
	ctrl
	continue := true
    elsif answer = "no" then
	main
	ctrl
	GUI.Disable (yes)
	GUI.Disable (no)
	GUI.Enable (enterButton)
	answer := "blank"
	intro

	% GUI.Dispose (yes)
	% GUI.Dispose (no)

	main
	ctrl
    end if
end introA

%Yes button intro
procedure yesIntro
    answer := "yes"
    introA
end yesIntro

%No button intro
procedure noIntro
    answer := "no"
    introA
end noIntro

%ROYAL ADVISOR
%Royal Advisor dialogue
body procedure advisor1
    chrc := Sprite.New (advisor)
    chrc1 := advisor
    enter

    GUI.Enable (enterButton)
    %var test : int := GUI.CreateButton (900, 500, 0, "TEST", test)

    new dialogue, 2
    top := 2
    character := "Royal Advisor"
    num := 1
    dialogue (1) := "There are some refugees seeking entry to the town."
    dialogue (2) := "Should we let them in?"

    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end advisor1

body procedure advisor2
    chrc := Sprite.New (advisor)
    chrc1 := advisor
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Royal Advisor"
    num := 1
    dialogue (1) := "There are some travelling merchants who have raised quite a profit in town."
    dialogue (2) := "Should I tax them?"
    advisorTalk
end advisor2

body procedure advisor3
    chrc := Sprite.New (advisor)
    chrc1 := advisor
    enter

    GUI.Enable (enterButton)

    new dialogue, 3
    top := 3
    character := "Royal Advisor"
    num := 1
    dialogue (1) := "Some citizens have fallen sick,"
    dialogue (2) := "and are asking for gold to help them pay for their medical bills."
    dialogue (3) := "Should we give it to them?"
    advisorTalk
end advisor3

%Royal Advisor Answers
body procedure advisor1A
    if answer = "yes" then
	happy := happy + 6
	people := people + 6
	advisorAs
    elsif answer = "no" then
	happy := happy - 3
	advisorAs
    end if
end advisor1A

body procedure advisor2A
    if answer = "yes" then
	gold := gold + 40
	happy := happy - 2
	advisorAs
    elsif answer = "no" then
	%nothing
	advisorAs
    end if
end advisor2A

procedure advisor3A
    if answer = "yes" then
	gold := gold - 80
	happy := happy + 6
    elsif answer = "no" then
	people := people - 6
	happy := happy - 12
    end if
    advisorAs
end advisor3A

%Royal Advisor buttons
%Yes buttons advisor
body procedure yesAdvisor1
    answer := "yes"
    advisor1A
end yesAdvisor1

body procedure yesAdvisor2
    answer := "yes"
    advisor2A
end yesAdvisor2

procedure yesAdvisor3
    answer := "yes"
    advisor3A
end yesAdvisor3

%No buttons advisor
body procedure noAdvisor1
    answer := "no"
    advisor1A
end noAdvisor1

body procedure noAdvisor2
    answer := "no"
    advisor2A
end noAdvisor2

procedure noAdvisor3
    answer := "no"
    advisor3A
end noAdvisor3

%Advisor other
body procedure advisorTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end advisorTalk

body procedure advisorAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"

    Sprite.Free (chrc)
    chrc := Sprite.New (advisorF)
    chrc1 := advisorF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)

    main
    ctrl
    continue := true
end advisorAs

%ARTIST
%Artist Dialogue
body procedure artist1
    chrc := Sprite.New (artist)
    chrc1 := artist
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Artist"
    num := 1
    dialogue (1) := "Would you like me to paint your portrait?"
    dialogue (2) := "I'm sure it would fetch a handsome sum of money!"
    artistTalk
end artist1

body procedure artist2
    chrc := Sprite.New (artist)
    chrc1 := artist
    enter

    GUI.Enable (enterButton)

    new dialogue, 1
    top := 1
    character := "Artist"
    num := 1
    dialogue (1) := "Could I borrow some gold to purchase some art supplies?"
    artistTalk
end artist2

body procedure artist3
    chrc := Sprite.New (artist)
    chrc1 := artist
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Artist"
    num := 1
    dialogue (1) := "My art gallery is doing great!"
    dialogue (2) := "I am here to share some of my revenue."
    artistTalk
end artist3

%Artist responses
body procedure artist1A
    if answer = "yes" then
	happy := happy + 3
	gold := gold + 50
	artistAs
    elsif answer = "no" then
	happy := happy - 5
	artistAs
    end if
end artist1A

procedure artist2A
    if answer = "yes" then
	gold := gold - 3
	happy := happy + 2
	artistAs
    elsif answer = "no" then
	happy := happy - 4
	artistAs
    end if
end artist2A

procedure artist3A
    if answer = "yes" then
	gold := gold + 10
	people := people + 10
    elsif answer = "no" then
	%nothing
    end if
    artistAs
end artist3A

%Yes buttons artist
body procedure yesArtist1
    answer := "yes"
    artist1A
end yesArtist1

body procedure yesArtist2
    answer := "yes"
    artist2A
end yesArtist2

procedure yesArtist3
    answer := "yes"
    artist2A
end yesArtist3

%No buttons artist
body procedure noArtist1
    answer := "no"
    artist1A
end noArtist1

body procedure noArtist2
    answer := "no"
    artist2A
end noArtist2

procedure noArtist3
    answer := "no"
    artist3A
end noArtist3

%Artist Other
body procedure artistTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end artistTalk

body procedure artistAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (artistF)
    chrc1 := artistF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end artistAs

%FAIRY
%Fairy dialogue
body procedure fairy1
    chrc := Sprite.New (fairy)
    chrc1 := fairy
    flyingEnter

    GUI.Enable (enterButton)
    %var test : int := GUI.CreateButton (900, 500, 0, "TEST", test)

    new dialogue, 2
    top := 2
    character := "Fairy"
    num := 1
    dialogue (1) := "Would you like me to sprinkle some fairy dust magic on you?"
    dialogue (2) := "Anything could happen!"
    fairyTalk
end fairy1

%Dialogue
body procedure fairy2
    chrc := Sprite.New (fairy)
    chrc1 := fairy
    enter

    GUI.Enable (enterButton)

    new dialogue, 1
    top := 1
    character := "Fairy"
    num := 1
    dialogue (1) := "May I have some gold to help my friends move into the town?"
    fairyTalk
end fairy2

%Fairy answers
body procedure fairyA1
    if answer = "yes" then
	randint (random2, 1, 3)
	if random2 = 1 then
	    happy := happy + 4
	    gold := gold + 20
	elsif random2 = 2 then
	    happy := happy - 3
	    gold := gold - 10
	elsif random2 = 3 then
	    people := people + 6
	    happy := happy + 5
	    gold := gold + 100
	end if
	fairyAs
    elsif answer = "no" then
	happy := happy - 10
	fairyAs
    end if
end fairyA1

procedure fairy2A
    if answer = "yes" then
	gold := gold - 30
	people := people + 6
	fairyAs
    elsif answer = "no" then
	happy := happy - 5
	fairyAs
    end if
end fairy2A

%Fairy yes buttons
body procedure yesFairy1
    answer := "yes"
    fairyA1
end yesFairy1

body procedure yesFairy2
    answer := "yes"
    fairy2A
end yesFairy2

%Fairy no buttons
body procedure noFairy1
    answer := "no"
    fairyA1
end noFairy1

body procedure noFairy2
    answer := "no"
    fairy2A
end noFairy2

%Fairy other
body procedure fairyTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end fairyTalk

body procedure fairyAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (fairyF)
    chrc1 := fairyF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
    %Sprite.Free (chrc)
end fairyAs

%BAT
%Bat Dialogue
body procedure bat1
    chrc := Sprite.New (bat)
    chrc1 := bat
    character := "Bat"
    flyingEnter

    GUI.Enable (enterButton)
    new dialogue, 3
    top := 3
    num := 1

    dialogue (1) := "Do you know about someone named Batman?"
    dialogue (2) := "I heard he eats bats..."
    dialogue (3) := "Do you think he'll try to eat me?"
    batTalk
end bat1

body procedure bat2
    chrc := Sprite.New (bat)
    chrc1 := bat
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Bat"
    num := 1
    dialogue (1) := "The sun is creeping into my cave while I'm trying to sleep."
    dialogue (2) := "Can I have some gold to purchase a curtain?"
    batTalk
end bat2

%Bat answers
body procedure batA1
    if answer = "yes" then
	happy := happy - 3
    elsif answer = "no" then
	happy := happy + 4
    end if
    batAs
end batA1

procedure bat2A
    if answer = "yes" then
	gold := gold - 10
	happy := happy + 9
	batAs
    elsif answer = "no" then
	happy := happy - 1
	gold := gold + 2
	batAs
    end if
end bat2A

%Bat buttons
%Yes bat buttons
body procedure yesBat1
    answer := "yes"
    batA1
end yesBat1

body procedure yesBat2
    answer := "yes"
    bat2A
end yesBat2

%No bat buttons
body procedure noBat1
    answer := "no"
    batA1
end noBat1

body procedure noBat2
    answer := "no"
    bat2A
end noBat2

%Bat other
body procedure batTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end batTalk

body procedure batAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (batF)
    chrc1 := batF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end batAs

%HEALER
%Healer dialogue
body procedure healer1
    GUI.Enable (enterButton)
    top := 4
    new dialogue, 4
    character := "Healer"

    chrc := Sprite.New (healer)
    chrc1 := healer
    enter

    dialogue (1) := " Your Majesty, would you like to buy some healing crystals?"
    dialogue (2) := "They will cure headaches and colds,"
    dialogue (3) := "give you a burst of strength and energy,"
    dialogue (4) := "and they also work as nice air fresheners!"

    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end healer1

body procedure healer2
    chrc := Sprite.New (healer)
    chrc1 := healer
    enter

    GUI.Enable (enterButton)

    new dialogue, 4
    top := 4
    character := "Royal Advisor"
    num := 1
    dialogue (1) := "My friend has fallen sick!"
    dialogue (2) := "My healing crystals are not enough to heal her,"
    dialogue (3) := "may I ask for some gold to pay for some assistants"
    dialogue (4) := "and medical supplies?"
    talk
end healer2

%Healer answers
body procedure healerA1
    if answer = "yes" then
	happy := happy + 3
	gold := gold - 10
    elsif answer = "no" then
	happy := happy - 2
    end if
    healerAs
end healerA1

procedure healer2A
    if answer = "yes" then
	gold := gold - 50
	people := people + 5
	happy := happy + 2
    elsif answer = "no" then
	happy := happy - 10
	people := people - 1
    end if
    healerAs
end healer2A

%Healer buttons
%Yes healer buttons
body procedure yesHealer1
    answer := "yes"
    healerA1
end yesHealer1

body procedure yesHealer2
    answer := "yes"
    healer2A
end yesHealer2

%No healer buttons
body procedure noHealer1
    answer := "no"
    healerA1
end noHealer1

%No button
body procedure noHealer2
    answer := "no"
    healer2A
end noHealer2

%Healer other
body procedure healerAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (healerF)
    chrc1 := healerF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end healerAs

%POTATO SELLER
%Potato Seller Dialogue
body procedure potato1
    chrc := Sprite.New (potato)
    chrc1 := potato
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Potato Seller"
    num := 1

    dialogue (1) := "Would you like to buy my potatoes?"
    dialogue (2) := "They will make a delicious meal!"
    potatoTalk
end potato1

body procedure potato2
    chrc := Sprite.New (potatoBomb)
    chrc1 := potatoBomb
    enter

    GUI.Enable (enterButton)

    new dialogue, 5
    top := 5
    character := "Potato Bomb Seller"
    num := 1
    dialogue (1) := "Besides potatoes, I have a passion for making bombs and engineering."
    dialogue (2) := "Would you like to buy some of my bombs for your army?"
    dialogue (3) := "They're very good for tricking the enemy into thinking they're just potatoes,"
    dialogue (4) := "and if the soldiers run out of rations,"
    dialogue (5) := "they can eat these bombs!"
    potatoTalk
end potato2

%Potato Seller responses
body procedure potato1A
    if answer = "yes" then
	gold := gold - 5
	happy := happy + 2
	potatoAs
    elsif answer = "no" then
	happy := happy - 6
	potatoAs
    end if
end potato1A

procedure potato2A
    if answer = "yes" then
	gold := gold - 20
	people := people + 4
    elsif answer = "no" then
	happy := happy - 5
	people := people - 7
    end if
    potatoAs
end potato2A

%Yes buttons Potato Seller
body procedure yesPotato1
    answer := "yes"
    potato1A
end yesPotato1

body procedure yesPotato2
    answer := "yes"
    potato2A
end yesPotato2

%No buttons Potato Seller
body procedure noPotato1
    answer := "no"
    potato1A
end noPotato1

body procedure noPotato2
    answer := "no"
    potato2A
end noPotato2

%Potato Seller Other
body procedure potatoTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end potatoTalk

body procedure potatoAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (potatoF)
    chrc1 := potatoF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end potatoAs

%HUNTER
%Hunter Dialogue
body procedure hunter1
    chrc := Sprite.New (hunter)
    chrc1 := hunter
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Royal Hunter"
    num := 1
    dialogue (1) := "The hunters brigade would like to offer you our finest catch of venison!"
    dialogue (2) := "Free, of course!"
    hunterTalk
end hunter1

body procedure hunter2
    chrc := Sprite.New (hunter)
    chrc1 := hunter
    enter

    GUI.Enable (enterButton)

    new dialogue, 4
    top := 4
    character := "Hunter"
    num := 1
    dialogue (1) := "I really like my friend Monika,"
    dialogue (2) := "I want ask her to go on a date with me."
    dialogue (3) := "I plan to take her horseback riding."
    dialogue (4) := "Do you think it will go well?"
    hunterTalk
end hunter2

%Hunter responses
body procedure hunter1A
    if answer = "yes" then
	happy := happy + 6
	hunterAs
    elsif answer = "no" then
	hunterAs
    end if
end hunter1A

procedure hunter2A
    if answer = "yes" then
	happy := happy + 3
    elsif answer = "no" then
	happy := happy - 2
    end if
    hunterAs
end hunter2A

%Yes buttons hunter
body procedure yesHunter1
    answer := "yes"
    hunter1A
end yesHunter1

procedure yesHunter2
    answer := "yes"
    hunter2A
end yesHunter2

%No buttons hunter
body procedure noHunter1
    answer := "no"
    hunter1A
end noHunter1

procedure noHunter2
    answer := "no"
    hunter2A
end noHunter2

%Hunter Other
body procedure hunterTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end hunterTalk

body procedure hunterAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (hunterF)
    chrc1 := hunterF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end hunterAs

%MERCHANT
%Merchant Dialogue
body procedure merchant1
    chrc := Sprite.New (merchant)
    chrc1 := merchant
    enter

    GUI.Enable (enterButton)

    new dialogue, 3
    top := 3
    character := "Merchant"
    num := 1
    dialogue (1) := " I have a trade proposition for your town."
    dialogue (2) := "Give me 10 men to work on my crew,"
    dialogue (3) := "and we will bring great riches to your town."
    merchantTalk
end merchant1

body procedure merchant2
    chrc := Sprite.New (merchant)
    chrc1 := merchant
    enter

    GUI.Enable (enterButton)

    new dialogue, 3
    top := 3
    character := "Merchant"
    num := 1
    dialogue (1) := "I have travelled far and wide,"
    dialogue (2) := "and I am here to offer you the finest products from across the kingdoms."
    dialogue (3) := "Would you like to make a purchase?"
    merchantTalk
end merchant2

%Merchant responses
body procedure merchant1A
    if answer = "yes" then
	people := people - 10
	gold := gold + 300
	merchantAs
    elsif answer = "no" then
	happy := happy - 5
	merchantAs
    end if
end merchant1A

procedure merchant2A
    if answer = "yes" then
	gold := gold - 80
	happy := happy + 30
    elsif answer = "no" then
	happy := happy - 10
	people := people - 1
    end if
    merchantAs
end merchant2A

%Yes buttons merchant
body procedure yesMerchant1
    answer := "yes"
    merchant1A
end yesMerchant1

procedure yesMerchant2
    answer := "yes"
    merchant2A
end yesMerchant2

%No buttons merchant
body procedure noMerchant1
    answer := "no"
    merchant1A
end noMerchant1

procedure noMerchant2
    answer := "no"
    merchant2A
end noMerchant2

%Merchant Other
body procedure merchantTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end merchantTalk

body procedure merchantAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (merchantF)
    chrc1 := merchantF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end merchantAs

%ROCKET
%Rocket Dialogue
body procedure rocket1
    chrc := Sprite.New (rocket)
    chrc1 := rocket
    enter

    GUI.Enable (enterButton)

    new dialogue, 4
    top := 4
    character := "Rocket"
    num := 1
    dialogue (1) := "Greetings your majesty."
    dialogue (2) := "I have detected someone attempting to hack the castle's classified information."
    dialogue (3) := "For a small fee,"
    dialogue (4) := "I can strengthen the security system's firewalls."
    rocketTalk
end rocket1

body procedure rocket2
    chrc := Sprite.New (rocket)
    chrc1 := rocket
    enter

    GUI.Enable (enterButton)

    new dialogue, 3
    top := 3
    character := "Rocket"
    num := 1
    dialogue (1) := "Hello your majesty,"
    dialogue (2) := "I am programing a game and I need funding."
    dialogue (3) := "Will you sponsor me?"
    rocketTalk
end rocket2

body procedure rocket3
    chrc := Sprite.New (rocket)
    chrc1 := rocket
    enter

    GUI.Enable (enterButton)

    new dialogue, 3
    top := 3
    character := "Rocket"
    num := 1
    dialogue (1) := "At last, I've created a device that can cook food almost instantly!"
    dialogue (2) := "Introducing, the Instant Pot!"
    dialogue (3) := "Would your majesty like to purchase one for the low price of 100 gold?"
    rocketTalk
end rocket3

%Rocket responses
body procedure rocket1A
    if answer = "yes" then
	happy := happy + 5
	gold := gold - 30
	rocketAs
    elsif answer = "no" then
	happy := happy - 3
	rocketAs
    end if
end rocket1A

procedure rocket2A
    if answer = "yes" then
	gold := gold - 30
	people := people + 3
    elsif answer = "no" then
	happy := happy - 4
	people := people - 5
    end if
    rocketAs
end rocket2A

procedure rocket3A
    if answer = "yes" then
	gold := gold - 100
	happy := happy + 12
    elsif answer = "no" then
	happy := happy - 6
    end if
    rocketAs
end rocket3A

%Yes buttons Rocket
body procedure yesRocket1
    answer := "yes"
    rocket1A
end yesRocket1

procedure yesRocket2
    answer := "yes"
    rocket2A
end yesRocket2

procedure yesRocket3
    answer := "yes"
    rocket3A
end yesRocket3

%No buttons Rocket
body procedure noRocket1
    answer := "no"
    rocket1A
end noRocket1

procedure noRocket2
    answer := "no"
    rocket2A
end noRocket2

procedure noRocket3
    answer := "no"
    rocket3A
end noRocket3

%Rocket Other
body procedure rocketTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end rocketTalk

body procedure rocketAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (rocketF)
    chrc1 := rocketF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end rocketAs

%KNIGHT
%Knight Dialogue
body procedure knight1
    chrc := Sprite.New (knight)
    chrc1 := knight
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Knight"
    num := 1
    dialogue (1) := "We have discovered a suspicious figure trying to enter the castle."
    dialogue (2) := "Shall we eliminate them?"
    knightTalk
end knight1

body procedure knight2
    chrc := Sprite.New (knight)
    chrc1 := knight
    enter

    GUI.Enable (enterButton)

    new dialogue, 4
    top := 4
    character := "Knight"
    num := 1
    dialogue (1) := "The royal guard requires new armour and weapons."
    dialogue (2) := "I am here to ask for gold to supply them."
    dialogue (3) := "Remember, your highness,"
    dialogue (4) := "a well-protected town is a happy one!"
    knightTalk
end knight2

%Knight responses
body procedure knight1A
    if answer = "yes" then
	happy := happy + 5
	people := people - 1
	knightAs
    elsif answer = "no" then
	happy := happy - 3
	gold := gold - 2
	knightAs
    end if
end knight1A

procedure knight2A
    if answer = "yes" then
	gold := gold - 40
	happy := happy + 10
    elsif answer = "no" then
	happy := happy - 10
	people := people - 5
    end if
    knightAs
end knight2A

%Yes buttons knight
body procedure yesKnight1
    answer := "yes"
    knight1A
end yesKnight1

procedure yesKnight2
    answer := "yes"
    knight2A
end yesKnight2

%No buttons Knight
body procedure noKnight1
    answer := "no"
    knight1A
end noKnight1

procedure noKnight2
    answer := "no"
    knight2A
end noKnight2

%Knight Other
body procedure knightTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end knightTalk

body procedure knightAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (knightF)
    chrc1 := knightF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end knightAs

%EMO
%Emo Dialogue
body procedure emo1
    chrc := Sprite.New (emo)
    chrc1 := emo
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Emo"
    num := 1
    dialogue (1) := "Would you like to listen to some music?"
    dialogue (2) := "It's my favourite song. (Turn up your volume.)"
    emoTalk
end emo1

body procedure emo2
    chrc := Sprite.New (emo)
    chrc1 := emo
    enter

    GUI.Enable (enterButton)

    new dialogue, 1
    top := 1
    character := "Emo"
    num := 1
    dialogue (1) := "Can you blink 182 times?"
    emoTalk
end emo2

%Emo responses
body procedure emo1A
    if answer = "yes" then
	happy := happy + 5
	fork emoMusic
	emoAs
    elsif answer = "no" then
	happy := happy - 5
	emoAs
    end if
end emo1A

procedure emo2A
    if answer = "yes" then
	happy := happy + 5
    elsif answer = "no" then
	happy := happy - 182
    end if
    emoAs
end emo2A

%Yes buttons emo
body procedure yesEmo1
    answer := "yes"
    emo1A
end yesEmo1

procedure yesEmo2
    answer := "yes"
    emo2A
end yesEmo2

%No buttons emo
body procedure noEmo1
    answer := "no"
    emo1A
end noEmo1

procedure noEmo2
    answer := "no"
    emo2A
end noEmo2

%Emo Other
body procedure emoTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end emoTalk

body procedure emoAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)

    chrc := Sprite.New (emoF)
    chrc1 := emoF
    leave

    % if answer = "yes" then
    %     Music.PlayFileStop
    %     fork music
    % end if

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end emoAs

%ROCKSTAR
%Rockstar Dialogue
body procedure rockstar1
    chrc := Sprite.New (rockstar)
    chrc1 := rockstar
    enter

    GUI.Enable (enterButton)

    new dialogue, 3
    top := 3
    character := "Rockstar"
    num := 1
    dialogue (1) := "Your majesty!"
    dialogue (2) := "I would love it if you were to attend my concert tonight."
    dialogue (3) := "Will you come?"
    rockstarTalk
end rockstar1

body procedure rockstar2
    chrc := Sprite.New (rockstar)
    chrc1 := rockstar
    enter

    GUI.Enable (enterButton)

    new dialogue, 5
    top := 5
    character := "Rockstar"
    num := 1
    dialogue (1) := "I'm writing a new song, here are some sample lines:"
    dialogue (2) := "Rising up, back on the street. Did my time, took my chances."
    dialogue (3) := "Went the distance, now I'm back on my feet!"
    dialogue (4) := "Just a man, and his will to survive."
    dialogue (5) := "Do you like it?"
    rockstarTalk
end rockstar2

%Rockstar responses
body procedure rockstar1A
    if answer = "yes" then
	gold := gold - 5
	happy := happy + 5
	rockstarAs
    elsif answer = "no" then
	happy := happy - 5
	rockstarAs
    end if
end rockstar1A

procedure rockstar2A
    if answer = "yes" then
	happy := happy + 10
    elsif answer = "no" then
	happy := happy - 6
    end if
    rockstarAs
end rockstar2A

%Yes buttons rockstar
body procedure yesRockstar1
    answer := "yes"
    rockstar1A
end yesRockstar1

procedure yesRockstar2
    answer := "yes"
    rockstar2A
end yesRockstar2

%No buttons rockstar
body procedure noRockstar1
    answer := "no"
    rockstar1A
end noRockstar1

procedure noRockstar2
    answer := "no"
    rockstar2A
end noRockstar2

%Rockstar Other
body procedure rockstarTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end rockstarTalk

body procedure rockstarAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (rockstarF)
    chrc1 := rockstarF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end rockstarAs

%TURTLE
%Turtle Dialogue
body procedure turtle1
    chrc := Sprite.New (turtle)
    chrc1 := turtle
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Turtle"
    num := 1
    dialogue (1) := "Wee!"
    dialogue (2) := "Do you want to come ride my wave?"
    turtleTalk
end turtle1

body procedure turtle2
    chrc := Sprite.New (turtle)
    chrc1 := turtle
    enter

    GUI.Enable (enterButton)

    new dialogue, 1
    top := 1
    character := "Turtle"
    num := 1
    dialogue (1) := "You should come out of the castle and to the ocean with me sometime!"
    turtleTalk
end turtle2

%Turtle responses
body procedure turtle1A
    if answer = "yes" then
	happy := happy + 3
	turtleAs
    elsif answer = "no" then
	happy := happy - 5
	turtleAs
    end if
end turtle1A

procedure turtle2A
    if answer = "yes" then
	happy := happy + 5
    elsif answer = "no" then
	happy := happy - 2
    end if
    turtleAs
end turtle2A

%Yes buttons turtle
body procedure yesTurtle1
    answer := "yes"
    turtle1A
end yesTurtle1

procedure yesTurtle2
    answer := "yes"
    turtle2A
end yesTurtle2

%No buttons turtle
body procedure noTurtle1
    answer := "no"
    turtle1A
end noTurtle1

procedure noTurtle2
    answer := "no"
    turtle2A
end noTurtle2

%Turtle Other
body procedure turtleTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end turtleTalk

body procedure turtleAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (turtleF)
    chrc1 := turtleF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end turtleAs

%JESTER
%Jester Dialogue
body procedure jester1
    chrc := Sprite.New (jester)
    chrc1 := jester
    enter

    GUI.Enable (enterButton)

    new dialogue, 3
    top := 3
    character := "Jester"
    num := 1
    dialogue (1) := "I once met a king who decided to move the castle meat shop to the top of the highest tower."
    dialogue (2) := "The steaks were high."
    dialogue (3) := "Am I punny?"
    jesterTalk
end jester1

body procedure jester2
    chrc := Sprite.New (jester)
    chrc1 := jester
    enter

    GUI.Enable (enterButton)

    new dialogue, 1
    top := 1
    character := "Jester"
    num := 1
    dialogue (1) := "Do you think I can make a coin appear from behind your ear?"
    jesterTalk
end jester2

%Jester responses
body procedure jester1A
    if answer = "yes" then
	happy := happy + 5
	jesterAs
    elsif answer = "no" then
	happy := happy - 2
	jesterAs
    end if
end jester1A

procedure jester2A
    if answer = "yes" then
	gold := gold + 1
    elsif answer = "no" then
	gold := gold - 1
    end if
    jesterAs
end jester2A

%Yes buttons jester
body procedure yesJester1
    answer := "yes"
    jester1A
end yesJester1

procedure yesJester2
    answer := "yes"
    jester2A
end yesJester2

%No buttons jester
body procedure noJester1
    answer := "no"
    jester1A
end noJester1

procedure noJester2
    answer := "no"
    jester2A
end noJester2

%Jester Other
body procedure jesterTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end jesterTalk

body procedure jesterAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (jesterF)
    chrc1 := jesterF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end jesterAs

%TEEN
%Teen Dialogue
body procedure teen1
    chrc := Sprite.New (teen)
    chrc1 := teen
    enter

    GUI.Enable (enterButton)

    new dialogue, 1
    top := 1
    character := "Teen"
    num := 1
    dialogue (1) := "Could I borrow two gold to go buy bubble tea?"
    teenTalk
end teen1

body procedure teen2
    chrc := Sprite.New (teen)
    chrc1 := teen
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Teen"
    num := 1
    dialogue (1) := "I've bought so much bubble tea that I've earned a free large."
    dialogue (2) := "I saved it for you as a thank you for all the times you gave me gold so I could buy it."
    teenTalk
end teen2

%Teen responses
body procedure teen1A
    if answer = "yes" then
	happy := happy + 3
	gold := gold - 2
	teenAs
    elsif answer = "no" then
	happy := happy - 4
	teenAs
    end if
end teen1A

procedure teen2A
    if answer = "yes" then
	gold := gold + 20
	happy := happy + 5
    elsif answer = "no" then
	happy := happy - 2
    end if
    teenAs
end teen2A

%Yes buttons teen
body procedure yesTeen1
    answer := "yes"
    teen1A
end yesTeen1

procedure yesTeen2
    answer := "yes"
    teen2A
end yesTeen2

%No buttons teen
body procedure noTeen1
    answer := "no"
    teen1A
end noTeen1

procedure noTeen2
    answer := "no"
    teen2A
end noTeen2

%Teen Other
body procedure teenTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end teenTalk

body procedure teenAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (teenF)
    chrc1 := teenF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end teenAs

%PENGUIN
%Penguin Dialogue
body procedure penguin1
    chrc := Sprite.New (penguin)
    chrc1 := penguin
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Penguin"
    num := 1
    dialogue (1) := "Could I borrow some gold to pay for my air conditioning?"
    dialogue (2) := "I really need to cool down my home!"
    penguinTalk
end penguin1

body procedure penguin2
    chrc := Sprite.New (penguin)
    chrc1 := penguin
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Penguin"
    num := 1
    dialogue (1) := "Is global warming real?"
    dialogue (2) := "Will my home melt into the ocean?"
    penguinTalk
end penguin2

%Penguin responses
body procedure penguin1A
    if answer = "yes" then
	happy := happy + 4
	gold := gold - 40
	penguinAs
    elsif answer = "no" then
	happy := happy - 20
	penguinAs
    end if
end penguin1A

procedure penguin2A
    if answer = "yes" then
	people := people + 2
	happy := happy - 3
    elsif answer = "no" then
	happy := happy + 1
    end if
    penguinAs
end penguin2A

%Yes buttons penguin
body procedure yesPenguin1
    answer := "yes"
    penguin1A
end yesPenguin1

procedure yesPenguin2
    answer := "yes"
    penguin2A
end yesPenguin2

%No buttons penguin
body procedure noPenguin1
    answer := "no"
    penguin1A
end noPenguin1

procedure noPenguin2
    answer := "no"
    penguin2A
end noPenguin2

%Penguin Other
body procedure penguinTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end penguinTalk

body procedure penguinAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (penguinF)
    chrc1 := penguinF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end penguinAs

%SWORD
%Sword Dialogue
body procedure sword1
    chrc := Sprite.New (sword)
    chrc1 := sword
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Sword"
    num := 1
    dialogue (1) := "May I please have some gold to buy a blade sharpener?"
    dialogue (2) := "My last one broke."
    swordTalk
end sword1

body procedure sword2
    chrc := Sprite.New (sword)
    chrc1 := sword
    enter

    GUI.Enable (enterButton)

    new dialogue, 1
    top := 1
    character := "Sword"
    num := 1
    dialogue (1) := "While off on an adventure, I slew a dragon and brought back all this gold from his lair!"
    swordTalk
end sword2

%Sword responses
body procedure sword1A
    if answer = "yes" then
	gold := gold - 50
	happy := happy + 1
	swordAs
    elsif answer = "no" then
	happy := happy - 15
	swordAs
    end if
end sword1A

procedure sword2A
    if answer = "yes" then
	gold := gold + 70
	happy := happy + 4
    elsif answer = "no" then
	happy := happy - 2
    end if
    swordAs
end sword2A

%Yes buttons sword
body procedure yesSword1
    answer := "yes"
    sword1A
end yesSword1

procedure yesSword2
    answer := "yes"
    sword2A
end yesSword2

%No buttons sword
body procedure noSword1
    answer := "no"
    sword1A
end noSword1

procedure noSword2
    answer := "no"
    sword2A
end noSword2

%Sword Other
body procedure swordTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end swordTalk

body procedure swordAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (swordF)
    chrc1 := swordF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end swordAs

%AUTHOR
%Author Dialogue
body procedure author1
    chrc := Sprite.New (author)
    chrc1 := author
    enter

    GUI.Enable (enterButton)

    new dialogue, 1
    top := 1
    character := "Author"
    num := 1
    dialogue (1) := "Would you like to read my new book?"
    authorTalk
end author1

body procedure author2
    chrc := Sprite.New (author)
    chrc1 := author
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Author"
    num := 1
    dialogue (1) := "Could you lend me some gold to help fund the publication of my book?"
    dialogue (2) := "You will get a share of the profits!"
    authorTalk
end author2

body procedure author3
    chrc := Sprite.New (author)
    chrc1 := author
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Author"
    num := 1
    dialogue (1) := "My book is selling very well!"
    dialogue (2) := "Here is your share of the profits."
    authorTalk
end author3

%Author responses
body procedure author1A
    if answer = "yes" then
	gold := gold - 80
	happy := happy + 20
	authorAs
    elsif answer = "no" then
	happy := happy - 3
	authorAs
    end if
end author1A

procedure author2A
    if answer = "yes" then
	gold := gold - 60
	happy := happy + 3
    elsif answer = "no" then
	happy := happy - 2
    end if
    authorAs
end author2A

procedure author3A
    if answer = "yes" then
	gold := gold + 30
    elsif answer = "no" then
	%nothing
    end if
    authorAs
end author3A

%Yes buttons author
body procedure yesAuthor1
    answer := "yes"
    author1A
end yesAuthor1

procedure yesAuthor2
    answer := "yes"
    author2A
end yesAuthor2

procedure yesAuthor3
    answer := "yes"
    author3A
end yesAuthor3

%No buttons author
body procedure noAuthor1
    answer := "no"
    author1A
end noAuthor1

procedure noAuthor2
    answer := "no"
    author2A
end noAuthor2

procedure noAuthor3
    answer := "no"
    author3A
end noAuthor3

%Author Other
body procedure authorTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end authorTalk

body procedure authorAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (authorF)
    chrc1 := authorF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end authorAs

%OWL
%Owl dialogue
body procedure owl1
    chrc := Sprite.New (owl)
    chrc1 := owl
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Owl"
    num := 1
    dialogue (1) := "I can see behind my back."
    dialogue (2) := "Do you want to see?"
    owlTalk
end owl1

body procedure owl2
    chrc := Sprite.New (owl)
    chrc1 := owl
    enter

    GUI.Enable (enterButton)

    new dialogue, 1
    top := 1
    character := "Owl"
    num := 1
    dialogue (1) := "Do people really say owls are wise? Hoo?"
    owlTalk
end owl2

%Owl responses
body procedure owl1A
    if answer = "yes" then
	gold := gold - 10
	people := people + 3
	owlAs
    elsif answer = "no" then
	happy := happy - 3
	owlAs
    end if
end owl1A

procedure owl2A
    if answer = "yes" then
	happy := happy + 2
    elsif answer = "no" then
	happy := happy - 1
    end if
    owlAs
end owl2A

%Yes buttons owl
body procedure yesOwl1
    answer := "yes"
    owl1A
end yesOwl1

procedure yesOwl2
    answer := "yes"
    owl2A
end yesOwl2

%No buttons owl
body procedure noOwl1
    answer := "no"
    owl1A
end noOwl1

procedure noOwl2
    answer := "no"
    owl2A
end noOwl2

%Owl Other
body procedure owlTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end owlTalk

body procedure owlAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (owlF)
    chrc1 := owlF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end owlAs

%ROBOT
%Robot Dialogue
body procedure robot1
    chrc := Sprite.New (robot)
    chrc1 := robot
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Robot"
    num := 1
    dialogue (1) := "Please fix me,"
    dialogue (2) := "I will return the favor soon!"
    robotTalk
end robot1

body procedure robot2
    chrc := Sprite.New (robot)
    chrc1 := robot
    enter

    GUI.Enable (enterButton)

    new dialogue, 1
    top := 1
    character := "Robot"
    num := 1
    dialogue (1) := "I have returned! I bring gifts, will you accept my offer?"
    robotTalk
end robot2

body procedure robot3
    chrc := Sprite.New (robot)
    chrc1 := robot
    enter

    GUI.Enable (enterButton)

    new dialogue, 3
    top := 3
    character := "Robot"
    num := 1
    dialogue (1) := "Bat told me about someone named Iron Man,"
    dialogue (2) := "and said that he builds robots that he can boss around."
    dialogue (3) := "Do you think he'll do that to me?"
    robotTalk
end robot3

%Robot responses
body procedure robot1A
    if answer = "yes" then
	gold := gold - 100
	people := people - 10
	robotAs
    elsif answer = "no" then
	happy := happy - 10
	people := people - 6
	robotAs
    end if
end robot1A

procedure robot2A
    if answer = "yes" then
	gold := gold + 55
	people := people + 3
    elsif answer = "no" then
	%nothing
    end if
    robotAs
end robot2A

procedure robot3A
    if answer = "yes" then
	happy := happy - 3
    elsif answer = "no" then
	happy := happy + 4
    end if
    robotAs
end robot3A

%Yes buttons robot
body procedure yesRobot1
    answer := "yes"
    robot1A
end yesRobot1

procedure yesRobot2
    answer := "yes"
    robot2A
end yesRobot2

procedure yesRobot3
    answer := "yes"
    robot3A
end yesRobot3

%No buttons robot
body procedure noRobot1
    answer := "no"
    robot1A
end noRobot1

procedure noRobot2
    answer := "no"
    robot2A
end noRobot2

procedure noRobot3
    answer := "no"
    robot3A
end noRobot3

%Robot Other
body procedure robotTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end robotTalk

body procedure robotAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (robotF)
    chrc1 := robotF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end robotAs

%WHEELCHAIR CHILD
%Wheelchair Dialogue
body procedure wheelchair1
    chrc := Sprite.New (wheelchair)
    chrc1 := wheelchair
    enter

    GUI.Enable (enterButton)

    new dialogue, 3
    top := 3
    character := "Wheelchair Child"
    num := 1
    dialogue (1) := "Hi your highness,"
    dialogue (2) := "can I borrow some gold for new wheels on my wheelchair?"
    dialogue (3) := "I promise I'll pay you back later."
    wheelchairTalk
end wheelchair1

body procedure wheelchair2
    chrc := Sprite.New (wheelchair)
    chrc1 := wheelchair
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Wheelchair Child"
    num := 1
    dialogue (1) := "As promised here is your money that I borrowed!"
    dialogue (2) := "Thank you for your trust in me."
    wheelchairTalk
end wheelchair2

%Wheelchair responses
body procedure wheelchair1A
    if answer = "yes" then
	happy := happy + 5
	gold := gold - 5
	people := people + 1
	wheelchairAs
    elsif answer = "no" then
	happy := happy - 2
	wheelchairAs
    end if
end wheelchair1A

procedure wheelchair2A
    if answer = "yes" then
	gold := gold + 7
	happy := happy + 2
    elsif answer = "no" then
	%nothing
    end if
    wheelchairAs
end wheelchair2A

%Yes buttons wheelchair
body procedure yesWheelchair1
    answer := "yes"
    wheelchair1A
end yesWheelchair1

procedure yesWheelchair2
    answer := "yes"
    wheelchair2A
end yesWheelchair2

%No buttons wheelchair
body procedure noWheelchair1
    answer := "no"
    wheelchair1A
end noWheelchair1

procedure noWheelchair2
    answer := "no"
    wheelchair2A
end noWheelchair2

%Wheelchair Other
body procedure wheelchairTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end wheelchairTalk

body procedure wheelchairAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (wheelchairF)
    chrc1 := wheelchairF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end wheelchairAs

%MINION
%Minion Dialogue
body procedure minion1
    chrc := Sprite.New (minion)
    chrc1 := minion
    enter

    GUI.Enable (enterButton)

    new dialogue, 3
    top := 3
    character := "Minion"
    num := 1
    dialogue (1) := "Can I join your army with my friends?"
    dialogue (2) := "I'm not gonna do anything bad!"
    dialogue (3) := "I promise!"
    minionTalk
end minion1

body procedure minion2
    chrc := Sprite.New (minion)
    chrc1 := minion
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Minion"
    num := 1
    dialogue (1) := "I was promoted to a higher rank in the army!"
    dialogue (2) := "Here is some of my earnings as a thank you!"
    minionTalk
end minion2

%Minion responses
body procedure minion1A
    if answer = "yes" then
	happy := happy + 1
	people := people + 7
	minionAs
    elsif answer = "no" then
	happy := happy - 2
	minionAs
    end if
end minion1A

procedure minion2A
    if answer = "yes" then
	gold := gold + 50
    elsif answer = "no" then
	happy := happy + 3
    end if
    minionAs
end minion2A

%Yes buttons minion
body procedure yesMinion1
    answer := "yes"
    minion1A
end yesMinion1

procedure yesMinion2
    answer := "yes"
    minion2A
end yesMinion2

%No buttons minion
body procedure noMinion1
    answer := "no"
    minion1A
end noMinion1

procedure noMinion2
    answer := "no"
    minion2A
end noMinion2

%Minion Other
body procedure minionTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end minionTalk

body procedure minionAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (minionF)
    chrc1 := minionF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end minionAs

%FARMER
%Farmer Dialogue
body procedure farmer1
    chrc := Sprite.New (farmer)
    chrc1 := farmer
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Farmer"
    num := 1
    dialogue (1) := "My crops have yielded a great harvest!"
    dialogue (2) := "I wish to share of my earnings!"
    farmerTalk
end farmer1

body procedure farmer2
    chrc := Sprite.New (farmer)
    chrc1 := farmer
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Farmer"
    num := 1
    dialogue (1) := "Would you like to purchase a bag of my home-grown rice?"
    dialogue (2) := "It will go well with everything, and is very easy to cook!"
    farmerTalk
end farmer2

%Farmer responses
body procedure farmer1A
    if answer = "yes" then
	gold := gold + 30
	farmerAs
    elsif answer = "no" then
	happy := happy - 100
	farmerAs
    end if
end farmer1A

procedure farmer2A
    if answer = "yes" then
	gold := gold - 30
	happy := happy + 6
    elsif answer = "no" then
	happy := happy - 3
    end if
    farmerAs
end farmer2A

%Yes buttons farmer
body procedure yesFarmer1
    answer := "yes"
    farmer1A
end yesFarmer1

procedure yesFarmer2
    answer := "yes"
    farmer2A
end yesFarmer2

%No buttons farmer
body procedure noFarmer1
    answer := "no"
    farmer1A
end noFarmer1

%Farmer Other
body procedure farmerTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end farmerTalk

procedure noFarmer2
    answer := "no"
    farmer2A
end noFarmer2

body procedure farmerAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (farmerF)
    chrc1 := farmerF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end farmerAs

%CAT
%Cat Dialogue
body procedure cat1
    chrc := Sprite.New (cat)
    chrc1 := cat
    enter

    GUI.Enable (enterButton)

    new dialogue, 2
    top := 2
    character := "Muffles"
    num := 1
    dialogue (1) := "Meow."
    dialogue (2) := "Meow meow?"
    catTalk
end cat1

body procedure cat2
    chrc := Sprite.New (cat)
    chrc1 := cat
    enter

    GUI.Enable (enterButton)

    new dialogue, 1
    top := 1
    character := "Cat"
    num := 1
    dialogue (1) := "Meeeeeooowwwwww, mew mewemouw mew meow."
    catTalk
end cat2

%Cat responses
body procedure cat1A
    if answer = "yes" then
	happy := happy - 15
	catAs
    elsif answer = "no" then
	happy := happy + 5
	catAs
    end if
end cat1A

procedure cat2A
    if answer = "yes" then
	gold := gold - 70
    elsif answer = "no" then
	people := people + 20
    end if
    catAs
end cat2A

%Yes buttons Cat
body procedure yesCat1
    answer := "yes"
    cat1A
end yesCat1

procedure yesCat2
    answer := "yes"
    cat2A
end yesCat2

%No buttons cat
body procedure noCat1
    answer := "no"
    cat1A
end noCat1

procedure noCat2
    answer := "no"
    cat2A
end noCat2

%Artist Other
body procedure catTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end catTalk

body procedure catAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (catF)
    chrc1 := catF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end catAs

%SUPERHERO
%Superhero Dialogue
body procedure superhero1
    chrc := Sprite.New (superhero)
    chrc1 := superhero
    enter

    GUI.Enable (enterButton)

    new dialogue, 5
    top := 5
    character := "Superhero"
    num := 1
    dialogue (1) := "I am a superhero, but I've always dreamt of acting!"
    dialogue (2) := "Please hire me as a performer!"
    dialogue (3) := "I will create some new shows with the Jester."
    dialogue (4) := "We can make it a large attraction for travelers"
    dialogue (5) := "and bring more people to our town."
    superheroTalk
end superhero1

body procedure superhero2
    chrc := Sprite.New (superhero)
    chrc1 := superhero
    enter

    GUI.Enable (enterButton)

    new dialogue, 4
    top := 4
    character := "Superhero"
    num := 1
    dialogue (1) := "I gained a new power!"
    dialogue (2) := "My fire now reaches 170 degrees Celsius!"
    dialogue (3) := "I burned my house down though."
    dialogue (4) := "Can I have some gold to pay for the repairs?"
    superheroTalk
end superhero2

%Superhero responses
body procedure superhero1A
    if answer = "yes" then
	gold := gold - 100
	people := people + 40
	happy := happy + 12
	superheroAs
    elsif answer = "no" then
	happy := happy - 3
	superheroAs
    end if
end superhero1A

procedure superhero2A
    if answer = "yes" then
	gold := gold - 40
	happy := happy + 3
	people := people - 4
    elsif answer = "no" then
	people := people - 2
    end if
    superheroAs
end superhero2A

%Yes buttons superhero
body procedure yesSuperhero1
    answer := "yes"
    superhero1A
end yesSuperhero1

procedure yesSuperhero2
    answer := "yes"
    superhero2A
end yesSuperhero2

%No buttons superhero
body procedure noSuperhero1
    answer := "no"
    superhero1A
end noSuperhero1

procedure noSuperhero2
    answer := "no"
    superhero2A
end noSuperhero2

%Superhero Other
body procedure superheroTalk
    Font.Draw (character, 700, 290, leafy4, 111)
    talk
end superheroTalk

body procedure superheroAs
    main
    ctrl
    GUI.Disable (yes)
    GUI.Disable (no)
    GUI.Enable (enterButton)
    answer := "blank"
    Sprite.Free (chrc)
    chrc := Sprite.New (superheroF)
    chrc1 := superheroF
    leave

    GUI.Dispose (yes)
    GUI.Dispose (no)
    main
    ctrl
    continue := true
end superheroAs

%#######################################################################%

%TITLE SCREEN
setscreen ("graphics: 1000, 600")
colourback (99)
cls

fork music
fork crowns

Font.Draw ("Crown", 405, 260, leafy, 245)
Font.Draw ("of the", 440, 240, leafy2, 245)
Font.Draw ("Town", 410, 200, leafy, 245)
Pic.Draw (cover, 0, 0, picMerge)

Font.Draw ("Press any", 740, 300, leafy3, 155)
Font.Draw ("Key to start", 720, 260, leafy, 155)

locatexy (830, 240)
Input.Pause
click := true
cls

%Main screen
Pic.DrawSpecial (throne, 0, 0, picMerge, picSlideLeftToRight, 2000)
colourback (101)
cls
Pic.Draw (cloud, 160, 400, picMerge)
Pic.Draw (cloud, 360, 340, picMerge)
Pic.Draw (cloud, 520, 460, picMerge)
Pic.Draw (cloud, 720, 380, picMerge)
Pic.Draw (throne, 0, 0, picMerge)

%Advisor explains how to play
chrc := Sprite.New (advisor)
chrc1 := advisor
enter

Pic.DrawSpecial (stats, 20, 20, picMerge, picFadeIn, 1000)
Pic.Draw (population, 60, 90, picMerge)
Pic.Draw (happiness, 60, 60, picMerge)
Pic.Draw (money, 60, 30, picMerge)
ctrl

Pic.DrawSpecial (dbox, 580, 380, picMerge, picFadeIn, 1000)
enterButton := GUI.CreatePictureButtonFull (840, 360, enterButton1, next, 0, 0, chr (10), true)

yes := GUI.CreatePictureButtonFull (400, 20, y, yesIntro, 0, 0, 'y', true)
no := GUI.CreatePictureButtonFull (500, 20, n, noIntro, 0, 0, 'n', true)
GUI.Disable (yes)
GUI.Disable (no)
intro

loop
    exit when GUI.ProcessEvent
    exit when continue = true
end loop

continue := false

%Display stats at end of each day
body procedure dayEnd
    %loop
    Pic.DrawSpecial (scroll, 250, 100, picMerge, picFadeIn, 1500)
    Pic.Draw (population2, 300, 380, picMerge)
    Pic.Draw (happiness2, 300, 330, picMerge)
    Pic.Draw (money2, 300, 280, picMerge)
    Font.Draw ("Day: " + intstr (day), 420, 420, leafy4, black)

    Pic.Draw (stats, 20, 20, picMerge)
    Pic.Draw (population, 60, 90, picMerge)
    Pic.Draw (happiness, 60, 60, picMerge)
    Pic.Draw (money, 60, 30, picMerge)

    Font.Draw (intstr (people), 100, 90, leafy2, black)
    Font.Draw (intstr (happy), 100, 60, leafy2, black)
    Font.Draw (intstr (gold), 100, 30, leafy2, black)

    if people1 > people then
	Font.Draw (" -" + intstr (people1 - people), 440, 380, leafy4, black)
    elsif people1 < people then
	Font.Draw (" +" + intstr (people - people1), 440, 380, leafy4, black)
    else
	Font.Draw (" +0", 440, 380, leafy4, black)
    end if

    if happy1 > happy then
	Font.Draw (" -" + intstr (happy1 - happy), 440, 330, leafy4, black)
    elsif happy1 < happy then
	Font.Draw (" +" + intstr (happy - happy1), 440, 330, leafy4, black)
    else
	Font.Draw (" +0", 440, 330, leafy4, black)
    end if

    if gold1 > gold then
	Font.Draw (" -" + intstr (gold1 - gold), 440, 280, leafy4, black)
    elsif gold1 < gold then
	Font.Draw (" +" + intstr (gold - gold1), 440, 280, leafy4, black)
    else
	Font.Draw (" +0", 440, 280, leafy4, black)
    end if
    Font.Draw ("People are happy.", 400, 220, leafy4, black)
    Font.Draw ("The town is growing!", 360, 180, leafy4, black)
    Font.Draw ("Press any key to continue.", 380, 140, leafy2, black)
    locatexy (500, 110)
    continue := false
    Input.Pause

    main
    ctrl
    %exit
    %end loop
end dayEnd

%Level 1
for d : 1 .. 5
    for person : 1 .. 3
	%Randomization of character entries
	randint (random, 1, 5)

	if random = 1 then %Advisor1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 2 then %Artist1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 3 then %Fairy1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFairy1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFairy1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    fairy1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 4 then %Bat1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesBat1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noBat1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    bat1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 5 then %Healer1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHealer1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHealer1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    healer1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	end if
    end for
    day := day + 1
    %leave
    %Sprite.Free (chrc)

    if happy <= 0 or people <= 0 or gold <= 0 then
	gameOver
	exit
    end if

    dayEnd
    people := people + 5
    people1 := people
    happy1 := happy
    gold1 := gold
    main
    ctrl
end for

%Level 2
for d : 6 .. 11
    for person : 1 .. 3
	%Randomization of character entries
	randint (random, 1, 10)

	if random = 1 then %Advisor1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 2 then %Artist1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 3 then %Fairy1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFairy1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFairy1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    fairy1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 4 then %Bat1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesBat1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noBat1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    bat1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 5 then %Healer1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHealer1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHealer1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    healer1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 6 then %Potato seller1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPotato1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPotato1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    potato1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 7 then %Hunter1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHunter1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHunter1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    hunter1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 8 then %Merchant1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMerchant1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMerchant1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    merchant1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 9 then %Rocket chair man1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRocket1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRocket1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rocket1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 10 then %Knight1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesKnight1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noKnight1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    knight1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	end if
    end for
    day := day + 1
    % leave
    % Sprite.Free (chrc)

    if happy <= 0 or people <= 0 or gold <= 0 then
	gameOver
	exit
    end if
    dayEnd

    people := people + 10
    people1 := people
    happy1 := happy
    gold1 := gold
    main
    ctrl
end for

%Level 3
for d : 12 .. 19
    for person : 1 .. 3
	%Randomization of character entries
	randint (random, 1, 15)

	if random = 1 then %Advisor1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 2 then %Artist1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 3 then %Fairy1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFairy1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFairy1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    fairy1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 4 then %Bat1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesBat1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noBat1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    bat1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 5 then %Healer1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHealer1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHealer1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    healer1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 6 then %Potato seller1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPotato1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPotato1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    potato1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 7 then %Hunter1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHunter1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHunter1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    hunter1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 8 then %Merchant1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMerchant1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMerchant1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    merchant1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 9 then %Rocket chair man1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRocket1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRocket1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rocket1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 10 then %Knight1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesKnight1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noKnight1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    knight1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 11 then %Emo1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesEmo1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noEmo1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    emo1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 12 then %Rockstar1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRockstar1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRockstar1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rockstar1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 13 then %Turtle1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTurtle1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTurtle1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    turtle1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 14 then %Jester1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesJester1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noJester1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    jester1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 15 then %Teen1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTeen1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTeen1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    teen1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	end if
    end for
    day := day + 1

    if happy <= 0 or people <= 0 or gold <= 0 then
	gameOver
	exit
    end if
    dayEnd

    people := people + 15
    people1 := people
    happy1 := happy
    gold1 := gold
    main
    ctrl
    Music.PlayFileStop
    fork music
end for

%Level 4
for d : 20 .. 28
    for person : 1 .. 3
	%Randomization of character entries
	randint (random, 1, 20)

	if random = 1 then %Advisor1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 2 then %Artist1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 3 then %Fairy1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFairy1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFairy1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    fairy1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 4 then %Bat1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesBat1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noBat1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    bat1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 5 then %Healer1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHealer1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHealer1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    healer1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 6 then %Potato seller1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPotato1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPotato1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    potato1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 7 then %Hunter1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHunter1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHunter1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    hunter1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 8 then %Merchant1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMerchant1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMerchant1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    merchant1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 9 then %Rocket chair man1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRocket1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRocket1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rocket1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 10 then %Knight1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesKnight1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noKnight1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    knight1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 11 then %Emo1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesEmo1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noEmo1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    emo1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 12 then %Rockstar1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRockstar1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRockstar1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rockstar1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 13 then %Turtle1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTurtle1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTurtle1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    turtle1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 14 then %Jester1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesJester1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noJester1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    jester1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 15 then %Teen1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTeen1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTeen1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    teen1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 16 then %Penguin1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPenguin1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPenguin1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    penguin1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 17 then %Sword1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSword1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSword1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    sword1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 18 then %Author1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAuthor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAuthor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    author1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 19 then %Owl1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesOwl1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noOwl1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    owl1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 20 then %Robot1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRobot1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRobot1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    robot1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	end if
    end for
    day := day + 1

    if happy <= 0 or people <= 0 or gold <= 0 then
	gameOver
	exit
    end if
    dayEnd

    people := people + 20
    people1 := people
    happy1 := happy
    gold1 := gold
    main
    ctrl
    Music.PlayFileStop
    fork music
end for

%Level 5
for d : 29 .. 38
    for person : 1 .. 3
	%Randomization of character entries
	randint (random, 1, 25)

	if random = 1 then %Advisor1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 2 then %Artist1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 3 then %Fairy1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFairy1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFairy1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    fairy1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 4 then %Bat1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesBat1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noBat1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    bat1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 5 then %Healer1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHealer1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHealer1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    healer1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 6 then %Potato seller1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPotato1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPotato1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    potato1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 7 then %Hunter1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHunter1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHunter1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    hunter1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 8 then %Merchant1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMerchant1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMerchant1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    merchant1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 9 then %Rocket chair man1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRocket1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRocket1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rocket1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 10 then %Knight1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesKnight1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noKnight1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    knight1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 11 then %Emo1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesEmo1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noEmo1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    emo1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 12 then %Rockstar1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRockstar1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRockstar1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rockstar1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 13 then %Turtle1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTurtle1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTurtle1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    turtle1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 14 then %Jester1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesJester1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noJester1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    jester1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 15 then %Teen1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTeen1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTeen1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    teen1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 16 then %Penguin1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPenguin1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPenguin1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    penguin1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 17 then %Sword1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSword1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSword1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    sword1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 18 then %Author1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAuthor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAuthor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    author1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 19 then %Owl1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesOwl1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noOwl1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    owl1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 20 then %Robot1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRobot1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRobot1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    robot1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 21 then %Wheelchair1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesWheelchair1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noWheelchair1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    wheelchair1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 22 then %Minion1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMinion1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMinion1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    minion1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 23 then %Farmer1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFarmer1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFarmer1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    farmer1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 24 then %Cat1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesCat1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noCat1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    cat1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 25 then %Superhero1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSuperhero1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSuperhero1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	end if
    end for
    day := day + 1

    if happy <= 0 or people <= 0 or gold <= 0 then
	gameOver
	exit
    end if
    dayEnd

    people := people + 30
    people1 := people
    happy1 := happy
    gold1 := gold
    main
    ctrl
    Music.PlayFileStop
    fork music
end for

%Level 6
for d : 39 .. 49
    for person : 1 .. 3
	%Randomization of character entries
	randint (random, 1, 35)

	if random = 1 then %Advisor1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 2 then %Artist1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 3 then %Fairy1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFairy1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFairy1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    fairy1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 4 then %Bat1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesBat1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noBat1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    bat1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 5 then %Healer1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHealer1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHealer1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    healer1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 6 then %Potato seller1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPotato1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPotato1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    potato1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 7 then %Hunter1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHunter1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHunter1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    hunter1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 8 then %Merchant1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMerchant1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMerchant1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    merchant1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 9 then %Rocket chair man1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRocket1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRocket1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rocket1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 10 then %Knight1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesKnight1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noKnight1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    knight1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 11 then %Emo1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesEmo1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noEmo1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    emo1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 12 then %Rockstar1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRockstar1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRockstar1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rockstar1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 13 then %Turtle1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTurtle1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTurtle1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    turtle1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 14 then %Jester1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesJester1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noJester1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    jester1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 15 then %Teen1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTeen1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTeen1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    teen1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 16 then %Penguin1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPenguin1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPenguin1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    penguin1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 17 then %Sword1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSword1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSword1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    sword1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 18 then %Author1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAuthor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAuthor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    author1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 19 then %Owl1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesOwl1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noOwl1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    owl1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 20 then %Robot1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRobot1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRobot1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    robot1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 21 then %Wheelchair1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesWheelchair1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noWheelchair1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    wheelchair1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 22 then %Minion1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMinion1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMinion1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    minion1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 23 then %Farmer1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFarmer1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFarmer1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    farmer1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 24 then %Cat1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesCat1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noCat1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    cat1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 25 then %Superhero1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSuperhero1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSuperhero1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    superhero1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 26 then %Advisor2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 27 then %Artist2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 28 then %Fairy2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFairy2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFairy2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    fairy2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 29 then %Bat2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesBat2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noBat2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    bat2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 30 then %Healer2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHealer2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHealer2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    healer2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 31 then %Potato bomb seller
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPotato2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPotato2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    potato2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 32 then %Hunter2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHunter2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHunter2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    hunter2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 33 then %Merchant2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMerchant2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMerchant2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    merchant2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 34 then %Rocket2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRocket2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRocket2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rocket2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 35 then %Knight2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesKnight2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noKnight2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    knight2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	end if
    end for
    day := day + 1

    if happy <= 0 or people <= 0 or gold <= 0 then
	gameOver
	exit
    end if
    dayEnd

    people := people + 30
    people1 := people
    happy1 := happy
    gold1 := gold
    main
    ctrl
    Music.PlayFileStop
    fork music
end for

%Level 7
for d : 50 .. 61
    for person : 1 .. 3
	%Randomization of character entries
	randint (random, 1, 45)

	if random = 1 then %Advisor1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 2 then %Artist1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 3 then %Fairy1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFairy1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFairy1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    fairy1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 4 then %Bat1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesBat1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noBat1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    bat1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 5 then %Healer1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHealer1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHealer1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    healer1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 6 then %Potato seller1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPotato1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPotato1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    potato1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 7 then %Hunter1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHunter1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHunter1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    hunter1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 8 then %Merchant1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMerchant1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMerchant1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    merchant1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 9 then %Rocket chair man1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRocket1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRocket1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rocket1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 10 then %Knight1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesKnight1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noKnight1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    knight1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 11 then %Emo1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesEmo1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noEmo1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    emo1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 12 then %Rockstar1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRockstar1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRockstar1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rockstar1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 13 then %Turtle1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTurtle1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTurtle1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    turtle1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 14 then %Jester1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesJester1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noJester1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    jester1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 15 then %Teen1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTeen1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTeen1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    teen1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 16 then %Penguin1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPenguin1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPenguin1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    penguin1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 17 then %Sword1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSword1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSword1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    sword1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 18 then %Author1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAuthor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAuthor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    author1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 19 then %Owl1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesOwl1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noOwl1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    owl1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 20 then %Robot1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRobot1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRobot1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    robot1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 21 then %Wheelchair1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesWheelchair1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noWheelchair1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    wheelchair1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 22 then %Minion1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMinion1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMinion1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    minion1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 23 then %Farmer1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFarmer1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFarmer1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    farmer1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 24 then %Cat1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesCat1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noCat1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    cat1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 25 then %Superhero1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSuperhero1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSuperhero1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    superhero1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 26 then %Advisor2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 27 then %Artist2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 28 then %Fairy2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFairy2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFairy2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    fairy2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 29 then %Bat2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesBat2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noBat2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    bat2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 30 then %Healer2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHealer2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHealer2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    healer2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 31 then %Potato bomb seller
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPotato2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPotato2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    potato2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 32 then %Hunter2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHunter2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHunter2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    hunter2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 33 then %Merchant2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMerchant2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMerchant2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    merchant2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 34 then %Rocket2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRocket2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRocket2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rocket2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 35 then %Knight2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesKnight2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noKnight2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    knight2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 36 then %Emo2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesEmo2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noEmo2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    emo2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 37 then %Rockstar2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRockstar2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRockstar2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rockstar2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 38 then %Turtle2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTurtle2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTurtle2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    turtle2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 39 then %Jester2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesJester2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noJester2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    jester2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 40 then %Teen2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTeen2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTeen2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    teen2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 41 then %Penguin2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPenguin2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPenguin2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    penguin2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 42 then %Sword
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSword2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSword2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    sword2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 43 then %Author2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAuthor2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAuthor2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    author2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 44 then %Owl2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesOwl2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noOwl2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    owl2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 45 then %Robot2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRobot2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRobot2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    robot2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	end if
    end for
    day := day + 1

    if happy <= 0 or people <= 0 or gold <= 0 then
	gameOver
	exit
    end if
    dayEnd

    people := people + 35
    people1 := people
    happy1 := happy
    gold1 := gold
    main
    ctrl
    Music.PlayFileStop
    fork music
end for

%Level 8
for d : 62 .. 74
    for person : 1 .. 3
	%Randomization of character entries
	randint (random, 1, 50)

	if random = 1 then %Advisor1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 2 then %Artist1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 3 then %Fairy1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFairy1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFairy1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    fairy1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 4 then %Bat1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesBat1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noBat1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    bat1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 5 then %Healer1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHealer1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHealer1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    healer1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 6 then %Potato seller1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPotato1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPotato1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    potato1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 7 then %Hunter1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHunter1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHunter1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    hunter1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 8 then %Merchant1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMerchant1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMerchant1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    merchant1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 9 then %Rocket chair man1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRocket1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRocket1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rocket1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 10 then %Knight1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesKnight1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noKnight1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    knight1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 11 then %Emo1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesEmo1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noEmo1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    emo1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 12 then %Rockstar1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRockstar1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRockstar1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rockstar1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 13 then %Turtle1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTurtle1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTurtle1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    turtle1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 14 then %Jester1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesJester1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noJester1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    jester1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 15 then %Teen1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTeen1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTeen1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    teen1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 16 then %Penguin1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPenguin1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPenguin1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    penguin1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 17 then %Sword1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSword1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSword1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    sword1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 18 then %Author1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAuthor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAuthor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    author1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 19 then %Owl1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesOwl1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noOwl1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    owl1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 20 then %Robot1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRobot1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRobot1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    robot1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 21 then %Wheelchair1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesWheelchair1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noWheelchair1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    wheelchair1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 22 then %Minion1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMinion1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMinion1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    minion1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 23 then %Farmer1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFarmer1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFarmer1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    farmer1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 24 then %Cat1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesCat1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noCat1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    cat1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 25 then %Superhero1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSuperhero1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSuperhero1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    superhero1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 26 then %Advisor2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 27 then %Artist2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 28 then %Fairy2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFairy2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFairy2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    fairy2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 29 then %Bat2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesBat2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noBat2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    bat2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 30 then %Healer2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHealer2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHealer2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    healer2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 31 then %Potato bomb seller
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPotato2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPotato2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    potato2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 32 then %Hunter2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHunter2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHunter2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    hunter2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 33 then %Merchant2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMerchant2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMerchant2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    merchant2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 34 then %Rocket2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRocket2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRocket2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rocket2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 35 then %Knight2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesKnight2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noKnight2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    knight2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 36 then %Emo2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesEmo2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noEmo2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    emo2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 37 then %Rockstar2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRockstar2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRockstar2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rockstar2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 38 then %Turtle2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTurtle2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTurtle2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    turtle2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 39 then %Jester2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesJester2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noJester2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    jester2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 40 then %Teen2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTeen2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTeen2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    teen2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 41 then %Penguin2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPenguin2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPenguin2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    penguin2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 42 then %Sword
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSword2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSword2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    sword2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 43 then %Author2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAuthor2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAuthor2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    author2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 44 then %Owl2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesOwl2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noOwl2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    owl2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 45 then %Robot2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRobot2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRobot2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    robot2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 46 then %Wheelchair2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesWheelchair2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noWheelchair2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    wheelchair2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 47 then %Minion
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMinion2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMinion2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    minion2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 48 then %Farmer
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFarmer2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFarmer2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    farmer2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 49 then %Cat2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesCat2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noCat2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    cat2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 50 then %Superhero2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSuperhero2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSuperhero2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    superhero2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	end if
    end for
    day := day + 1

    if happy <= 0 or people <= 0 or gold <= 0 then
	gameOver
	exit
    end if
    dayEnd

    people := people + 40
    people1 := people
    happy1 := happy
    gold1 := gold
    main
    ctrl
    Music.PlayFileStop
    fork music
end for

%Level 9
for d : 75 .. 88
    for person : 1 .. 3
	%Randomization of character entries
	randint (random, 1, 55)

	if random = 1 then %Advisor1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 2 then %Artist1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 3 then %Fairy1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFairy1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFairy1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    fairy1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 4 then %Bat1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesBat1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noBat1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    bat1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 5 then %Healer1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHealer1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHealer1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    healer1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 6 then %Potato seller1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPotato1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPotato1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    potato1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 7 then %Hunter1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHunter1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHunter1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    hunter1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 8 then %Merchant1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMerchant1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMerchant1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    merchant1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 9 then %Rocket chair man1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRocket1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRocket1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rocket1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 10 then %Knight1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesKnight1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noKnight1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    knight1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 11 then %Emo1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesEmo1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noEmo1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    emo1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 12 then %Rockstar1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRockstar1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRockstar1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rockstar1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 13 then %Turtle1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTurtle1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTurtle1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    turtle1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 14 then %Jester1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesJester1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noJester1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    jester1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 15 then %Teen1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTeen1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTeen1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    teen1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 16 then %Penguin1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPenguin1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPenguin1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    penguin1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 17 then %Sword1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSword1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSword1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    sword1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 18 then %Author1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAuthor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAuthor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    author1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 19 then %Owl1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesOwl1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noOwl1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    owl1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 20 then %Robot1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRobot1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRobot1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    robot1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 21 then %Wheelchair1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesWheelchair1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noWheelchair1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    wheelchair1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 22 then %Minion1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMinion1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMinion1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    minion1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 23 then %Farmer1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFarmer1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFarmer1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    farmer1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 24 then %Cat1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesCat1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noCat1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    cat1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 25 then %Superhero1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSuperhero1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSuperhero1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    superhero1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 26 then %Advisor2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 27 then %Artist2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 28 then %Fairy2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFairy2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFairy2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    fairy2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 29 then %Bat2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesBat2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noBat2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    bat2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 30 then %Healer2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHealer2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHealer2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    healer2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 31 then %Potato bomb seller
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPotato2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPotato2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    potato2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 32 then %Hunter2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHunter2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHunter2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    hunter2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 33 then %Merchant2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMerchant2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMerchant2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    merchant2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 34 then %Rocket2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRocket2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRocket2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rocket2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 35 then %Knight2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesKnight2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noKnight2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    knight2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 36 then %Emo2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesEmo2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noEmo2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    emo2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 37 then %Rockstar2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRockstar2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRockstar2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rockstar2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 38 then %Turtle2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTurtle2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTurtle2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    turtle2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 39 then %Jester2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesJester2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noJester2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    jester2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 40 then %Teen2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTeen2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTeen2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    teen2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 41 then %Penguin2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPenguin2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPenguin2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    penguin2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 42 then %Sword
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSword2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSword2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    sword2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 43 then %Author2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAuthor2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAuthor2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    author2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 44 then %Owl2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesOwl2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noOwl2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    owl2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 45 then %Robot2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRobot2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRobot2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    robot2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 46 then %Wheelchair2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesWheelchair2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noWheelchair2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    wheelchair2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 47 then %Minion
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMinion2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMinion2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    minion2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 48 then %Farmer
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFarmer2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFarmer2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    farmer2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 49 then %Cat2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesCat2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noCat2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    cat2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 50 then %Superhero2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSuperhero2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSuperhero2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    superhero2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 51 then %Royal Advisor3
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor3, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor3, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor3
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 52 then %Artist3
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist3, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist3, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist3
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 53 then %Rocket3
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRocket3, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRocket3, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rocket3
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 54 then %Author3
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAuthor3, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAuthor3, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    author3
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 55 then %Robot3
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRobot3, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRobot3, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    robot3
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	end if
    end for
    day := day + 1

    if happy <= 0 or people <= 0 or gold <= 0 then
	gameOver
	exit
    end if
    dayEnd

    people := people + 45
    people1 := people
    happy1 := happy
    gold1 := gold
    main
    ctrl
    Music.PlayFileStop
    fork music
end for

%Level 10
for d : 89 .. 100
    for person : 1 .. 3
	%Randomization of character entries
	randint (random, 1, 55)

	if random = 1 then %Advisor1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 2 then %Artist1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 3 then %Fairy1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFairy1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFairy1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    fairy1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 4 then %Bat1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesBat1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noBat1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    bat1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 5 then %Healer1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHealer1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHealer1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    healer1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 6 then %Potato seller1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPotato1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPotato1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    potato1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 7 then %Hunter1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHunter1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHunter1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    hunter1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 8 then %Merchant1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMerchant1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMerchant1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    merchant1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 9 then %Rocket chair man1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRocket1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRocket1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rocket1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 10 then %Knight1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesKnight1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noKnight1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    knight1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 11 then %Emo1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesEmo1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noEmo1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    emo1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 12 then %Rockstar1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRockstar1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRockstar1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rockstar1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 13 then %Turtle1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTurtle1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTurtle1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    turtle1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 14 then %Jester1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesJester1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noJester1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    jester1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 15 then %Teen1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTeen1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTeen1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    teen1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 16 then %Penguin1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPenguin1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPenguin1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    penguin1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 17 then %Sword1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSword1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSword1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    sword1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 18 then %Author1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAuthor1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAuthor1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    author1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 19 then %Owl1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesOwl1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noOwl1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    owl1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 20 then %Robot1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRobot1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRobot1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    robot1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 21 then %Wheelchair1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesWheelchair1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noWheelchair1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    wheelchair1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 22 then %Minion1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMinion1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMinion1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    minion1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 23 then %Farmer1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFarmer1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFarmer1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    farmer1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 24 then %Cat1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesCat1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noCat1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    cat1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 25 then %Superhero1
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSuperhero1, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSuperhero1, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    superhero1
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 26 then %Advisor2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 27 then %Artist2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 28 then %Fairy2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFairy2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFairy2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    fairy2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 29 then %Bat2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesBat2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noBat2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    bat2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 30 then %Healer2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHealer2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHealer2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    healer2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 31 then %Potato bomb seller
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPotato2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPotato2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    potato2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 32 then %Hunter2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesHunter2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noHunter2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    hunter2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 33 then %Merchant2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMerchant2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMerchant2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    merchant2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 34 then %Rocket2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRocket2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRocket2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rocket2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 35 then %Knight2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesKnight2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noKnight2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    knight2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 36 then %Emo2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesEmo2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noEmo2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    emo2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 37 then %Rockstar2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRockstar2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRockstar2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rockstar2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 38 then %Turtle2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTurtle2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTurtle2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    turtle2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 39 then %Jester2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesJester2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noJester2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    jester2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 40 then %Teen2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesTeen2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noTeen2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    teen2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 41 then %Penguin2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesPenguin2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noPenguin2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    penguin2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 42 then %Sword
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSword2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSword2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    sword2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 43 then %Author2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAuthor2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAuthor2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    author2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 44 then %Owl2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesOwl2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noOwl2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    owl2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 45 then %Robot2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRobot2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRobot2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    robot2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 46 then %Wheelchair2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesWheelchair2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noWheelchair2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    wheelchair2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 47 then %Minion
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesMinion2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noMinion2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    minion2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 48 then %Farmer
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesFarmer2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noFarmer2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    farmer2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 49 then %Cat2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesCat2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noCat2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    cat2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 50 then %Superhero2
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesSuperhero2, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noSuperhero2, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    superhero2
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 51 then %Royal Advisor3
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAdvisor3, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAdvisor3, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    advisor3
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 52 then %Artist3
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesArtist3, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noArtist3, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    artist3
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 53 then %Rocket3
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRocket3, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRocket3, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    rocket3
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 54 then %Author3
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesAuthor3, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noAuthor3, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    author3
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	elsif random = 55 then %Robot3
	    yes := GUI.CreatePictureButtonFull (400, 20, y, yesRobot3, 0, 0, 'y', true)
	    no := GUI.CreatePictureButtonFull (500, 20, n, noRobot3, 0, 0, 'n', true)
	    GUI.Disable (yes)
	    GUI.Disable (no)
	    robot3
	    loop
		exit when GUI.ProcessEvent
		exit when continue = true
	    end loop
	    continue := false
	end if
    end for
    day := day + 1

    if happy <= 0 or people <= 0 or gold <= 0 then
	gameOver
	exit
    end if
    dayEnd

    people := people + 50
    people1 := people
    happy1 := happy
    gold1 := gold
    main
    ctrl
    Music.PlayFileStop
    fork music
end for

%Game End
cls
GUI.Dispose (enterButton)
Pic.Draw (cloud, 160, 400, picMerge)
Pic.Draw (cloud, 360, 340, picMerge)
Pic.Draw (cloud, 520, 460, picMerge)
Pic.Draw (cloud, 720, 380, picMerge)
Pic.DrawSpecial (endScreen, 0, 0, picMerge, picFadeIn, 4000)
Pic.Draw (dbox, 580, 380, picMerge)

ctrl
new dialogue, 2
top := 2
Font.Draw ("Royal Advisor", 660, fy, leafy4, 111)
num := 1
dialogue (1) := "You have saved our town!"
dialogue (2) := "You, monarch, are truly worthy of the crown."
num := 1

loop
    speak := dialogue (num)
    for i : 1 .. length (speak)
	var speak1 : string := speak (i)
	delay (20)
	Font.Draw (speak1, fx, fy - 24, leafy2, black)
	fx := fx + 17

	if fx + 40 > 880 and speak (i) = " " then
	    fx := 660
	    fy := fy - 22
	end if

	if fx >= 880 then
	    fx := 660
	    fy := fy - 22
	end if
    end for

    fx := 660
    fy := 540

    Input.Pause
    cls
    Pic.Draw (cloud, 160, 400, picMerge)
    Pic.Draw (cloud, 360, 340, picMerge)
    Pic.Draw (cloud, 520, 460, picMerge)
    Pic.Draw (cloud, 720, 380, picMerge)
    Pic.Draw (endScreen, 0, 0, picMerge)
    Pic.Draw (dbox, 580, 380, picMerge)
    ctrl

    num := num + 1
    exit when num = 3
end loop

var credits : int := Pic.FileNew ("ending credits.jpg")
Pic.DrawSpecial (credits, 0, 0, picCopy, picFadeIn, 2000)

loop
    exit when GUI.ProcessEvent
    exit when happy <= 0 or people <= 0 or gold <= 0
end loop
