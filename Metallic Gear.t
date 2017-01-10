% Brad Cross
% November 20, 2014
% Metallic Gear
% GOTY 2015

% Intro and general vars
var file, winID, font1, logo, title, keycont, metalgear1, snake1, snake2 : int
var snake3, snake4, metalgear2, menucol, mx, my, bnum, updown, select : int
var kojima1, kojima2, kojima3, kojima4, titlecover, campopen, campclose : int
var codec, snakedecc, snakedeco, codeccover, snakex, snakey, orient, kcirtapcodec : int
var kcirtapcodec2, kcirtapcodec3, snakex2i, snakey2i, snakedecc2, snakedeco2 : int
var codec3, keycont2, buttoncount, explosion, helix, gameoverpic, win, mg1, mg2 : int
var mg3, mg4, mg5, mg6, mg7, noload, nolead : int
var snakex2, snakey2 : real
var key : string (1)
var introdone, anykeydone, screendone, gamedone, gameover, kcirtapco : boolean
var Key : array char of boolean
% Characters
var snakepic : array 1 .. 4 of int
var snake : array 1 .. 4 of int
var snakeparpic, snakepar : int
var guardpic : array 1 .. 20 of int
var guard : array 1 .. 20 of int
var guardx : array 1 .. 5 of int
var guardy : array 1 .. 5 of int
var guardx2 : array 1 .. 5 of real
var guardy2 : array 1 .. 5 of real
var guardx2i : array 1 .. 5 of int
var guardy2i : array 1 .. 5 of int
var guardorient : array 1 .. 5 of int
var heli, helipic : int
% Textures
var blank, grass, walltop, wallbottom, wallleft, wallright, walltopleft : int
var walltopright, wallbottomleft, wallbottomright, doortop, doorleft, doorright : int
var doorbottom, concrete, wallintop, wallinbottom, wallinleft, wallinright : int
var wallinvert, wallinhori, tanktopleft, tanktopright, tankbottomleft, tankbottomright : int
var blackk, kcirtap, kcirtap2, mg1topleft, mg1topright, mg1bottomleft : int
var mg1bottomright, padtopleft, padtopright, padbottomleft, padbottomright : int
var helitop1, helitop2, helitop3, helibottom1, helibottom2, helibottom3 : int
var button, usedbutton, dnt, bboty, cb, tip, tip2, chopper, tex : int
% Coords
var texcoord : array 1 .. 10, 1 .. 10 of string
var objcoord : array 0 .. 11, 0 .. 11 of string

var codectext : array 1 .. 20 of int
var kodectext : array 1 .. 13 of int


font1 := Font.New ("Impact:50")

logo := Pic.FileNew ("Intro/BrodlerTek.gif")
title := Pic.FileNew ("Intro/Title.gif")
keycont := Pic.FileNew ("Intro/Key.gif")
metalgear1 := Pic.FileNew ("Intro/MetalGear1.jpg")
metalgear2 := Pic.FileNew ("Intro/MetalGear2.jpg")
snake1 := Pic.FileNew ("Intro/Snake1.jpg")
snake2 := Pic.FileNew ("Intro/Snake2.gif")
snake3 := Pic.FileNew ("Intro/Snake3.gif")
snake4 := Pic.FileNew ("Intro/Snake4.gif")
kojima1 := Pic.FileNew ("Intro/Kojima1.gif")
kojima2 := Pic.FileNew ("Intro/Kojima2.gif")
kojima3 := Pic.FileNew ("Intro/Kojima3.gif")
kojima4 := Pic.FileNew ("Intro/Kojima4.gif")
titlecover := Pic.FileNew ("Intro/TitleCover.jpg")
campopen := Pic.FileNew ("Intro/CampOpen.jpg")
campclose := Pic.FileNew ("Intro/CampClose.jpg")
snakedecc := Pic.FileNew ("Intro/SnakeCodecClosed.jpg")
snakedeco := Pic.FileNew ("Intro/SnakeCodecOpen.jpg")
codec := Pic.FileNew ("Intro/Codec.jpg")
codeccover := Pic.FileNew ("Intro/CodecCover.jpg")
codectext (1) := Pic.FileNew ("Intro/Codec1.jpg")
codectext (2) := Pic.FileNew ("Intro/Codec2.jpg")
codectext (3) := Pic.FileNew ("Intro/Codec3.jpg")
codectext (4) := Pic.FileNew ("Intro/Codec4.jpg")
codectext (5) := Pic.FileNew ("Intro/Codec5.jpg")
codectext (6) := Pic.FileNew ("Intro/Codec6.jpg")
codectext (7) := Pic.FileNew ("Intro/Codec7.jpg")
codectext (8) := Pic.FileNew ("Intro/Codec8.jpg")
codectext (9) := Pic.FileNew ("Intro/Codec9.jpg")
codectext (10) := Pic.FileNew ("Intro/Codec10.jpg")
codectext (11) := Pic.FileNew ("Intro/Codec11.jpg")
codectext (12) := Pic.FileNew ("Intro/Codec12.jpg")
codectext (13) := Pic.FileNew ("Intro/Codec13.jpg")
codectext (14) := Pic.FileNew ("Intro/Codec14.jpg")
kodectext (1) := Pic.FileNew ("Kcirtap/Kodec1.jpg")
kodectext (2) := Pic.FileNew ("Kcirtap/Kodec2.jpg")
kodectext (3) := Pic.FileNew ("Kcirtap/Kodec3.jpg")
kodectext (4) := Pic.FileNew ("Kcirtap/Kodec4.jpg")
kodectext (5) := Pic.FileNew ("Kcirtap/Kodec5.jpg")
kodectext (6) := Pic.FileNew ("Kcirtap/Kodec6.jpg")
kodectext (7) := Pic.FileNew ("Kcirtap/Kodec7.jpg")
kodectext (8) := Pic.FileNew ("Kcirtap/Kodec8.jpg")
kodectext (9) := Pic.FileNew ("Kcirtap/Kodec9.jpg")
kodectext (10) := Pic.FileNew ("Kcirtap/Kodec10.jpg")
kodectext (11) := Pic.FileNew ("Kcirtap/Kodec11.jpg")
kodectext (12) := Pic.FileNew ("Kcirtap/Kodec12.jpg")
kodectext (13) := Pic.FileNew ("Kcirtap/Kodec13.jpg")
snakedecc2 := Pic.FileNew ("Kcirtap/SnakeCodecClosed.jpg")
snakedeco2 := Pic.FileNew ("Kcirtap/SnakeCodecOpen.jpg")
codec3 := Pic.FileNew ("Kcirtap/Codec2.jpg")
keycont2 := Pic.FileNew ("Kcirtap/Key.gif")
kcirtapcodec := Pic.FileNew ("Kcirtap/KcirtapCodec.jpg")
kcirtapcodec2 := Pic.FileNew ("Kcirtap/KcirtapCodec2.jpg")
kcirtapcodec3 := Pic.FileNew ("Kcirtap/KcirtapCodec3.jpg")
gameoverpic := Pic.FileNew ("Intro/Gameover.jpg")
win := Pic.FileNew ("Intro/Win.gif")
chopper := Pic.FileNew ("Tex/Chopper.gif")

% Chars
snakepic (1) := Pic.FileNew ("Char/SnakeUp.gif")
snakepic (2) := Pic.FileNew ("Char/SnakeDown.gif")
snakepic (3) := Pic.FileNew ("Char/SnakeLeft.gif")
snakepic (4) := Pic.FileNew ("Char/SnakeRight.gif")
guardpic (1) := Pic.FileNew ("Char/GuardUp.gif")
guardpic (2) := Pic.FileNew ("Char/GuardDown.gif")
guardpic (3) := Pic.FileNew ("Char/GuardLeft.gif")
guardpic (4) := Pic.FileNew ("Char/GuardRight.gif")
guardpic (5) := Pic.FileNew ("Char/GuardUp.gif")
guardpic (6) := Pic.FileNew ("Char/GuardDown.gif")
guardpic (7) := Pic.FileNew ("Char/GuardLeft.gif")
guardpic (8) := Pic.FileNew ("Char/GuardRight.gif")
guardpic (9) := Pic.FileNew ("Char/GuardUp.gif")
guardpic (10) := Pic.FileNew ("Char/GuardDown.gif")
guardpic (11) := Pic.FileNew ("Char/GuardLeft.gif")
guardpic (12) := Pic.FileNew ("Char/GuardRight.gif")
guardpic (13) := Pic.FileNew ("Char/GuardUp.gif")
guardpic (14) := Pic.FileNew ("Char/GuardDown.gif")
guardpic (15) := Pic.FileNew ("Char/GuardLeft.gif")
guardpic (16) := Pic.FileNew ("Char/GuardRight.gif")
guardpic (17) := Pic.FileNew ("Char/GuardUp.gif")
guardpic (18) := Pic.FileNew ("Char/GuardDown.gif")
guardpic (19) := Pic.FileNew ("Char/GuardLeft.gif")
guardpic (20) := Pic.FileNew ("Char/GuardRight.gif")
snakeparpic := Pic.FileNew ("Char/SnakePar.gif")
helipic := Pic.FileNew ("Char/Heli.gif")

% Textures
blank := Pic.FileNew ("Tex/Blank1.jpg")
grass := Pic.FileNew ("Tex/Grass1.jpg")
walltop := Pic.FileNew ("Tex/WallTop.jpg")
wallbottom := Pic.FileNew ("Tex/WallBottom.jpg")
wallleft := Pic.FileNew ("Tex/WallLeft.jpg")
wallright := Pic.FileNew ("Tex/WallRight.jpg")
walltopleft := Pic.FileNew ("Tex/WallTopLeft.jpg")
walltopright := Pic.FileNew ("Tex/WallTopRight.jpg")
wallbottomleft := Pic.FileNew ("Tex/WallBottomLeft.jpg")
wallbottomright := Pic.FileNew ("Tex/WallBottomRight.jpg")
doortop := Pic.FileNew ("Tex/DoorTop.jpg")
doorleft := Pic.FileNew ("Tex/DoorLeft.jpg")
doorright := Pic.FileNew ("Tex/DoorRight.jpg")
doorbottom := Pic.FileNew ("Tex/DoorBottom.jpg")
concrete := Pic.FileNew ("Tex/Concrete.jpg")
wallintop := Pic.FileNew ("Tex/WallInTop.jpg")
wallinbottom := Pic.FileNew ("Tex/WallInBottom.jpg")
wallinleft := Pic.FileNew ("Tex/WallInLeft.jpg")
wallinright := Pic.FileNew ("Tex/WallInRight.jpg")
wallinvert := Pic.FileNew ("Tex/WallInVert.jpg")
wallinhori := Pic.FileNew ("Tex/WallInHori.jpg")
tanktopleft := Pic.FileNew ("Tex/TankTopLeft.gif")
tanktopright := Pic.FileNew ("Tex/TankTopRight.gif")
tankbottomleft := Pic.FileNew ("Tex/TankBottomLeft.gif")
tankbottomright := Pic.FileNew ("Tex/TankBottomRight.gif")
blackk := Pic.FileNew ("Tex/Black.jpg")
kcirtap := Pic.FileNew ("Tex/Kcirtap.gif")
kcirtap2 := Pic.FileNew ("Tex/Kcirtap2.gif")
mg1topleft := Pic.FileNew ("Tex/MetallicGear1TopLeft.gif")
mg1topright := Pic.FileNew ("Tex/MetallicGear1TopRight.gif")
mg1bottomleft := Pic.FileNew ("Tex/MetallicGear1BottomLeft.gif")
mg1bottomright := Pic.FileNew ("Tex/MetallicGear1BottomRight.gif")
padtopleft := Pic.FileNew ("Tex/PadTopLeft.jpg")
padtopright := Pic.FileNew ("Tex/PadTopRight.jpg")
padbottomleft := Pic.FileNew ("Tex/PadBottomLeft.jpg")
padbottomright := Pic.FileNew ("Tex/PadBottomRight.jpg")
helitop1 := Pic.FileNew ("Tex/HeliTop1.gif")
helitop2 := Pic.FileNew ("Tex/HeliTop2.gif")
helitop3 := Pic.FileNew ("Tex/HeliTop3.gif")
helibottom1 := Pic.FileNew ("Tex/HeliBottom1.gif")
helibottom2 := Pic.FileNew ("Tex/HeliBottom2.gif")
helibottom3 := Pic.FileNew ("Tex/HeliBottom3.gif")
button := Pic.FileNew ("Tex/Button.gif")
usedbutton := Pic.FileNew ("Tex/ButtonUsed.gif")
explosion := Pic.FileNew ("Tex/Explode.gif")
tip := Pic.FileNew ("Tex/Tip.gif")
tip2 := Pic.FileNew ("Tex/Tip2.gif")
dnt := Pic.FileNew ("Tex/DNT.gif")
bboty := Pic.FileNew ("Tex/BBOTY.gif")
cb := Pic.FileNew ("Tex/CB.gif")
mg1 := Pic.FileNew ("Tex/MetallicGear1.gif")
mg2 := Pic.FileNew ("Tex/MetallicGear2.gif")
mg3 := Pic.FileNew ("Tex/MetallicGear3.gif")
mg4 := Pic.FileNew ("Tex/MetallicGear4.gif")
mg5 := Pic.FileNew ("Tex/MetallicGear5.gif")
mg6 := Pic.FileNew ("Tex/MetallicGear6.gif")
mg7 := Pic.FileNew ("Tex/MetallicGear7.gif")
noload := Pic.FileNew ("Intro/NoLoad.gif")
nolead := Pic.FileNew ("Intro/NoLead.gif")

winID := Window.Open ("graphics:1345;645")
View.Set ("nocursor")

% Audio
process music1
    Music.PlayFileLoop ("Audio/MGS3 CQC.mp3")
end music1
process music2
    Music.PlayFile ("Audio/MGS2 Theme1.mp3")
end music2
process music3
    Music.PlayFile ("Audio/MGS2 Theme2.mp3")
end music3
process music4
    Music.PlayFile ("Audio/Tara.wav")
end music4
process music5
    Music.PlayFile ("Audio/MGS3 Jungle.mp3")
end music5
process music6
    Music.PlayFileLoop ("Audio/Sanic.mp3")
end music6
process music7
    Music.PlayFileLoop ("Audio/Sandstorm.wav")
end music7
process music8
    Music.PlayFileLoop ("Audio/Skeletons.mp3")
end music8
process horn
    Music.PlayFile ("Audio/Horn.mp3")
end horn
process triple
    Music.PlayFile ("Audio/Triple.mp3")
end triple
process wow
    Music.PlayFile ("Audio/Wow.mp3")
end wow
process wombo
    Music.PlayFile ("Audio/Wombo.mp3")
end wombo
process hitmarker
    Music.PlayFile ("Audio/Hitmarker.mp3")
end hitmarker
process sad
    Music.PlayFileLoop ("Audio/2Sad4Me.mp3")
end sad
process foxdie
    Music.PlayFile ("Audio/FOXDIE.mp3")
end foxdie
process intervention
    Music.PlayFile ("Audio/Intervention.mp3")
end intervention
process damnson
    Music.PlayFile ("Audio/Damn Son.mp3")
end damnson
process mom
    Music.PlayFile ("Audio/Mom.mp3")
end mom
process nuke
    Music.PlayFile ("Audio/Incoming.mp3")
    Music.PlayFileLoop ("Audio/Nuke.mp3")
end nuke
process chopter
    Music.PlayFile ("Audio/Chopter.wav")
    Music.PlayFileLoop ("Audio/Chopter2.wav")
end chopter
process spooky
    Music.PlayFile ("Audio/Spooky.mp3")
end spooky

process intro1
    Pic.DrawSpecialBack (logo, 270, 450, picMerge, picFadeIn, 2000)
end intro1
process intro2
    Pic.DrawSpecialBack (metalgear1, 3, 3, picMerge, picFadeIn, 2000)
end intro2
process intro3
    Pic.DrawSpecialBack (title, 70, 250, picMerge, picFadeIn, 2000)
end intro3
process intro4
    Pic.DrawSpecialBack (snake1, 1200, 450, picMerge, picFadeIn, 2000)
end intro4
process intro5
    Pic.DrawSpecialBack (metalgear2, 1192, 3, picMerge, picFadeIn, 2000)
end intro5
process intro6
    Pic.DrawSpecial (keycont, 240, 160, picMerge, picFadeIn, 2000)
end intro6
process intro7
    Pic.DrawSpecialBack (snake2, 3, 430, picMerge, picFadeIn, 2000)
end intro7
process anykey
    getch (key)
    anykeydone := true
end anykey
process codec1
    for i : 1 .. 1
	% Campbell
	exit when key not= ""
	Pic.DrawSpecialBack (codectext (1), 350, 120, picCopy, picWipeLeftToRight, 3000)
	delay (3000)
	exit when key not= ""
	Pic.DrawSpecialBack (codectext (2), 350, 40, picCopy, picWipeLeftToRight, 3000)
	delay (3200)
	exit when key not= ""
	Pic.Draw (codeccover, 350, 40, picCopy)
	Pic.DrawSpecialBack (codectext (3), 350, 120, picCopy, picWipeLeftToRight, 3000)
	delay (3000)
	exit when key not= ""
	Pic.DrawSpecialBack (codectext (4), 350, 40, picCopy, picWipeLeftToRight, 3000)
	delay (3200)
	exit when key not= ""
	Pic.Draw (codeccover, 350, 40, picCopy)
	Pic.DrawSpecialBack (codectext (5), 350, 120, picCopy, picWipeLeftToRight, 3000)
	delay (3200)
	exit when key not= ""
	Pic.Draw (codeccover, 350, 40, picCopy)
	% Snake
	Pic.DrawSpecialBack (codectext (6), 50, 120, picCopy, picWipeLeftToRight, 2000)
	delay (2000)
	exit when key not= ""
	Pic.Draw (codeccover, 50, 40, picCopy)
	% Campbell
	Pic.DrawSpecialBack (codectext (7), 950, 120, picCopy, picWipeLeftToRight, 2000)
	delay (2000)
	exit when key not= ""
	Pic.Draw (codeccover, 950, 40, picCopy)
	% Snake
	Pic.DrawSpecialBack (codectext (8), 50, 120, picCopy, picWipeLeftToRight, 3000)
	delay (3000)
	exit when key not= ""
	Pic.Draw (codeccover, 50, 40, picCopy)
	% Campbell
	Pic.DrawSpecialBack (codectext (9), 350, 120, picCopy, picWipeLeftToRight, 3000)
	delay (3000)
	exit when key not= ""
	Pic.DrawSpecialBack (codectext (10), 350, 40, picCopy, picWipeLeftToRight, 3000)
	delay (3200)
	exit when key not= ""
	Pic.Draw (codeccover, 350, 40, picCopy)
	Pic.DrawSpecialBack (codectext (11), 350, 120, picCopy, picWipeLeftToRight, 3000)
	delay (3000)
	exit when key not= ""
	Pic.DrawSpecialBack (codectext (12), 350, 40, picCopy, picWipeLeftToRight, 3000)
	delay (3200)
	exit when key not= ""
	Pic.Draw (codeccover, 350, 40, picCopy)
	Pic.DrawSpecialBack (codectext (13), 350, 120, picCopy, picWipeLeftToRight, 3000)
	delay (3000)
	exit when key not= ""
	Pic.DrawSpecialBack (codectext (14), 350, 40, picCopy, picWipeLeftToRight, 3000)
	delay (4200)
	exit when key not= ""
    end for
end codec1
process codec2
    for i : 1 .. 1
	% Kcirtap
	exit when key not= ""
	Pic.DrawSpecialBack (kodectext (1), 230, 120, picCopy, picWipeLeftToRight, 3000)
	delay (3000)
	exit when key not= ""
	Pic.DrawSpecialBack (kodectext (2), 230, 70, picCopy, picWipeLeftToRight, 3000)
	delay (3200)
	exit when key not= ""
	Pic.Draw (codeccover, 0, 0, picCopy)
	Pic.DrawSpecialBack (kodectext (3), 230, 120, picCopy, picWipeLeftToRight, 3000)
	delay (3200)
	exit when key not= ""
	Pic.Draw (codeccover, 0, 0, picCopy)
	% Snake
	Pic.DrawSpecialBack (kodectext (4), 10, 120, picCopy, picWipeLeftToRight, 3000)
	delay (3200)
	exit when key not= ""
	Pic.Draw (codeccover, 0, 0, picCopy)
	% Kcirtap
	exit when key not= ""
	Pic.DrawSpecialBack (kodectext (5), 230, 120, picCopy, picWipeLeftToRight, 3000)
	delay (3000)
	exit when key not= ""
	Pic.DrawSpecialBack (kodectext (6), 230, 70, picCopy, picWipeLeftToRight, 3000)
	delay (3200)
	exit when key not= ""
	Pic.Draw (codeccover, 0, 0, picCopy)
	Pic.DrawSpecialBack (kodectext (7), 230, 120, picCopy, picWipeLeftToRight, 3000)
	delay (3000)
	exit when key not= ""
	Pic.DrawSpecialBack (kodectext (8), 230, 70, picCopy, picWipeLeftToRight, 3000)
	delay (3200)
	exit when key not= ""
	Pic.Draw (codeccover, 0, 0, picCopy)
	% Snake
	Pic.DrawSpecialBack (kodectext (9), 10, 120, picCopy, picWipeLeftToRight, 3000)
	delay (3000)
	exit when key not= ""
	Pic.DrawSpecialBack (kodectext (10), 10, 70, picCopy, picWipeLeftToRight, 3000)
	delay (3200)
	exit when key not= ""
	Pic.Draw (codeccover, 0, 0, picCopy)
	Pic.DrawSpecialBack (kodectext (11), 10, 120, picCopy, picWipeLeftToRight, 3000)
	delay (3200)
	exit when key not= ""
	Pic.Draw (codeccover, 0, 0, picCopy)
	% Kcirtap
	exit when key not= ""
	Pic.DrawSpecialBack (kodectext (12), 230, 120, picCopy, picWipeLeftToRight, 20000)
	delay (21500)
	Pic.Draw (codeccover, 0, 0, picCopy)
	% Snake
	Pic.DrawSpecialBack (kodectext (13), 10, 120, picCopy, picWipeLeftToRight, 3000)
	delay (3200)
    end for
end codec2

process move
    % Moves snake and prevents him from moving if there is an obstacle
    loop
	snakex2i := 0
	snakey2i := 0
	Input.KeyDown (Key)
	if Key (KEY_UP_ARROW) then
	    for i : 1 .. 10
		if snakey2 + 0.015625 = i - 1 then
		    snakey2i := i
		end if
		if snakex2 <= i and snakex2 >= i - 0.999999 then
		    snakex2i := i
		end if
	    end for
	    if objcoord (snakex2i, snakey2i) = "blank" then
		snakey := snakey + 1
		snakey2 := snakey2 + 0.015625
		orient := 1
	    end if
	elsif Key (KEY_DOWN_ARROW) then
	    for i : 1 .. 10
		if snakey2 - 0.015625 = i then
		    snakey2i := i
		end if
		if snakex2 <= i and snakex2 >= i - 0.999999 then
		    snakex2i := i
		end if
	    end for
	    if objcoord (snakex2i, snakey2i) = "blank" then
		snakey := snakey - 1
		snakey2 := snakey2 - 0.015625
		orient := 2
	    end if
	elsif Key (KEY_LEFT_ARROW) then
	    for i : 1 .. 10
		if snakex2 - 0.015625 = i then
		    snakex2i := i
		end if
		if snakey2 <= i and snakey2 >= i - 0.999999 then
		    snakey2i := i
		end if
	    end for
	    if objcoord (snakex2i, snakey2i) = "blank" then
		snakex := snakex - 1
		snakex2 := snakex2 - 0.015625
		orient := 3
	    end if
	elsif Key (KEY_RIGHT_ARROW) then
	    for i : 1 .. 10
		if snakex2 + 0.015625 = i - 1 then
		    snakex2i := i
		end if
		if snakey2 <= i and snakey2 >= i - 0.999999 then
		    snakey2i := i
		end if
	    end for
	    if objcoord (snakex2i, snakey2i) = "blank" then
		snakex := snakex + 1
		snakex2 := snakex2 + 0.015625
		orient := 4
	    end if
	end if
	% Hides all snake sprites before displaying the one with proper orientation
	for i : 1 .. 4
	    Sprite.Hide (snake (i))
	end for
	% Sets new position of snake and displays
	Sprite.SetPosition (snake (orient), snakex, snakey, true)
	Sprite.Show (snake (orient))
	View.Update
	exit when gamedone = true or gameover = true or kcirtapco = true
	delay (3)
    end loop
    Sprite.Hide (snake (orient))
end move

process detect
    % Detection check
    loop
	for i : 1 .. 5
	    if guardorient (i) = 1 or guardorient (i) = 5 or guardorient (i) = 9 or guardorient (i) = 13 or guardorient (i) = 17 then
		if snakex >= guardx (i) - 32 and snakex <= guardx (i) + 32 then
		    for o : guardy (i) .. 640
			for p : 64 .. 640 by 64
			    if o = p then
				guardy2i (i) := p div 64
			    end if
			    if guardx (i) <= p and guardx (i) >= p - 63 then
				guardx2i (i) := p div 64
			    end if
			end for
			exit when objcoord (guardx2i (i), guardy2i (i)) not= "blank"
			if o = snakey then
			    gameover := true
			    exit
			end if
		    end for
		end if
	    elsif guardorient (i) = 2 or guardorient (i) = 6 or guardorient (i) = 10 or guardorient (i) = 14 or guardorient (i) = 18 then
		if snakex >= guardx (i) - 32 and snakex <= guardx (i) + 32 then
		    for decreasing o : guardy (i) .. 0
			for p : 64 .. 640 by 64
			    if o = p then
				guardy2i (i) := p div 64
			    end if
			    if guardx (i) <= p and guardx (i) >= p - 63 then
				guardx2i (i) := p div 64
			    end if
			end for
			exit when objcoord (guardx2i (i), guardy2i (i)) not= "blank"
			if o = snakey then
			    gameover := true
			    exit
			end if
		    end for
		end if
	    elsif guardorient (i) = 3 or guardorient (i) = 7 or guardorient (i) = 11 or guardorient (i) = 15 or guardorient (i) = 19 then
		if snakey >= guardy (i) - 32 and snakey <= guardy (i) + 32 then
		    for decreasing o : guardx (i) .. 0
			for p : 64 .. 640 by 64
			    if o = p then
				guardx2i (i) := p div 64
			    end if
			    if guardy (i) <= p and guardy (i) >= p - 63 then
				guardy2i (i) := p div 64
			    end if
			end for
			exit when objcoord (guardx2i (i), guardy2i (i)) not= "blank"
			if o = snakex then
			    gameover := true
			    exit
			end if
		    end for
		end if
	    elsif guardorient (i) = 4 or guardorient (i) = 8 or guardorient (i) = 12 or guardorient (i) = 16 or guardorient (i) = 20 then
		if snakey >= guardy (i) - 32 and snakey <= guardy (i) + 32 then
		    for o : guardx (i) .. 640
			for p : 64 .. 640 by 64
			    if o = p then
				guardx2i (i) := p div 64
			    end if
			    if guardy (i) <= p and guardy (i) >= p - 63 then
				guardy2i (i) := p div 64
			    end if
			end for
			exit when objcoord (guardx2i (i), guardy2i (i)) not= "blank"
			if o = snakex then
			    gameover := true
			    exit
			end if
		    end for
		end if
	    end if
	end for
	exit when gamedone = true or gameover = true or kcirtapco = true
    end loop
end detect

% Guard patrols
% Screen 2
process guard1
    % Guard patrol 1 (screen 2)
    % Guard 1 starting position
    guardx (1) := 512
    guardy (1) := 128
    guardx2 (1) := 8
    guardy2 (1) := 2
    loop
	% 8, 2 (512, 128) to 8, 8.5 (512, 544)
	guardorient (1) := 1
	for i : 1 .. 416
	    guardy (1) := guardy (1) + 1
	    guardy2 (1) := guardy2 (1) + 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
	% 8, 8.5 (512, 544) to 2, 8.5 (128, 544)
	guardorient (1) := 3
	for i : 1 .. 384
	    guardx (1) := guardx (1) - 1
	    guardx2 (1) := guardx2 (1) - 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
	% 2, 8.5 (128, 544) to 2, 2 (128, 128)
	guardorient (1) := 2
	for i : 1 .. 416
	    guardy (1) := guardy (1) - 1
	    guardy2 (1) := guardy2 (1) - 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
	% 2, 2 (128, 128) to 2, 8.5 (128, 544)
	guardorient (1) := 1
	for i : 1 .. 416
	    guardy (1) := guardy (1) + 1
	    guardy2 (1) := guardy2 (1) + 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
	% 2, 8.5 (128, 544) to 8, 8.5 (512, 544)
	guardorient (1) := 4
	for i : 1 .. 384
	    guardx (1) := guardx (1) + 1
	    guardx2 (1) := guardx2 (1) + 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
	% 8, 8.5 (512, 544) to 8, 2 (512, 128)
	guardorient (1) := 2
	for i : 1 .. 416
	    guardy (1) := guardy (1) - 1
	    guardy2 (1) := guardy2 (1) - 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
    end loop
    Sprite.Hide (guard (guardorient (1)))
end guard1
% Screen 3
process guard2
    % Guard patrol 1 (screen 3)
    % Guard 1 starting position
    guardx (1) := 288
    guardy (1) := 256
    guardx2 (1) := 4.5
    guardy2 (1) := 4
    loop
	% 4.5, 4 (288, 256) to 4.5, 6.5 (288, 416)
	guardorient (1) := 1
	for i : 1 .. 160
	    guardy (1) := guardy (1) + 1
	    guardy2 (1) := guardy2 (1) + 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
	% 4.5, 6.5 (288, 416) to 1.5, 6.5 (96, 416)
	guardorient (1) := 3
	for i : 1 .. 192
	    guardx (1) := guardx (1) - 1
	    guardx2 (1) := guardx2 (1) - 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
	% 1.5, 6.5 (96, 416) to 1.5, 3.5 (96, 224)
	guardorient (1) := 2
	for i : 1 .. 192
	    guardy (1) := guardy (1) - 1
	    guardy2 (1) := guardy2 (1) - 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
	% 1.5, 3.5 (96, 224) to 4.5, 3.5 (288, 224)
	guardorient (1) := 4
	for i : 1 .. 192
	    guardx (1) := guardx (1) + 1
	    guardx2 (1) := guardx2 (1) + 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
	% 4.5, 3.5 (288, 224) to 4.5, 4 (288, 256)
	guardorient (1) := 1
	for i : 1 .. 32
	    guardy (1) := guardy (1) + 1
	    guardy2 (1) := guardy2 (1) + 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
    end loop
    Sprite.Hide (guard (guardorient (1)))
end guard2
process guard3
    % Guard patrol 2 (screen 3)
    % Guard 2 starting position
    guardx (2) := 352
    guardy (2) := 256
    guardx2 (2) := 5.5
    guardy2 (2) := 4
    loop
	% 5.5, 4 (352, 256) to 5.5, 3.5 (352, 224)
	guardorient (2) := 2
	for i : 1 .. 32
	    guardy (2) := guardy (2) - 1
	    guardy2 (2) := guardy2 (2) - 0.015625
	    Sprite.SetPosition (guard (guardorient (2)), guardx (2), guardy (2), true)
	    Sprite.Show (guard (guardorient (2)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (2)))
	% 5.5, 3.5 (352, 224) to 8.5, 3.5 (544, 224)
	guardorient (2) := 4
	for i : 1 .. 192
	    guardx (2) := guardx (2) + 1
	    guardx2 (2) := guardx2 (2) + 0.015625
	    Sprite.SetPosition (guard (guardorient (2)), guardx (2), guardy (2), true)
	    Sprite.Show (guard (guardorient (2)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (2)))
	% 8.5, 3.5 (544, 224) to 8.5, 6.5 (544, 416)
	guardorient (2) := 1
	for i : 1 .. 192
	    guardy (2) := guardy (2) + 1
	    guardy2 (2) := guardy2 (2) + 0.015625
	    Sprite.SetPosition (guard (guardorient (2)), guardx (2), guardy (2), true)
	    Sprite.Show (guard (guardorient (2)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (2)))
	% 8.5, 6.5 (544, 416) to 5.5, 6.5 (352, 416)
	guardorient (2) := 3
	for i : 1 .. 192
	    guardx (2) := guardx (2) - 1
	    guardx2 (2) := guardx2 (2) - 0.015625
	    Sprite.SetPosition (guard (guardorient (2)), guardx (2), guardy (2), true)
	    Sprite.Show (guard (guardorient (2)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (2)))
	% 5.5, 6.5 (352, 416) to 5.5, 4 (352, 256)
	guardorient (2) := 2
	for i : 1 .. 160
	    guardy (2) := guardy (2) - 1
	    guardy2 (2) := guardy2 (2) - 0.015625
	    Sprite.SetPosition (guard (guardorient (2)), guardx (2), guardy (2), true)
	    Sprite.Show (guard (guardorient (2)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (2)))
    end loop
    Sprite.Hide (guard (guardorient (2)))
end guard3
% Screen 4
process guard4
    % Guard patrol 1 (screen 3)
    % Guard 1 starting position
    guardx (1) := 96
    guardy (1) := 224
    guardx2 (1) := 1.5
    guardy2 (1) := 3.5
    loop
	% 1.5, 3.5 (96, 224) to 8.5, 3.5 (544, 224)
	guardorient (1) := 4
	for i : 1 .. 448
	    guardx (1) := guardx (1) + 1
	    guardx2 (1) := guardx2 (1) + 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
	% 8.5, 3.5 (544, 224) to 1.5, 3.5 (96, 224)
	guardorient (1) := 3
	for i : 1 .. 448
	    guardx (1) := guardx (1) - 1
	    guardx2 (1) := guardx2 (1) - 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
    end loop
    Sprite.Hide (guard (guardorient (1)))
end guard4
process guard5
    % Guard patrol 2 (screen 3)
    % Guard 2 starting position
    guardx (2) := 544
    guardy (2) := 416
    guardx2 (2) := 8.5
    guardy2 (2) := 6.5
    loop
	% 8.5, 6.5 (544, 416) to 1.5, 6.5 (96, 416)
	guardorient (2) := 3
	for i : 1 .. 448
	    guardx (2) := guardx (2) - 1
	    guardx2 (2) := guardx2 (2) - 0.015625
	    Sprite.SetPosition (guard (guardorient (2)), guardx (2), guardy (2), true)
	    Sprite.Show (guard (guardorient (2)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (2)))
	% 1.5, 6.5 (96, 416) to 8.5, 6.5 (544, 416)
	guardorient (2) := 4
	for i : 1 .. 448
	    guardx (2) := guardx (2) + 1
	    guardx2 (2) := guardx2 (2) + 0.015625
	    Sprite.SetPosition (guard (guardorient (2)), guardx (2), guardy (2), true)
	    Sprite.Show (guard (guardorient (2)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (2)))
    end loop
    Sprite.Hide (guard (guardorient (2)))
end guard5
process guard6
    % Guard patrol 1 (screen 8)
    % Guard 1 starting position
    guardx (1) := 224
    guardy (1) := 288
    guardx2 (1) := 3.5
    guardy2 (1) := 4.5
    loop
	% 2.5, 4.5 (224, 288) to 1.5, 6.5 (416, 288)
	guardorient (1) := 4
	for i : 1 .. 192
	    guardx (1) := guardx (1) + 1
	    guardx2 (1) := guardx2 (1) + 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (13)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
	% 1.5, 6.5 (416, 416) to 2.5, 4.5 (224, 288)
	guardorient (1) := 3
	for i : 1 .. 192
	    guardx (1) := guardx (1) - 1
	    guardx2 (1) := guardx2 (1) - 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (13)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
    end loop
    Sprite.Hide (guard (guardorient (1)))
end guard6
process guard7
    % Guard patrol 2 (screen 8)
    % Guard 2 starting position
    guardx (2) := 480
    guardy (2) := 480
    guardx2 (2) := 7.5
    guardy2 (2) := 7.5
    loop
	% 7.5, 7.5 (480, 480) to 2.5, 7.5 (160, 480)
	guardorient (2) := 7
	for i : 1 .. 320
	    guardx (2) := guardx (2) - 1
	    guardx2 (2) := guardx2 (2) - 0.015625
	    Sprite.SetPosition (guard (guardorient (2)), guardx (2), guardy (2), true)
	    Sprite.Show (guard (guardorient (2)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (2)))
	% 1.5, 7.5 (160, 480) to 7.5, 7.5 (480, 480)
	guardorient (2) := 8
	for i : 1 .. 320
	    guardx (2) := guardx (2) + 1
	    guardx2 (2) := guardx2 (2) + 0.015625
	    Sprite.SetPosition (guard (guardorient (2)), guardx (2), guardy (2), true)
	    Sprite.Show (guard (guardorient (2)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (2)))
    end loop
    Sprite.Hide (guard (guardorient (2)))
end guard7
process guard8
    % Guard patrol 3 (screen 8)
    % Guard 3 starting position
    guardx (3) := 160
    guardy (3) := 96
    guardx2 (3) := 2.5
    guardy2 (3) := 1.5
    loop
	% 2.5, 1.5 (160, 96) to 7.5, 1.5 (480, 96)
	guardorient (3) := 12
	for i : 1 .. 320
	    guardx (3) := guardx (3) + 1
	    guardx2 (3) := guardx2 (3) + 0.015625
	    Sprite.SetPosition (guard (guardorient (3)), guardx (3), guardy (3), true)
	    Sprite.Show (guard (guardorient (3)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (3)))
	% 7.5, 1.5 (480, 96) to 2.5, 1.5 (160, 96)
	guardorient (3) := 11
	for i : 1 .. 320
	    guardx (3) := guardx (3) - 1
	    guardx2 (3) := guardx2 (3) - 0.015625
	    Sprite.SetPosition (guard (guardorient (3)), guardx (3), guardy (3), true)
	    Sprite.Show (guard (guardorient (3)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (3)))
    end loop
    Sprite.Hide (guard (guardorient (3)))
end guard8
process guard9
    % Guard patrol 1 (screen 10)
    % Guard 1 starting position
    guardx (1) := 160
    guardy (1) := 544
    guardx2 (1) := 2.5
    guardy2 (1) := 8.5
    loop
	% 2.5, 8.5 (160, 544) to 7.5, 8.5 (480, 544)
	guardorient (1) := 4
	for i : 1 .. 320
	    guardx (1) := guardx (1) + 1
	    guardx2 (1) := guardx2 (1) + 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (7)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
	% 7.5, 8.5 (480, 544) to 2.5, 8.5 (160, 544)
	guardorient (1) := 3
	for i : 1 .. 320
	    guardx (1) := guardx (1) - 1
	    guardx2 (1) := guardx2 (1) - 0.015625
	    Sprite.SetPosition (guard (guardorient (1)), guardx (1), guardy (1), true)
	    Sprite.Show (guard (guardorient (1)))
	    delay (7)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (1)))
    end loop
    Sprite.Hide (guard (guardorient (1)))
end guard9
process guard10
    % Guard patrol 2 (screen 10)
    % Guard 2 starting position
    guardx (2) := 96
    guardy (2) := 480
    guardx2 (2) := 1.5
    guardy2 (2) := 7.5
    loop
	% 1.5, 7.5 (96, 480) to 1.5, 2.5 (96, 160)
	guardorient (2) := 6
	for i : 1 .. 320
	    guardy (2) := guardy (2) - 1
	    guardy2 (2) := guardy2 (2) - 0.015625
	    Sprite.SetPosition (guard (guardorient (2)), guardx (2), guardy (2), true)
	    Sprite.Show (guard (guardorient (2)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (2)))
	% 1.5, 2.5 (96, 160) to 1.5, 7.5 (96, 480)
	guardorient (2) := 5
	for i : 1 .. 320
	    guardy (2) := guardy (2) + 1
	    guardy2 (2) := guardy2 (2) + 0.015625
	    Sprite.SetPosition (guard (guardorient (2)), guardx (2), guardy (2), true)
	    Sprite.Show (guard (guardorient (2)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (2)))
    end loop
    Sprite.Hide (guard (guardorient (2)))
end guard10
process guard11
    % Guard patrol 3 (screen 10)
    % Guard 3 starting position
    guardx (3) := 224
    guardy (3) := 96
    guardx2 (3) := 3.5
    guardy2 (3) := 1.5
    loop
	% 3.5, 1.5 (224, 96) to 3.5, 7.5 (224, 480)
	guardorient (3) := 9
	for i : 1 .. 384
	    guardy (3) := guardy (3) + 1
	    guardy2 (3) := guardy2 (3) + 0.015625
	    Sprite.SetPosition (guard (guardorient (3)), guardx (3), guardy (3), true)
	    Sprite.Show (guard (guardorient (3)))
	    delay (10)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (3)))
	% 3.5, 7.5 (224, 480) to 3.5, 1.5 (224, 96)
	guardorient (3) := 10
	for i : 1 .. 384
	    guardy (3) := guardy (3) - 1
	    guardy2 (3) := guardy2 (3) - 0.015625
	    Sprite.SetPosition (guard (guardorient (3)), guardx (3), guardy (3), true)
	    Sprite.Show (guard (guardorient (3)))
	    delay (10)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (3)))
    end loop
    Sprite.Hide (guard (guardorient (3)))
end guard11
process guard12
    % Guard patrol 4 (screen 10)
    % Guard 4 starting position
    guardx (4) := 416
    guardy (4) := 480
    guardx2 (4) := 6.5
    guardy2 (4) := 7.5
    loop
	% 6.5, 7.5 (416, 480) to 6.5, 1.5 (416, 96)
	guardorient (4) := 14
	for i : 1 .. 384
	    guardy (4) := guardy (4) - 1
	    guardy2 (4) := guardy2 (4) - 0.015625
	    Sprite.SetPosition (guard (guardorient (4)), guardx (4), guardy (4), true)
	    Sprite.Show (guard (guardorient (4)))
	    delay (10)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (4)))
	% 6.5, 1.5 (416, 96) to 6.5, 7.5 (416, 480)
	guardorient (4) := 13
	for i : 1 .. 384
	    guardy (4) := guardy (4) + 1
	    guardy2 (4) := guardy2 (4) + 0.015625
	    Sprite.SetPosition (guard (guardorient (4)), guardx (4), guardy (4), true)
	    Sprite.Show (guard (guardorient (4)))
	    delay (10)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (4)))
    end loop
    Sprite.Hide (guard (guardorient (4)))
end guard12
process guard13
    % Guard patrol 5 (screen 10)
    % Guard 5 starting position
    guardx (5) := 544
    guardy (5) := 160
    guardx2 (5) := 8.5
    guardy2 (5) := 2.5
    loop
	% 8.5, 2.5 (544, 160) to 8.5, 7.5 (544, 480)
	guardorient (5) := 17
	for i : 1 .. 320
	    guardy (5) := guardy (5) + 1
	    guardy2 (5) := guardy2 (5) + 0.015625
	    Sprite.SetPosition (guard (guardorient (5)), guardx (5), guardy (5), true)
	    Sprite.Show (guard (guardorient (5)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (5)))
	% 8.5, 7.5 (544, 480) to 8.5, 2.5 (544, 160)
	guardorient (5) := 18
	for i : 1 .. 320
	    guardy (5) := guardy (5) - 1
	    guardy2 (5) := guardy2 (5) - 0.015625
	    Sprite.SetPosition (guard (guardorient (5)), guardx (5), guardy (5), true)
	    Sprite.Show (guard (guardorient (5)))
	    delay (5)
	    exit when screendone = true or gameover = true
	end for
	exit when screendone = true or gameover = true
	Sprite.Hide (guard (guardorient (5)))
    end loop
    Sprite.Hide (guard (guardorient (5)))
end guard13


procedure draw
    for x : 1 .. 10
	for y : 1 .. 10
	    tex := 0
	    if texcoord (x, y) = "grass" then
		tex := grass
	    elsif texcoord (x, y) = "walltop" then
		tex := walltop
	    elsif texcoord (x, y) = "wallbottom" then
		tex := wallbottom
	    elsif texcoord (x, y) = "wallleft" then
		tex := wallleft
	    elsif texcoord (x, y) = "wallright" then
		tex := wallright
	    elsif texcoord (x, y) = "walltopleft" then
		tex := walltopleft
	    elsif texcoord (x, y) = "walltopright" then
		tex := walltopright
	    elsif texcoord (x, y) = "wallbottomleft" then
		tex := wallbottomleft
	    elsif texcoord (x, y) = "wallbottomright" then
		tex := wallbottomright
	    elsif texcoord (x, y) = "doortop" then
		tex := doortop
	    elsif texcoord (x, y) = "doorleft" then
		tex := doorleft
	    elsif texcoord (x, y) = "doorright" then
		tex := doorright
	    elsif texcoord (x, y) = "doorbottom" then
		tex := doorbottom
	    elsif texcoord (x, y) = "concrete" then
		tex := concrete
	    elsif texcoord (x, y) = "wallintop" then
		tex := wallintop
	    elsif texcoord (x, y) = "wallinbottom" then
		tex := wallinbottom
	    elsif texcoord (x, y) = "wallinleft" then
		tex := wallinleft
	    elsif texcoord (x, y) = "wallinright" then
		tex := wallinright
	    elsif texcoord (x, y) = "wallinvert" then
		tex := wallinvert
	    elsif texcoord (x, y) = "wallinhori" then
		tex := wallinhori
	    elsif texcoord (x, y) = "tanktopleft" then
		tex := tanktopleft
	    elsif texcoord (x, y) = "tanktopright" then
		tex := tanktopright
	    elsif texcoord (x, y) = "tankbottomleft" then
		tex := tankbottomleft
	    elsif texcoord (x, y) = "tankbottomright" then
		tex := tankbottomright
	    elsif texcoord (x, y) = "black" then
		tex := blackk
	    elsif texcoord (x, y) = "kcirtap" then
		tex := kcirtap
	    elsif texcoord (x, y) = "kcirtap2" then
		tex := kcirtap2
	    elsif texcoord (x, y) = "mg1topleft" then
		tex := mg1topleft
	    elsif texcoord (x, y) = "mg1topright" then
		tex := mg1topright
	    elsif texcoord (x, y) = "mg1bottomleft" then
		tex := mg1bottomleft
	    elsif texcoord (x, y) = "mg1bottomright" then
		tex := mg1bottomright
	    elsif texcoord (x, y) = "padtopleft" then
		tex := padtopleft
	    elsif texcoord (x, y) = "padtopright" then
		tex := padtopright
	    elsif texcoord (x, y) = "padbottomleft" then
		tex := padbottomleft
	    elsif texcoord (x, y) = "padbottomright" then
		tex := padbottomright
	    elsif texcoord (x, y) = "helitop1" then
		tex := helitop1
	    elsif texcoord (x, y) = "helitop2" then
		tex := helitop2
	    elsif texcoord (x, y) = "helitop3" then
		tex := helitop3
	    elsif texcoord (x, y) = "helibottom1" then
		tex := helibottom1
	    elsif texcoord (x, y) = "helibottom2" then
		tex := helibottom2
	    elsif texcoord (x, y) = "helibottom3" then
		tex := helibottom3
	    elsif texcoord (x, y) = "button" then
		tex := button
	    elsif texcoord (x, y) = "usedbutton" then
		tex := usedbutton
	    else
		tex := blank
	    end if
	    Pic.Draw (tex, (x - 1) * 64, (y - 1) * 64, picMerge)
	end for
    end for
end draw
process explode
    loop
	exit when screendone = true
	Pic.Draw (explosion, 330, 390, picMerge)
	delay (200)
	exit when screendone = true
	texcoord (5, 7) := "concrete"
	texcoord (6, 7) := "concrete"
	texcoord (5, 6) := "concrete"
	texcoord (6, 6) := "concrete"
	draw
	texcoord (5, 7) := "mg1topleft"
	texcoord (6, 7) := "mg1topright"
	texcoord (5, 6) := "mg1bottomleft"
	texcoord (6, 6) := "mg1bottomright"
	draw
	delay (200)
	exit when screendone = true
	Pic.Draw (explosion, 190, 350, picMerge)
	delay (200)
	exit when screendone = true
	texcoord (5, 7) := "concrete"
	texcoord (6, 7) := "concrete"
	texcoord (5, 6) := "concrete"
	texcoord (6, 6) := "concrete"
	draw
	texcoord (5, 7) := "mg1topleft"
	texcoord (6, 7) := "mg1topright"
	texcoord (5, 6) := "mg1bottomleft"
	texcoord (6, 6) := "mg1bottomright"
	draw
	delay (200)
	exit when screendone = true
	Pic.Draw (explosion, 269, 280, picMerge)
	delay (200)
	exit when screendone = true
	texcoord (5, 7) := "concrete"
	texcoord (6, 7) := "concrete"
	texcoord (5, 6) := "concrete"
	texcoord (6, 6) := "concrete"
	draw
	texcoord (5, 7) := "mg1topleft"
	texcoord (6, 7) := "mg1topright"
	texcoord (5, 6) := "mg1bottomleft"
	texcoord (6, 6) := "mg1bottomright"
	draw
	delay (200)
	exit when screendone = true
    end loop
end explode
procedure clear
    % Clears coordinates of textures and objects
    for i : 1 .. 10
	for o : 1 .. 10
	    texcoord (i, o) := "blank"
	end for
    end for
    for i : 0 .. 11
	for o : 0 .. 11
	    objcoord (i, o) := "blank"
	end for
    end for
end clear
procedure clearguards
    % Clears coordinates of guards
    for i : 1 .. 5
	guardx (i) := 0
	guardx2 (i) := 0
	guardx2i (i) := 0
	guardy (i) := 0
	guardy2 (i) := 0
	guardy2i (i) := 0
	guardorient (i) := 0
    end for
end clearguards
clear
clearguards




%Intro
introdone := false
colourback (7)
cls
key := ""
anykeydone := false
fork anykey
fork music1
for i : 1 .. 1
    % Fade-ins
    exit when key not= ""
    fork intro1
    delay (500)
    exit when key not= ""
    fork intro2
    delay (800)
    exit when key not= ""
    fork intro7
    delay (800)
    exit when key not= ""
    fork intro3
    delay (500)
    exit when key not= ""
    fork intro4
    delay (400)
    exit when key not= ""
    fork intro5
    delay (800)
    exit when key not= ""
    fork intro6
    delay (2000)
end for
% Background
menucol := 1
View.Set ("offscreenonly")
loop
    for x : 0 .. 1345 by 5
	exit when key not= ""
	if x = 1345 then
	    if menucol = 1 then
		menucol := 7
	    elsif menucol = 7 then
		menucol := 1
	    end if
	end if
	drawline (x, 0, x, 645, menucol)
	Pic.Draw (logo, 270, 450, picMerge)
	Pic.Draw (metalgear1, 3, 3, picMerge)
	Pic.Draw (title, 70, 250, picMerge)
	Pic.Draw (snake1, 1200, 450, picMerge)
	Pic.Draw (metalgear2, 1192, 3, picMerge)
	Pic.Draw (keycont, 240, 160, picMerge)
	Pic.Draw (snake2, 3, 430, picMerge)
	View.Update
	introdone := true
    end for
    exit when key not= ""
end loop

% Main Menu
cls
View.Update
if introdone = false then
    % Delay to fix a bug with turing's Draw.Special overlapping when another
    % window is opened on top of the run window
    delay (2000)
end if
cls
Pic.Draw (title, 70, 450, picMerge)
Pic.Draw (snake3, 1, 1, picMerge)
Pic.Draw (snake4, 1070, 100, picMerge)
View.Update
loop
    select := 0
    menucol := 1
    View.Set ("offscreenonly")
    cls
    loop
	for x : 0 .. 1345 by 5
	    mousewhere (mx, my, bnum)
	    if x = 1345 then
		if menucol = 1 then
		    menucol := 7
		elsif menucol = 7 then
		    menucol := 1
		end if
	    end if
	    drawline (x, 0, x, 645, menucol)
	    Pic.Draw (title, 70, 450, picMerge)
	    Pic.Draw (snake3, 1, 1, picMerge)
	    Pic.Draw (snake4, 1070, 100, picMerge)
	    % New Game
	    if mx >= 310 and my >= 280 and mx <= 630 and my <= 370 and bnum = 0 then
		drawfillbox (310, 280, 630, 370, 18)
		drawbox (315, 285, 625, 365, 7)
	    elsif mx >= 310 and my >= 280 and mx <= 630 and my <= 370 and bnum = 1 then
		drawfillbox (310, 280, 630, 370, 17)
		drawbox (315, 285, 625, 365, 7)
		Font.Draw ("New Game", 330, 300, font1, 104)
		View.Update
		buttonwait ("up", mx, my, bnum, updown)
		if mx >= 310 and my >= 280 and mx <= 630 and my <= 370 then
		    select := 1
		    exit
		end if
	    else
		drawfillbox (310, 280, 630, 370, 20)
		drawbox (315, 285, 625, 365, 7)
	    end if
	    Font.Draw ("New Game", 330, 300, font1, 104)
	    % Load Game
	    if mx >= 675 and my >= 280 and mx <= 1015 and my <= 370 and bnum = 0 then
		drawfillbox (675, 280, 1015, 370, 18)
		drawbox (680, 285, 1010, 365, 7)
	    elsif mx >= 675 and my >= 280 and mx <= 1015 and my <= 370 and bnum = 1 then
		drawfillbox (675, 280, 1015, 370, 17)
		drawbox (680, 285, 1010, 365, 7)
		Font.Draw ("Load Game", 697, 300, font1, 104)
		Pic.Draw (noload, 645, 280, picMerge)
		View.Update
		buttonwait ("up", mx, my, bnum, updown)
		if mx >= 675 and my >= 280 and mx <= 1015 and my <= 370 then
		    select := 2
		    exit
		end if
	    else
		drawfillbox (675, 280, 1015, 370, 20)
		drawbox (680, 285, 1010, 365, 7)
	    end if
	    Font.Draw ("Load Game", 697, 300, font1, 104)
	    Pic.Draw (noload, 645, 280, picMerge)
	    % Leaderboards
	    if mx >= 435 and my >= 160 and mx <= 860 and my <= 250 and bnum = 0 then
		drawfillbox (435, 160, 860, 250, 18)
		drawbox (440, 165, 855, 245, 7)
	    elsif mx >= 435 and my >= 160 and mx <= 860 and my <= 250 and bnum = 1 then
		drawfillbox (435, 160, 860, 250, 17)
		drawbox (440, 165, 855, 245, 7)
		Font.Draw ("Leaderboards", 460, 180, font1, 104)
		Pic.Draw (nolead, 407, 160, picMerge)
		View.Update
		buttonwait ("up", mx, my, bnum, updown)
		if mx >= 435 and my >= 160 and mx <= 860 and my <= 250 then
		    select := 3
		    exit
		end if
	    else
		drawfillbox (435, 160, 860, 250, 20)
		drawbox (440, 165, 855, 245, 7)
	    end if
	    Font.Draw ("Leaderboards", 460, 180, font1, 104)
	    Pic.Draw (nolead, 407, 160, picMerge)
	    % Exit
	    if mx >= 575 and my >= 30 and mx <= 725 and my <= 145 and bnum = 0 then
		drawfillbox (575, 30, 725, 145, 18)
		drawbox (580, 35, 720, 140, 7)
	    elsif mx >= 575 and my >= 30 and mx <= 725 and my <= 145 and bnum = 1 then
		drawfillbox (575, 30, 725, 145, 17)
		drawbox (580, 35, 720, 140, 7)
		Font.Draw ("Exit", 600, 60, font1, 104)
		View.Update
		buttonwait ("up", mx, my, bnum, updown)
		if mx >= 575 and my >= 30 and mx <= 725 and my <= 145 then
		    select := -1
		    exit
		end if
	    else
		drawfillbox (575, 30, 725, 145, 20)
		drawbox (580, 35, 720, 140, 7)
	    end if
	    Font.Draw ("Exit", 600, 60, font1, 104)
	    View.Update
	end for
	exit when select not= 0
	% PUT LEADERBOARDS AND GAME LOAD SCREEN HERE
    end loop
    exit when select = -1
    % Game from beginning
    if select = 1 then
	% Intro Cutscene
	View.Set ("nooffscreenonly")
	Music.PlayFileStop
	fork music2
	key := ""
	anykeydone := false
	fork anykey
	for i : 1 .. 1
	    exit when key not= ""
	    cls
	    Pic.DrawSpecialBack (logo, 270, 250, picMerge, picFadeIn, 2000)
	    delay (2500)
	    exit when key not= ""
	    cls
	    Pic.DrawSpecialBack (kojima1, 290, 70, picMerge, picFadeIn, 2000)
	    delay (2500)
	    exit when key not= ""
	    cls
	    Pic.DrawSpecialBack (kojima2, 290, 70, picMerge, picFadeIn, 2000)
	    delay (2500)
	    exit when key not= ""
	    cls
	    Pic.DrawSpecialBack (kojima3, 290, 70, picMerge, picFadeIn, 2000)
	    delay (2500)
	    exit when key not= ""
	    cls
	    Pic.DrawSpecialBack (kojima4, 290, 70, picMerge, picFadeIn, 2000)
	    delay (2500)
	    exit when key not= ""
	    cls
	    Pic.DrawSpecialBack (title, 70, 250, picMerge, picGrowCentreToEdge, 200)
	    delay (2000)
	    exit when key not= ""
	    Pic.DrawSpecial (titlecover, 70, 250, picCopy, picFadeIn, 1000)
	end for

	% Resets any key process if it has been used to skip intro
	if anykeydone = true then
	    key := ""
	    anykeydone := false
	    fork anykey
	end if

	for p : 1 .. 1
	    % Codec intro
	    fork music3
	    cls
	    Pic.Draw (snakedecc, 90, 210, picCopy)
	    Pic.Draw (codec, 355, 230, picCopy)
	    fork codec1
	    % Campbell's first lines
	    for o : 1 .. 26
		for i : 1 .. 2
		    exit when key not= ""
		    if i = 1 then
			Pic.Draw (campclose, 1050, 210, picCopy)
			delay (200)
		    else
			Pic.Draw (campopen, 1050, 210, picCopy)
			delay (400)
		    end if
		end for
		exit when key not= ""
	    end for
	    exit when key not= ""
	    Pic.Draw (campclose, 1050, 210, picCopy)
	    delay (800)
	    % Snake's first lines
	    for o : 1 .. 3
		for i : 1 .. 2
		    exit when key not= ""
		    if i = 1 then
			Pic.Draw (snakedecc, 90, 210, picCopy)
			delay (200)
		    else
			Pic.Draw (snakedeco, 90, 210, picCopy)
			delay (400)
		    end if
		end for
		exit when key not= ""
	    end for
	    exit when key not= ""
	    Pic.Draw (snakedecc, 90, 210, picCopy)
	    % Campbell's second lines
	    for o : 1 .. 3
		for i : 1 .. 2
		    exit when key not= ""
		    if i = 1 then
			Pic.Draw (campclose, 1050, 210, picCopy)
			delay (200)
		    else
			Pic.Draw (campopen, 1050, 210, picCopy)
			delay (400)
		    end if
		end for
		exit when key not= ""
	    end for
	    exit when key not= ""
	    Pic.Draw (campclose, 1050, 210, picCopy)
	    % Snake's second lines
	    for o : 1 .. 5
		for i : 1 .. 2
		    exit when key not= ""
		    if i = 1 then
			Pic.Draw (snakedecc, 90, 210, picCopy)
			delay (200)
		    else
			Pic.Draw (snakedeco, 90, 210, picCopy)
			delay (400)
		    end if
		end for
		exit when key not= ""
	    end for
	    exit when key not= ""
	    Pic.Draw (snakedecc, 90, 210, picCopy)
	    % Campbell's third lines
	    for o : 1 .. 31
		for i : 1 .. 2
		    exit when key not= ""
		    if i = 1 then
			Pic.Draw (campclose, 1050, 210, picCopy)
			delay (200)
		    else
			Pic.Draw (campopen, 1050, 210, picCopy)
			delay (400)
		    end if
		end for
		exit when key not= ""
	    end for
	    exit when key not= ""
	    Pic.Draw (campclose, 1050, 210, picCopy)
	end for
	View.Set ("offscreenonly")
	if anykeydone = true then
	    delay (3000)
	else
	    delay (500)
	end if
	Music.PlayFileStop
	cls
	Pic.Draw (title, 70, 250, picMerge)
	Pic.Draw (keycont, 230, 160, picMerge)
	View.Update
	% Resets any key process if it has been used to skip intro or codec
	if anykeydone = true then
	    key := ""
	    anykeydone := false
	    fork anykey
	end if
	% Any key prompt
	loop
	    exit when key not= ""
	end loop
	close (winID)

	winID := Window.Open ("graphics:640;640")
	View.Set ("noscursor")
	Music.PlayFileStop
	fork music4

	for i : 1 .. 4
	    snake (i) := Sprite.New (snakepic (i))
	end for
	snakepar := Sprite.New (snakeparpic)
	for i : 1 .. 20
	    guard (i) := Sprite.New (guardpic (i))
	end for

	% Game from start
	loop
	    cls
	    gamedone := false
	    gameover := false
	    kcirtapco := false

	    % Screen 1
	    screendone := false

	    % Grass floor
	    for X : 2 .. 9
		for Y : 2 .. 9
		    texcoord (X, Y) := "grass"
		end for
	    end for
	    texcoord (5, 10) := "grass"
	    texcoord (6, 10) := "grass"
	    % Outside walls
	    for X : 2 .. 9
		texcoord (X, 1) := "wallbottom"
		objcoord (X, 1) := "wall"
		if X not= 5 and X not= 6 then
		    texcoord (X, 10) := "walltop"
		    objcoord (X, 10) := "wall"
		end if
		texcoord (1, X) := "wallleft"
		objcoord (1, X) := "wall"
		texcoord (10, X) := "wallright"
		objcoord (10, X) := "wall"
	    end for
	    texcoord (5, 10) := "doortop"
	    objcoord (5, 10) := "door"
	    texcoord (6, 10) := "doortop"
	    objcoord (6, 10) := "door"
	    texcoord (1, 1) := "wallbottomleft"
	    objcoord (1, 1) := "wall"
	    texcoord (1, 10) := "walltopleft"
	    objcoord (1, 10) := "wall"
	    texcoord (10, 1) := "wallbottomright"
	    objcoord (10, 1) := "wall"
	    texcoord (10, 10) := "walltopright"
	    objcoord (10, 10) := "wall"

	    % Screen 1 draw
	    exit when gameover = true
	    draw
	    Pic.Draw (tip, 64, 64, picMerge)

	    % Parachute animation
	    snakey := 322
	    for x : -1 .. 192
		snakey := snakey - 1
		Sprite.SetPosition (snakepar, x, snakey, true)
		Sprite.Show (snakepar)
		delay (20)
	    end for
	    delay (200)
	    Sprite.Hide (snakepar)

	    % Screen 1 starting position and gameplay
	    snakex := 192
	    snakey := 96
	    snakex2 := 3
	    snakey2 := 1.5
	    orient := 4
	    fork move

	    % Check for completion to proceed to next screen
	    delay (100)
	    loop
		exit when objcoord (snakex2i, snakey2i) = "door" or gameover = true
	    end loop
	    screendone := true
	    delay (20)



	    % Screen 2
	    clear
	    screendone := false
	    fork hitmarker

	    % Concrete floor
	    for X : 2 .. 9
		for Y : 2 .. 9
		    texcoord (X, Y) := "concrete"
		end for
	    end for
	    % Outside walls
	    for X : 2 .. 9
		texcoord (X, 1) := "wallbottom"
		objcoord (X, 1) := "wall"
		texcoord (X, 10) := "walltop"
		objcoord (X, 10) := "wall"
		texcoord (1, X) := "wallleft"
		objcoord (1, X) := "wall"
		texcoord (10, X) := "wallright"
		objcoord (10, X) := "wall"
	    end for
	    texcoord (1, 1) := "wallbottomleft"
	    objcoord (1, 1) := "wall"
	    texcoord (1, 10) := "walltopleft"
	    objcoord (1, 10) := "wall"
	    texcoord (10, 1) := "wallbottomright"
	    objcoord (10, 1) := "wall"
	    texcoord (10, 10) := "walltopright"
	    objcoord (10, 10) := "wall"
	    texcoord (2, 1) := "doorbottom"
	    texcoord (3, 1) := "doorbottom"
	    texcoord (10, 2) := "doorright"
	    objcoord (10, 2) := "door"
	    texcoord (10, 3) := "doorright"
	    objcoord (10, 3) := "door"
	    % Inside walls
	    for Y : 3 .. 7
		texcoord (4, Y) := "wallinvert"
		objcoord (4, Y) := "wall"
		texcoord (5, Y) := "wallinvert"
		objcoord (5, Y) := "wall"
		texcoord (6, Y) := "wallinvert"
		objcoord (6, Y) := "wall"
		texcoord (7, Y) := "wallinvert"
		objcoord (7, Y) := "wall"
	    end for

	    for X : 4 .. 7
		texcoord (X, 8) := "wallintop"
		objcoord (X, 8) := "wall"
		texcoord (X, 2) := "wallinbottom"
		objcoord (X, 2) := "wall"
	    end for

	    % Screen 2 draw
	    exit when gameover = true
	    draw

	    % Screen 2 starting position
	    snakex := 128
	    snakex2 := 2
	    snakex2i := 0
	    snakey := 64
	    snakey2 := 1
	    snakey2i := 0
	    orient := 1

	    % Guards
	    fork guard1
	    fork detect

	    loop
		exit when objcoord (snakex2i, snakey2i) = "door" or gameover = true
	    end loop
	    screendone := true
	    delay (20)



	    % Screen 3
	    clear
	    clearguards
	    screendone := false
	    fork wow

	    % Concrete floor
	    for X : 2 .. 9
		for Y : 2 .. 9
		    texcoord (X, Y) := "concrete"
		end for
	    end for
	    % Outside walls
	    for X : 2 .. 9
		texcoord (X, 1) := "wallbottom"
		objcoord (X, 1) := "wall"
		texcoord (X, 10) := "walltop"
		objcoord (X, 10) := "wall"
		texcoord (1, X) := "wallleft"
		objcoord (1, X) := "wall"
		texcoord (10, X) := "wallright"
		objcoord (10, X) := "wall"
	    end for
	    texcoord (1, 1) := "wallbottomleft"
	    objcoord (1, 1) := "wall"
	    texcoord (1, 10) := "walltopleft"
	    objcoord (1, 10) := "wall"
	    texcoord (10, 1) := "wallbottomright"
	    objcoord (10, 1) := "wall"
	    texcoord (10, 10) := "walltopright"
	    objcoord (10, 10) := "wall"
	    texcoord (1, 2) := "doorleft"
	    texcoord (9, 10) := "doortop"
	    objcoord (9, 10) := "door"
	    % Inner Walls
	    % Top
	    for i : 3 .. 6
		for o : 8 .. 9
		    texcoord (i, o) := "wallinhori"
		    objcoord (i, o) := "wall"
		end for
	    end for
	    texcoord (2, 9) := "wallinleft"
	    objcoord (2, 9) := "wall"
	    texcoord (2, 8) := "wallinleft"
	    objcoord (2, 8) := "wall"
	    texcoord (7, 9) := "wallinright"
	    objcoord (7, 9) := "wall"
	    texcoord (7, 8) := "wallinright"
	    objcoord (7, 8) := "wall"
	    texcoord (9, 8) := "wallinleft"
	    objcoord (9, 8) := "wall"
	    % Bottom
	    for i : 5 .. 8
		for o : 2 .. 3
		    texcoord (i, o) := "wallinhori"
		    objcoord (i, o) := "wall"
		end for
	    end for
	    texcoord (4, 3) := "wallinleft"
	    objcoord (4, 3) := "wall"
	    texcoord (4, 2) := "wallinleft"
	    objcoord (4, 2) := "wall"
	    texcoord (9, 3) := "wallinright"
	    objcoord (9, 3) := "wall"
	    texcoord (9, 2) := "wallinright"
	    objcoord (9, 2) := "wall"
	    texcoord (2, 3) := "wallinright"
	    objcoord (2, 3) := "wall"

	    % Screen 3 draw
	    exit when gameover = true
	    draw

	    % Tanks
	    % Left Tank
	    texcoord (3, 6) := "tanktopleft"
	    objcoord (3, 6) := "wall"
	    texcoord (4, 6) := "tanktopright"
	    objcoord (4, 6) := "wall"
	    texcoord (3, 5) := "tankbottomleft"
	    objcoord (3, 5) := "wall"
	    texcoord (4, 5) := "tankbottomright"
	    objcoord (4, 5) := "wall"
	    % Right Tank
	    texcoord (7, 6) := "tanktopleft"
	    objcoord (7, 6) := "wall"
	    texcoord (8, 6) := "tanktopright"
	    objcoord (8, 6) := "wall"
	    texcoord (7, 5) := "tankbottomleft"
	    objcoord (7, 5) := "wall"
	    texcoord (8, 5) := "tankbottomright"
	    objcoord (8, 5) := "wall"

	    % Screen 3 object draw
	    draw

	    % Screen 3 starting position
	    snakex := 64
	    snakex2 := 1
	    snakex2i := 0
	    snakey := 96
	    snakey2 := 1.5
	    snakey2i := 0
	    orient := 4

	    % Guards
	    fork guard2
	    fork guard3

	    loop
		exit when objcoord (snakex2i, snakey2i) = "door" or gameover = true
	    end loop
	    screendone := true
	    delay (20)



	    % Screen 4
	    clear
	    clearguards
	    screendone := false
	    fork wombo

	    % Concrete floor
	    for X : 2 .. 9
		for Y : 2 .. 9
		    texcoord (X, Y) := "concrete"
		end for
	    end for
	    % Outside walls
	    for X : 2 .. 9
		texcoord (X, 1) := "wallbottom"
		objcoord (X, 1) := "wall"
		texcoord (X, 10) := "walltop"
		objcoord (X, 10) := "wall"
		texcoord (1, X) := "wallleft"
		objcoord (1, X) := "wall"
		texcoord (10, X) := "wallright"
		objcoord (10, X) := "wall"
	    end for
	    texcoord (1, 1) := "wallbottomleft"
	    objcoord (1, 1) := "wall"
	    texcoord (1, 10) := "walltopleft"
	    objcoord (1, 10) := "wall"
	    texcoord (10, 1) := "wallbottomright"
	    objcoord (10, 1) := "wall"
	    texcoord (10, 10) := "walltopright"
	    objcoord (10, 10) := "wall"
	    texcoord (9, 1) := "doorbottom"
	    texcoord (9, 10) := "doortop"
	    objcoord (9, 10) := "door"
	    % Inner walls
	    % 1
	    for i : 3 .. 6
		for o : 2 .. 3
		    texcoord (i, o) := "wallinhori"
		    objcoord (i, o) := "wall"
		end for
	    end for
	    texcoord (2, 3) := "wallinleft"
	    objcoord (2, 3) := "wall"
	    texcoord (2, 2) := "wallinleft"
	    objcoord (2, 2) := "wall"
	    texcoord (7, 2) := "wallinright"
	    objcoord (7, 2) := "wall"
	    texcoord (7, 3) := "wallinright"
	    objcoord (7, 3) := "wall"
	    texcoord (9, 3) := "wallinright"
	    objcoord (9, 3) := "wall"
	    % 2
	    for i : 4 .. 8
		for o : 5 .. 6
		    texcoord (i, o) := "wallinhori"
		    objcoord (i, o) := "wall"
		end for
	    end for
	    texcoord (3, 6) := "wallinleft"
	    objcoord (3, 6) := "wall"
	    texcoord (3, 5) := "wallinleft"
	    objcoord (3, 5) := "wall"
	    texcoord (9, 6) := "wallinright"
	    objcoord (9, 6) := "wall"
	    texcoord (9, 5) := "wallinright"
	    objcoord (9, 5) := "wall"
	    % 3
	    for i : 3 .. 7
		for o : 8 .. 9
		    texcoord (i, o) := "wallinhori"
		    objcoord (i, o) := "wall"
		end for
	    end for
	    texcoord (2, 9) := "wallinleft"
	    objcoord (2, 9) := "wall"
	    texcoord (2, 8) := "wallinleft"
	    objcoord (2, 8) := "wall"
	    texcoord (8, 9) := "wallinright"
	    objcoord (8, 9) := "wall"
	    texcoord (8, 8) := "wallinright"
	    objcoord (8, 8) := "wall"
	    texcoord (4, 3) := "concrete"
	    objcoord (4, 3) := "blank"
	    texcoord (4, 8) := "concrete"
	    objcoord (4, 8) := "blank"
	    texcoord (6, 8) := "concrete"
	    objcoord (6, 8) := "blank"


	    % Screen 4 draw
	    exit when gameover = true
	    draw

	    % Screen 4 starting position
	    snakex := 544
	    snakex2 := 8.5
	    snakex2i := 0
	    snakey := 64
	    snakey2 := 1
	    snakey2i := 0
	    orient := 1

	    % Guards
	    fork guard4
	    fork guard5

	    loop
		exit when objcoord (snakex2i, snakey2i) = "door" or gameover = true
	    end loop
	    screendone := true
	    delay (20)



	    % Screen 5 (Kcirtap)
	    clear
	    clearguards
	    screendone := false
	    fork triple

	    % Concrete floor
	    for X : 3 .. 8
		for Y : 3 .. 8
		    texcoord (X, Y) := "concrete"
		end for
	    end for
	    % Outside empty
	    for X : 1 .. 10
		texcoord (X, 1) := "black"
		objcoord (X, 1) := "wall"
		texcoord (X, 10) := "black"
		objcoord (X, 10) := "wall"
		texcoord (1, X) := "black"
		objcoord (1, X) := "wall"
		texcoord (10, X) := "black"
		objcoord (10, X) := "wall"
	    end for
	    % Outside walls
	    for X : 3 .. 8
		texcoord (X, 2) := "wallbottom"
		objcoord (X, 2) := "wall"
		texcoord (X, 9) := "walltop"
		objcoord (X, 9) := "wall"
		texcoord (2, X) := "wallleft"
		objcoord (2, X) := "wall"
		texcoord (9, X) := "wallright"
		objcoord (9, X) := "wall"
	    end for
	    texcoord (2, 2) := "wallbottomleft"
	    objcoord (2, 2) := "wall"
	    texcoord (2, 9) := "walltopleft"
	    objcoord (2, 9) := "wall"
	    texcoord (9, 2) := "wallbottomright"
	    objcoord (9, 2) := "wall"
	    texcoord (9, 9) := "walltopright"
	    objcoord (9, 9) := "wall"
	    texcoord (8, 2) := "doorbottom"
	    texcoord (3, 9) := "doortop"
	    objcoord (3, 9) := "door"

	    % Screen 5 draw
	    exit when gameover = true
	    draw

	    % Kcirtap
	    texcoord (5, 5) := "kcirtap"
	    objcoord (5, 5) := "kcirtap"
	    texcoord (7, 8) := "mg1topleft"
	    objcoord (7, 8) := "mg1"
	    texcoord (8, 8) := "mg1topright"
	    objcoord (8, 8) := "mg1"
	    texcoord (7, 7) := "mg1bottomleft"
	    objcoord (7, 7) := "mg1"
	    texcoord (8, 7) := "mg1bottomright"
	    objcoord (8, 7) := "mg1"

	    % Screen 5 object draw
	    draw
	    Pic.Draw (dnt, 408, 320, picMerge)

	    % Screen 5 starting position
	    snakex := 480
	    snakex2 := 7.5
	    snakex2i := 0
	    snakey := 128
	    snakey2 := 2
	    snakey2i := 0
	    orient := 1

	    loop
		if objcoord (snakex2i, snakey2i) = "mg1" then
		    fork horn
		end if
		exit when objcoord (snakex2i, snakey2i) = "kcirtap" or gameover = true
	    end loop
	    kcirtapco := true
	    delay (1000)

	    View.Set ("nocursor")
	    % Kcirtap Codec
	    for p : 1 .. 1
		Music.PlayFileStop
		fork music5
		key := ""
		anykeydone := false
		fork anykey
		colourback (7)
		cls
		Pic.Draw (snakedecc2, 5, 210, picCopy)
		Pic.Draw (codec3, 170, 215, picCopy)
		fork codec2
		% Kcirtap's first lines
		for o : 1 .. 94
		    Pic.Draw (kcirtapcodec, 495, 210, picCopy)
		    delay (100)
		    exit when key not= ""
		end for
		exit when key not= ""
		% Snake's first lines
		for o : 1 .. 4
		    for i : 1 .. 2
			exit when key not= ""
			if i = 1 then
			    Pic.Draw (snakedecc2, 5, 210, picCopy)
			    delay (200)
			else
			    Pic.Draw (snakedeco2, 5, 210, picCopy)
			    delay (400)
			end if
		    end for
		    exit when key not= ""
		end for
		exit when key not= ""
		Pic.Draw (snakedecc2, 5, 210, picCopy)
		delay (800)
		exit when key not= ""
		% Kcirtap's second lines
		for o : 1 .. 124
		    Pic.Draw (kcirtapcodec, 495, 210, picCopy)
		    delay (100)
		    exit when key not= ""
		end for
		exit when key not= ""
		% Snake's second lines
		for o : 1 .. 15
		    for i : 1 .. 2
			exit when key not= ""
			if i = 1 then
			    Pic.Draw (snakedecc2, 5, 210, picCopy)
			    delay (200)
			else
			    Pic.Draw (snakedeco2, 5, 210, picCopy)
			    delay (400)
			end if
		    end for
		    exit when key not= ""
		end for
		exit when key not= ""
		Pic.Draw (snakedecc2, 5, 210, picCopy)
		delay (400)
		exit when key not= ""
		% Kcirtap's final lines
		Music.PlayFileStop
		fork foxdie
		for o : 1 .. 200
		    Pic.Draw (kcirtapcodec2, 495, 210, picCopy)
		    delay (100)
		end for
		delay (1500)
		% Snake's final lines
		for o : 1 .. 5
		    for i : 1 .. 2
			exit when key not= ""
			if i = 1 then
			    Pic.Draw (snakedecc2, 5, 210, picCopy)
			    delay (200)
			else
			    Pic.Draw (snakedeco2, 5, 210, picCopy)
			    delay (400)
			end if
			Pic.Draw (kcirtapcodec3, 495, 210, picCopy)
		    end for
		    exit when key not= ""
		end for
		exit when key not= ""
		Pic.Draw (snakedecc2, 5, 210, picCopy)
		delay (1200)
	    end for
	    if anykeydone = true then
		delay (3000)
	    else
		delay (500)
	    end if
	    Music.PlayFileStop
	    cls
	    colourback (0)
	    Pic.Draw (keycont2, 10, 280, picMerge)
	    View.Update
	    % Resets any key process if it has been used to skip intro or codec
	    if anykeydone = true then
		key := ""
		anykeydone := false
		fork anykey
	    end if
	    % Any key prompt
	    loop
		exit when key not= ""
	    end loop

	    Music.PlayFileStop
	    fork music4

	    %Resets kcirtap codec value
	    kcirtapco := false



	    % Screen 6 (Kcirtap Dead)
	    clear
	    clearguards
	    screendone := false

	    % Concrete floor
	    for X : 3 .. 8
		for Y : 3 .. 8
		    texcoord (X, Y) := "concrete"
		end for
	    end for
	    % Outside empty
	    for X : 1 .. 10
		texcoord (X, 1) := "black"
		objcoord (X, 1) := "wall"
		texcoord (X, 10) := "black"
		objcoord (X, 10) := "wall"
		texcoord (1, X) := "black"
		objcoord (1, X) := "wall"
		texcoord (10, X) := "black"
		objcoord (10, X) := "wall"
	    end for
	    % Outside walls
	    for X : 3 .. 8
		texcoord (X, 2) := "wallbottom"
		objcoord (X, 2) := "wall"
		texcoord (X, 9) := "walltop"
		objcoord (X, 9) := "wall"
		texcoord (2, X) := "wallleft"
		objcoord (2, X) := "wall"
		texcoord (9, X) := "wallright"
		objcoord (9, X) := "wall"
	    end for
	    texcoord (2, 2) := "wallbottomleft"
	    objcoord (2, 2) := "wall"
	    texcoord (2, 9) := "walltopleft"
	    objcoord (2, 9) := "wall"
	    texcoord (9, 2) := "wallbottomright"
	    objcoord (9, 2) := "wall"
	    texcoord (9, 9) := "walltopright"
	    objcoord (9, 9) := "wall"
	    texcoord (8, 2) := "doorbottom"
	    texcoord (3, 9) := "doortop"
	    objcoord (3, 9) := "door"

	    % Screen 6 draw
	    exit when gameover = true
	    draw

	    % Kcirtap
	    texcoord (5, 5) := "kcirtap2"
	    objcoord (5, 5) := "blank"
	    texcoord (7, 8) := "mg1topleft"
	    objcoord (7, 8) := "mg1"
	    texcoord (8, 8) := "mg1topright"
	    objcoord (8, 8) := "mg1"
	    texcoord (7, 7) := "mg1bottomleft"
	    objcoord (7, 7) := "mg1"
	    texcoord (8, 7) := "mg1bottomright"
	    objcoord (8, 7) := "mg1"

	    % Screen 6 object draw
	    draw
	    Pic.Draw (dnt, 408, 320, picMerge)

	    % Screen 6 starting position
	    snakex := 288
	    snakex2 := 4.5
	    snakex2i := 0
	    snakey := 224
	    snakey2 := 3.5
	    snakey2i := 0
	    orient := 1
	    fork move

	    loop
		if objcoord (snakex2i, snakey2i) = "mg1" then
		    fork horn
		end if
		exit when objcoord (snakex2i, snakey2i) = "door" or gameover = true
	    end loop
	    screendone := true
	    delay (10)



	    % Screen 7 (Hall)
	    clear
	    clearguards
	    screendone := false
	    Music.PlayFileStop
	    fork music6

	    % Outside black
	    for X : 1 .. 10
		for Y : 1 .. 10
		    texcoord (X, Y) := "black"
		    objcoord (X, Y) := "wall"
		end for
	    end for
	    % Concrete floor
	    for Y : 2 .. 9
		texcoord (3, Y) := "concrete"
		objcoord (3, Y) := "blank"
	    end for
	    for X : 4 .. 5
		texcoord (X, 9) := "concrete"
		objcoord (X, 9) := "blank"
	    end for
	    % Outside walls
	    for Y : 2 .. 8
		texcoord (2, Y) := "wallleft"
		texcoord (4, Y) := "wallright"
	    end for
	    for X : 3 .. 5
		texcoord (X, 10) := "walltop"
	    end for
	    texcoord (2, 9) := "wallleft"
	    texcoord (2, 1) := "wallbottomleft"
	    texcoord (4, 1) := "wallbottomright"
	    texcoord (2, 10) := "walltopleft"
	    texcoord (6, 10) := "walltopright"
	    texcoord (6, 8) := "wallbottomright"
	    texcoord (5, 8) := "wallbottom"
	    texcoord (3, 1) := "doorbottom"
	    texcoord (6, 9) := "doorright"
	    objcoord (6, 9) := "door"

	    % Screen 7 draw
	    exit when gameover = true
	    draw

	    % Screen 7 starting position
	    snakex := 160
	    snakex2 := 2.5
	    snakex2i := 0
	    snakey := 64
	    snakey2 := 1
	    snakey2i := 0
	    orient := 1

	    loop
		exit when objcoord (snakex2i, snakey2i) = "door" or gameover = true
	    end loop
	    screendone := true
	    delay (10)



	    % Screen 8 (Patrick)
	    clear
	    clearguards
	    screendone := false
	    Music.PlayFileStop
	    fork music4
	    fork intervention

	    % Concrete floor
	    for X : 2 .. 9
		for Y : 2 .. 9
		    texcoord (X, Y) := "concrete"
		end for
	    end for
	    % Outside black
	    for X : 1 .. 10
		texcoord (X, 10) := "black"
		objcoord (X, 10) := "wall"
		texcoord (10, X) := "black"
		objcoord (10, X) := "wall"
	    end for
	    % Outside walls
	    for X : 2 .. 8
		texcoord (X, 1) := "wallbottom"
		objcoord (X, 1) := "wall"
		texcoord (X, 9) := "walltop"
		objcoord (X, 9) := "wall"
		texcoord (1, X) := "wallleft"
		objcoord (1, X) := "wall"
		texcoord (9, X) := "wallright"
		objcoord (9, X) := "wall"
	    end for
	    texcoord (1, 1) := "wallbottomleft"
	    objcoord (1, 1) := "wall"
	    texcoord (1, 9) := "walltopleft"
	    objcoord (1, 9) := "wall"
	    texcoord (9, 1) := "wallbottomright"
	    objcoord (9, 1) := "wall"
	    texcoord (9, 9) := "walltopright"
	    objcoord (9, 9) := "wall"
	    texcoord (1, 5) := "doorleft"
	    texcoord (9, 5) := "doorright"
	    objcoord (9, 5) := "door"
	    % Inner walls
	    % Bottom
	    for X : 5 .. 6
		texcoord (X, 4) := "wallinhori"
		objcoord (X, 4) := "wall"
	    end for
	    for Y : 3 .. 4
		texcoord (4, Y) := "wallinleft"
		objcoord (4, Y) := "wall"
		texcoord (7, Y) := "wallinright"
		objcoord (7, Y) := "wall"
	    end for
	    % Top
	    for X : 5 .. 6
		for Y : 6 .. 7
		    texcoord (X, Y) := "wallinhori"
		    objcoord (X, Y) := "wall"
		end for
	    end for
	    for Y : 6 .. 7
		texcoord (4, Y) := "wallinleft"
		objcoord (4, Y) := "wall"
		texcoord (7, Y) := "wallinright"
		objcoord (7, Y) := "wall"
	    end for
	    % Bottom left
	    texcoord (2, 4) := "wallintop"
	    objcoord (2, 4) := "wall"
	    texcoord (2, 3) := "wallinvert"
	    objcoord (2, 3) := "wall"
	    texcoord (2, 2) := "wallinbottom"
	    objcoord (2, 2) := "wall"
	    % Top left
	    texcoord (2, 8) := "wallintop"
	    objcoord (2, 8) := "wall"
	    texcoord (2, 7) := "wallinvert"
	    objcoord (2, 7) := "wall"
	    texcoord (2, 6) := "wallinbottom"
	    objcoord (2, 6) := "wall"

	    % Screen 8 draw
	    exit when gameover = true
	    draw

	    % Screen 8 starting position
	    snakex := 64
	    snakex2 := 1
	    snakex2i := 0
	    snakey := 288
	    snakey2 := 4.5
	    snakey2i := 0
	    orient := 4

	    % Guards
	    fork guard6
	    fork guard7
	    fork guard8
	    fork detect

	    loop
		exit when objcoord (snakex2i, snakey2i) = "door" or gameover = true
	    end loop
	    screendone := true
	    delay (500)



	    % Screen 9 (Hall 2)
	    clear
	    clearguards
	    screendone := false
	    Music.PlayFileStop
	    fork damnson
	    fork music7
	    delay (500)

	    % Outside black
	    for X : 1 .. 10
		for Y : 1 .. 10
		    texcoord (X, Y) := "black"
		    objcoord (X, Y) := "wall"
		end for
	    end for
	    % Concrete floor
	    for X : 2 .. 9
		texcoord (X, 5) := "concrete"
		objcoord (X, 5) := "blank"
	    end for
	    for Y : 6 .. 9
		texcoord (8, Y) := "concrete"
		objcoord (8, Y) := "blank"
		texcoord (9, Y) := "concrete"
		objcoord (9, Y) := "blank"
	    end for
	    % Outside walls
	    for X : 2 .. 7
		texcoord (X, 6) := "walltop"
	    end for
	    for X : 2 .. 9
		texcoord (X, 4) := "wallbottom"
	    end for
	    for Y : 7 .. 9
		texcoord (7, Y) := "wallleft"
	    end for
	    for Y : 5 .. 9
		texcoord (10, Y) := "wallright"
	    end for

	    texcoord (7, 10) := "walltopleft"
	    texcoord (10, 10) := "walltopright"
	    texcoord (10, 4) := "wallbottomright"
	    texcoord (1, 6) := "walltopleft"
	    texcoord (1, 4) := "wallbottomleft"
	    texcoord (1, 5) := "doorleft"
	    texcoord (8, 10) := "doortop"
	    objcoord (8, 10) := "door"
	    texcoord (9, 10) := "doortop"
	    objcoord (9, 10) := "door"

	    % Screen 9 draw
	    exit when gameover = true
	    draw
	    Pic.Draw (bboty, 64, 256, picMerge)
	    Pic.Draw (tip2, 448, 320, picMerge)

	    % Screen 9 starting position
	    snakex := 128
	    snakex2 := 2
	    snakex2i := 0
	    snakey := 288
	    snakey2 := 4.5
	    snakey2i := 0
	    orient := 4

	    loop
		exit when objcoord (snakex2i, snakey2i) = "door" or gameover = true
	    end loop
	    screendone := true
	    delay (20)



	    % Screen 10 (Metallic Gear)
	    clear
	    clearguards
	    screendone := false
	    fork mom

	    % Concrete floor
	    for X : 2 .. 9
		for Y : 2 .. 9
		    texcoord (X, Y) := "concrete"
		end for
	    end for

	    % Outside walls
	    for X : 2 .. 9
		texcoord (X, 1) := "wallbottom"
		objcoord (X, 1) := "wall"
		texcoord (X, 10) := "walltop"
		objcoord (X, 10) := "wall"
		texcoord (1, X) := "wallleft"
		objcoord (1, X) := "wall"
		texcoord (10, X) := "wallright"
		objcoord (10, X) := "wall"
	    end for
	    texcoord (1, 1) := "wallbottomleft"
	    objcoord (1, 1) := "wall"
	    texcoord (1, 10) := "walltopleft"
	    objcoord (1, 10) := "wall"
	    texcoord (10, 1) := "wallbottomright"
	    objcoord (10, 1) := "wall"
	    texcoord (10, 10) := "walltopright"
	    objcoord (10, 10) := "wall"
	    texcoord (5, 1) := "doorbottom"
	    texcoord (6, 1) := "doorbottom"
	    % Inside walls
	    for Y : 4 .. 5
		texcoord (3, Y) := "wallinvert"
		objcoord (3, Y) := "wall"
		texcoord (8, Y) := "wallinvert"
		objcoord (8, Y) := "wall"
	    end for
	    texcoord (3, 6) := "wallintop"
	    objcoord (3, 6) := "wall"
	    texcoord (8, 6) := "wallintop"
	    objcoord (8, 6) := "wall"
	    texcoord (3, 8) := "wallintop"
	    objcoord (3, 8) := "wall"
	    texcoord (3, 3) := "wallinbottom"
	    objcoord (3, 3) := "wall"
	    texcoord (8, 8) := "wallintop"
	    objcoord (8, 8) := "wall"
	    texcoord (8, 3) := "wallinbottom"
	    objcoord (8, 3) := "wall"


	    % Screen 10 draw
	    exit when gameover = true
	    draw

	    texcoord (2, 2) := "button"
	    objcoord (2, 2) := "button"
	    texcoord (2, 9) := "button"
	    objcoord (2, 9) := "button"
	    texcoord (9, 9) := "button"
	    objcoord (9, 9) := "button"
	    texcoord (9, 2) := "button"
	    objcoord (9, 2) := "button"
	    texcoord (5, 7) := "mg1topleft"
	    objcoord (5, 7) := "wall"
	    texcoord (6, 7) := "mg1topright"
	    objcoord (6, 7) := "wall"
	    texcoord (5, 6) := "mg1bottomleft"
	    objcoord (5, 6) := "wall"
	    texcoord (6, 6) := "mg1bottomright"
	    objcoord (6, 6) := "wall"

	    % Screem 10 object draw
	    draw
	    Pic.Draw (cb, 192, 192, picMerge)

	    % Screen 10 starting position
	    snakex := 320
	    snakex2 := 5
	    snakex2i := 0
	    snakey := 64
	    snakey2 := 1
	    snakey2i := 0
	    orient := 1

	    % Guards
	    fork guard9
	    fork guard10
	    fork guard11
	    fork guard12
	    fork guard13

	    buttoncount := 0
	    loop
		if objcoord (snakex2i, snakey2i) = "button" then
		    texcoord (snakex2i, snakey2i) := "usedbutton"
		    objcoord (snakex2i, snakey2i) := "blank"
		    buttoncount := buttoncount + 1
		    draw
		    Pic.Draw (cb, 192, 192, picMerge)
		end if
		exit when buttoncount = 4 or gameover = true
	    end loop
	    screendone := true
	    delay (10)



	    % Screen 11 (Metallic Gear Done)
	    clear
	    clearguards
	    screendone := false
	    Music.PlayFileStop
	    fork nuke
	    delay (100)

	    % Concrete floor
	    for X : 2 .. 9
		for Y : 2 .. 9
		    texcoord (X, Y) := "concrete"
		end for
	    end for

	    % Outside walls
	    for X : 2 .. 9
		texcoord (X, 1) := "wallbottom"
		objcoord (X, 1) := "wall"
		texcoord (X, 10) := "walltop"
		objcoord (X, 10) := "wall"
		texcoord (1, X) := "wallleft"
		objcoord (1, X) := "wall"
		texcoord (10, X) := "wallright"
		objcoord (10, X) := "wall"
	    end for
	    texcoord (1, 1) := "wallbottomleft"
	    objcoord (1, 1) := "wall"
	    texcoord (1, 10) := "walltopleft"
	    objcoord (1, 10) := "wall"
	    texcoord (10, 1) := "wallbottomright"
	    objcoord (10, 1) := "wall"
	    texcoord (10, 10) := "walltopright"
	    objcoord (10, 10) := "wall"
	    texcoord (5, 1) := "doorbottom"
	    texcoord (6, 1) := "doorbottom"
	    texcoord (5, 10) := "doortop"
	    objcoord (5, 10) := "door"
	    texcoord (6, 10) := "doortop"
	    objcoord (6, 10) := "door"

	    % Inside walls
	    for Y : 4 .. 5
		texcoord (3, Y) := "wallinvert"
		objcoord (3, Y) := "wall"
		texcoord (8, Y) := "wallinvert"
		objcoord (8, Y) := "wall"
	    end for
	    texcoord (3, 6) := "wallintop"
	    objcoord (3, 6) := "wall"
	    texcoord (8, 6) := "wallintop"
	    objcoord (8, 6) := "wall"
	    texcoord (3, 8) := "wallintop"
	    objcoord (3, 8) := "wall"
	    texcoord (3, 3) := "wallinbottom"
	    objcoord (3, 3) := "wall"
	    texcoord (8, 8) := "wallintop"
	    objcoord (8, 8) := "wall"
	    texcoord (8, 3) := "wallinbottom"
	    objcoord (8, 3) := "wall"


	    % Screen 11 draw
	    exit when gameover = true
	    draw

	    texcoord (2, 2) := "usedbutton"
	    texcoord (2, 9) := "usedbutton"
	    texcoord (9, 9) := "usedbutton"
	    texcoord (9, 2) := "usedbutton"
	    texcoord (5, 7) := "mg1topleft"
	    objcoord (5, 7) := "wall"
	    texcoord (6, 7) := "mg1topright"
	    objcoord (6, 7) := "wall"
	    texcoord (5, 6) := "mg1bottomleft"
	    objcoord (5, 6) := "wall"
	    texcoord (6, 6) := "mg1bottomright"
	    objcoord (6, 6) := "wall"

	    % Screem 11 object draw
	    draw

	    % Screen 11 starting position
	    snakex2i := 0
	    snakey2i := 0

	    fork explode

	    loop
		exit when objcoord (snakex2i, snakey2i) = "door" or gameover = true
	    end loop
	    screendone := true
	    delay (250)



	    % Screen 12 (Helipad)
	    clear
	    clearguards
	    screendone := false
	    delay (100)

	    % Grass floor
	    for X : 2 .. 9
		for Y : 2 .. 9
		    texcoord (X, Y) := "grass"
		end for
	    end for

	    % Outside walls
	    for X : 2 .. 9
		texcoord (X, 1) := "wallbottom"
		objcoord (X, 1) := "wall"
		texcoord (X, 10) := "walltop"
		objcoord (X, 10) := "wall"
		texcoord (1, X) := "wallleft"
		objcoord (1, X) := "wall"
		texcoord (10, X) := "wallright"
		objcoord (10, X) := "wall"
	    end for
	    texcoord (1, 1) := "wallbottomleft"
	    objcoord (1, 1) := "wall"
	    texcoord (1, 10) := "walltopleft"
	    objcoord (1, 10) := "wall"
	    texcoord (10, 1) := "wallbottomright"
	    objcoord (10, 1) := "wall"
	    texcoord (10, 10) := "walltopright"
	    objcoord (10, 10) := "wall"
	    texcoord (5, 1) := "doorbottom"
	    texcoord (6, 1) := "doorbottom"
	    % Helipad
	    texcoord (5, 7) := "padtopleft"
	    texcoord (6, 7) := "padtopright"
	    texcoord (5, 6) := "padbottomleft"
	    texcoord (6, 6) := "padbottomright"

	    % Screen 12 draw
	    exit when gameover = true
	    draw

	    texcoord (5, 7) := "helitop1"
	    objcoord (5, 7) := "heli"
	    texcoord (6, 7) := "helitop2"
	    objcoord (6, 7) := "heli"
	    texcoord (7, 7) := "helitop3"
	    objcoord (7, 7) := "wall"
	    texcoord (5, 6) := "helibottom1"
	    objcoord (5, 6) := "heli"
	    texcoord (6, 6) := "helibottom2"
	    objcoord (6, 6) := "heli"
	    texcoord (7, 6) := "helibottom3"
	    objcoord (7, 6) := "wall"

	    % Screem 12 object draw
	    draw
	    Pic.Draw (chopper, 192, 192, picMerge)

	    % Screen 12 starting position
	    snakex := 320
	    snakex2 := 5
	    snakex2i := 0
	    snakey := 64
	    snakey2 := 1
	    snakey2i := 0
	    orient := 1

	    loop
		exit when objcoord (snakex2i, snakey2i) = "heli" or gameover = true
	    end loop
	    gamedone := true
	    exit when gameover = true or gamedone = true
	    delay (100)
	end loop




	% Game over
	Music.PlayFileStop
	if gameover = true then
	    View.Set ("nocursor")
	    colourback (7)
	    cls
	    Music.PlayFileStop
	    fork sad
	    delay (1000)
	    Pic.Draw (gameoverpic, 80, 260, picCopy)
	    loop
		Input.KeyDown (Key)
		exit when Key (KEY_ENTER)
	    end loop
	    Music.PlayFileStop
	    close (winID)
	    exit
	elsif gamedone = true then
	    % Grass floor
	    for X : 2 .. 9
		for Y : 2 .. 9
		    texcoord (X, Y) := "grass"
		end for
	    end for

	    % Outside walls
	    for X : 2 .. 9
		texcoord (X, 1) := "wallbottom"
		objcoord (X, 1) := "wall"
		texcoord (X, 10) := "walltop"
		objcoord (X, 10) := "wall"
		texcoord (1, X) := "wallleft"
		objcoord (1, X) := "wall"
		texcoord (10, X) := "wallright"
		objcoord (10, X) := "wall"
	    end for
	    texcoord (1, 1) := "wallbottomleft"
	    objcoord (1, 1) := "wall"
	    texcoord (1, 10) := "walltopleft"
	    objcoord (1, 10) := "wall"
	    texcoord (10, 1) := "wallbottomright"
	    objcoord (10, 1) := "wall"
	    texcoord (10, 10) := "walltopright"
	    objcoord (10, 10) := "wall"
	    texcoord (5, 1) := "doorbottom"
	    texcoord (6, 1) := "doorbottom"
	    % Helipad
	    texcoord (5, 7) := "padtopleft"
	    texcoord (6, 7) := "padtopright"
	    texcoord (5, 6) := "padbottomleft"
	    texcoord (6, 6) := "padbottomright"

	    draw
	    helix := 256
	    heli := Sprite.New (helipic)
	    fork chopter
	    loop
		helix := helix - 1
		Sprite.SetPosition (heli, helix, 320, false)
		Sprite.Show (heli)
		delay (10)
		exit when helix = -192
	    end loop
	    delay (1000)
	    Music.PlayFileStop
	    colourback (7)
	    cls
	    Pic.Draw (win, 0, 0, picCopy)
	    fork music8
	    loop
		Input.KeyDown (Key)
		exit when Key (KEY_ENTER)
	    end loop
	    Music.PlayFileStop
	    cls
	    delay (500)
	    fork spooky
	    Pic.Draw (mg1, 0, 0, picCopy)
	    delay (3500)
	    cls
	    Pic.Draw (mg2, 0, 0, picCopy)
	    delay (3500)
	    fork spooky
	    cls
	    Pic.Draw (mg3, 0, 0, picCopy)
	    delay (2000)
	    fork spooky
	    cls
	    Pic.Draw (mg4, 0, 0, picCopy)
	    delay (2000)
	    fork spooky
	    cls
	    Pic.Draw (mg5, 0, 0, picCopy)
	    delay (2000)
	    fork spooky
	    cls
	    Pic.Draw (mg6, 0, 0, picCopy)
	    delay (4000)
	    cls
	    Pic.Draw (mg7, 0, 0, picCopy)
	    delay (4000)
	    Music.PlayFileStop
	    close (winID)
	    exit
	end if

	% Game from loaded point :(
    elsif select = 2 then
	fork horn
    elsif select = 3 then
	fork horn
    end if

end loop
