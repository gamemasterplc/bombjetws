.open "root/&&systemdata/Start.dol"

.org 0x8002A1A4
.include "defines.inc"
li r5, SCREEN_HEIGHT //Main Orthographic View Height
fmr f5, f1 //Run Replaced Instruction
li r0, SCREEN_WIDTH //Main Orthographic View Width

.org 0x8002E3F8
b fix_debug_text_pos //Scale Debug Text Position

.org 0x800699A8
.include "defines.inc"
li r31, (((SCREEN_WIDTH-640)/2)+292) //X Position of Lightning Cards in Bosses

.org 0x80069A50
.include "defines.inc"
li r8, (SCREEN_HEIGHT-70) //Y Position of Lightning Cards in Bosses

.org 0x80069AC0
.include "defines.inc"
li r27, (((SCREEN_WIDTH-640)/2)+292) //X Position of Filled Lightning Cards in Bosses

.org 0x80069B2C
.include "defines.inc"
li r8, (SCREEN_HEIGHT-70) //Y Position of Filled Lightning Cards in Bosses

.org 0x8006C3A4
.include "defines.inc"
li r8, (SCREEN_HEIGHT-60) //Y Position of Special Bomb Icon

.org 0x8006CB4C
.include "defines.inc"
li r7, (SCREEN_WIDTH-44) //X Position of Right Arrow in Charabom UI
li r8, (SCREEN_HEIGHT-58) //Y Position of Right Arrow in Charabom UI

.org 0x8006CBD4
.include "defines.inc"
li r7, (SCREEN_WIDTH-132) //X Position of Left Arrow in Charabom UI
li r8, (SCREEN_HEIGHT-58) //Y Position of Left Arrow in Charabom UI

.org 0x8006CC54
.include "defines.inc"
li r7, (SCREEN_WIDTH-80) //X Position of Next Charabom Border in Charabom UI
li r8, (SCREEN_HEIGHT-118) //Y Position of Next Charabom Border in Charabom UI

.org 0x8006CCE8
.include "defines.inc"
li r7, (SCREEN_WIDTH-72) //X Position of Next Charabom Icon in Charabom UI

.org 0x8006CCF4
.include "defines.inc"
li r8, (SCREEN_HEIGHT-110) //Y Position of Next Charabom Icon in Charabom UI

.org 0x8006CE10
.include "defines.inc"
li r7, (SCREEN_WIDTH-120) //X Position of Current Charabom Border in Charabom UI

.org 0x8006CE18
.include "defines.inc"
li r8, (SCREEN_HEIGHT-94) //Y Position of Current Charabom Border in Charabom UI

.org 0x8006CEC8
.include "defines.inc"
li r7, (SCREEN_WIDTH-112) //X Position of Current Charabom Icon in Charabom UI

.org 0x8006CED4
.include "defines.inc"
li r8, (SCREEN_HEIGHT-86) //Y Position of Current Charabom Icon in Charabom UI

.org 0x8006CF74
.include "defines.inc"
li r7, (SCREEN_WIDTH-120) //X Position of LV Icon in Charabom UI

.org 0x8006CFE8
.include "defines.inc"
li r7, (SCREEN_WIDTH-88) //X Position of LV Dot in Charabom UI

.org 0x8006CFF0
.include "defines.inc"
li r8, (SCREEN_HEIGHT-44) //Y Position of LV Dot in Charabom UI

.org 0x8006D060
.include "defines.inc"
li r7, (SCREEN_WIDTH-72) //X Position of Current Charabom Level in Charabom UI

.org 0x8006D068
.include "defines.inc"
li r8, (SCREEN_HEIGHT-44) //Y Position of Current Charabom Level in Charabom UI

.org 0x8006D100
.include "defines.inc"
li r7, (SCREEN_WIDTH-120) //X Position of Charabom Exp Box in Charabom UI

.org 0x8006D108
.include "defines.inc"
li r8, (SCREEN_HEIGHT-102) //Y Position of Charabom Exp Box in Charabom UI

.org 0x8006D178
.include "defines.inc"
li r7, (SCREEN_WIDTH-120) //X Position of Charabom Exp Box Inside in Charabom UI

.org 0x8006D180
.include "defines.inc"
li r8, (SCREEN_HEIGHT-102) //Y Position of Charabom Exp Box Inside in Charabom UI

.org 0x8006D1FC
.include "defines.inc"
li r7, (SCREEN_WIDTH-116) //X Position of Charabom Exp Bar in Charabom UI
li r8, (SCREEN_HEIGHT-102) //Y Position of Charabom Exp Bar in Charabom UI

.org 0x8006D32C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+264) //X Position of Clock Icon in Long Time HUD

.org 0x8006D39C
.include "defines.inc"
addi r7, r25, (((SCREEN_WIDTH-640)/2)+292) //X Position of Hours in Time HUD

.org 0x8006D44C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+264) //X Position of Third Clock Icon in Long Time HUD

.org 0x8006D4B0
.include "defines.inc"
addi r7, r25, (((SCREEN_WIDTH-640)/2)+292) //X Position of Second Clock Colon in Long Time HUD

.org 0x8006D558
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+264) //X Position of Clock Icon in Short Time HUD

.org 0x8006D5C8
.include "defines.inc"
addi r7, r25, (((SCREEN_WIDTH-640)/2)+292) //X Position of Last 4 Digits in Time HUD

.org 0x8006D680
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+264) //X Position of Second Clock Icon in Time HUD

.org 0x8006D6E8
.include "defines.inc"
addi r7, r25, (((SCREEN_WIDTH-640)/2)+292) //X Position of Colon in Time HUD

.org 0x8012D2D0
.include "defines.inc"
addi r28, r28, ((SCREEN_WIDTH-322)/3) //Spacing Between Player Scores in Battle HUD

.org 0x8012D4C4
.include "defines.inc"
addi r28, r28, ((SCREEN_WIDTH-322)/3) //Spacing Between Player Step Switch Scores in Battle HUD

.org 0x8012D6DC
.include "defines.inc"
addi r28, r28, ((SCREEN_WIDTH-322)/3) //Spacing Between Player Balloon Catch Scores in Battle HUD

.org 0x8012DB14
.include "defines.inc"
addi r28, r28, ((SCREEN_WIDTH-322)/3) //Spacing Between Player Icons in Battle HUD

.org 0x8012E184
.include "defines.inc"
addi r28, r28, ((SCREEN_WIDTH-322)/3) //Spacing Between Player Power Bars in Battle HUD

.org 0x80152DD0
li r3, 1 //Disable Object Frustum Culling

.org 0x8015F808
b fix_textbox //Patch Textbox Width and Y Position

.org 0x80160424
b fix_cursor //Fix Cursor Position

.org 0x801609C8
.include "defines.inc"
addi r28, r6, (SCREEN_HEIGHT-448) //Y Offset of Textbox Text Ingame

.org 0x80167220
.include "defines.inc"
li r0, SCREEN_HEIGHT //Height of First Fade to Game

.org 0x80167254
.include "defines.inc"
li r10, SCREEN_WIDTH //Width of First Fade to Game

.org 0x80167DD8
.include "defines.inc"
li r0, SCREEN_HEIGHT //Height of Fades to/from Game

.org 0x80167DF8
.include "defines.inc"
li r10, SCREEN_WIDTH //Width of Fades to/from Game

.org 0x801682AC
.include "defines.inc"
li r3, SCREEN_WIDTH //Width of Continue Screen Filter
li r0, SCREEN_HEIGHT //Height of Continue Screen Filter

.org 0x801685AC
.include "defines.inc"
li r7, SCREEN_WIDTH //Width of Setup Screen Filter

.org 0x801685C4
.include "defines.inc"
li r8, SCREEN_HEIGHT //Height of Setup Screen Filter

.org 0x801689C4
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Finished Text

.org 0x80168B54
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Bouncing Finished Text

.org 0x80168C90
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Stopped Bouncing Finished Text

.org 0x80168DFC
.include "defines.inc"
li r5, (((SCREEN_WIDTH-640)/2)+600) //Stop X Position of Expanding Ready Text

.org 0x80168E84
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+200) //Y Position of Expanding Hurry Text

.org 0x80168F14
.include "defines.inc"
li r5, (((SCREEN_WIDTH-640)/2)+200) //Stop X of Stopping Ready Text

.org 0x80168F8C
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+200) //Y Position of Stopping Hurry Text

.org 0x80169088
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+200) //Y Position of Speeding Hurry Text

.org 0x8016919C
.include "defines.inc"
li r5, (((SCREEN_HEIGHT-448)/2)+200) //Y Position of Blurring Hurry Text

.org 0x80169210
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+200) //Y Position of Deblurring Hurry Text

.org 0x8016935C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Falling You Failed Text

.org 0x80169454
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Bouncing You Failed Text

.org 0x801694F8
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Stopped You Failed Text

.org 0x801698B4
.include "defines.inc"
li r5, (((SCREEN_WIDTH-640)/2)+225) //Minimum X Position of Left Half of Start Text

.org 0x801698C4
.include "defines.inc"
li r5, (((SCREEN_WIDTH-640)/2)+415) //Maximum Slow Slide X Position of Right Half of Start Text

.org 0x8016994C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Expanding Ready Text

.org 0x80169954
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Expanding Ready Text

.org 0x80169A38
.include "defines.inc"
li r5, SCREEN_WIDTH //Maximum Fast Slide X Position of Right Half of Start Text

.org 0x80169B50
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Left Half of Start Text

.org 0x80169BE4
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Right Half of Start Text

.org 0x801699C8
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Deexpanding Ready Text
li r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Deexpanding Ready Text

.org 0x80169AC8
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Middling Ready Text

.org 0x80169AD0
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Flicker Ready Text

.org 0x80169D4C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Flicker Ready Text

.org 0x80169D54
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Middling Ready Text

.org 0x8016A454
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Static Continue Text
li r8, (((SCREEN_HEIGHT-448)/2)+105) //Y Position of Static Continue Text

.org 0x8016A4D0
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+220) //X Position of Static Yes Continue Option
li r8, (((SCREEN_HEIGHT-448)/2)+200) //Y Position of Static Yes Continue Option

.org 0x8016A548
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+405) //X Position of Static No Continue Option
li r8, (((SCREEN_HEIGHT-448)/2)+200) //Y Position of Static No Continue Option

.org 0x8016A61C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Continue Text
li r8, (((SCREEN_HEIGHT-448)/2)+105) //Y Position of Continue Text

.org 0x8016A69C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+220) //X Position of Yes Continue Option
li r8, (((SCREEN_HEIGHT-448)/2)+226) //Y Position of Yes Continue Option

.org 0x8016A71C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+405) //X Position of No Continue Option

.org 0x8016A724
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+226) //Y Position of No Continue Option

.org 0x8016A82C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Second Alternate Game Over Text
li r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Second Alternate Game Over Text

.org 0x8016A8CC
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Game Over Text
li r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Game Over Text

.org 0x8016A970
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Alternate Game Over Text
li r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Alternate Game Over Text

.org 0x8016AAD8
.include "defines.inc"
li r5, (((SCREEN_HEIGHT-448)/2)+192) //Y Position of Area Cleared Text

.org 0x8016AB50
.include "defines.inc"
li r5, (((SCREEN_HEIGHT-448)/2)+192) //Alternate Y Position of Area Cleared Text

.org 0x8016ABCC
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+192) //Y Position of Blurred Area Cleared Text

.org 0x8016AC74
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //Alternate X Position of Blurred Area Cleared Text

.org 0x8016AC7C
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+192) //Alternate Y Position of Blurred Area Cleared Text

.org 0x8016AD68
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+192) //Y Position of Clear Area Cleared Text

.org 0x8016AE08
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Alternate Clear Area Cleared Text
li r8, (((SCREEN_HEIGHT-448)/2)+192) //Y Position of AlternateClear Area Cleared Text

.org 0x8016B000
.include "defines.inc"
li r4, (((SCREEN_WIDTH-640)/2)+320) //X Position of Area Cleared Text

.org 0x8016B148
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Blur Layer 1 Get Ready Text
li r8, (((SCREEN_HEIGHT-448)/2)+230) //Y Position of Blur Layer 1 Get Ready Text

.org 0x8016B1CC
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Blur Layer 2 Get Ready Text
li r8, (((SCREEN_HEIGHT-448)/2)+230) //Y Position of Blur Layer 2 Get Ready Text

.org 0x8016B250
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Blur Layer 3 Get Ready Text
li r8, (((SCREEN_HEIGHT-448)/2)+230) //Y Position of Blur Layer 3 Get Ready Text

.org 0x8016B2D4
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Blur Layer 4 Get Ready Text
li r8, (((SCREEN_HEIGHT-448)/2)+230) //Y Position of Blur Layer 4 Get Ready Text

.org 0x8016B36C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Blur Layer 5 Get Ready Text
li r8, (((SCREEN_HEIGHT-448)/2)+230) //Y Position of Blur Layer 5 Get Ready Text

.org 0x8016B3E4
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Blur Layer 6 Get Ready Text
li r8, (((SCREEN_HEIGHT-448)/2)+230) //Y Position of Blur Layer 6 Get Ready Text

.org 0x8016B460
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Blur Layer 7 Get Ready Text
li r8, (((SCREEN_HEIGHT-448)/2)+230) //Y Position of Blur Layer 7 Get Ready Text

.org 0x8016B4DC
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Blur Layer 8 Get Ready Text
li r8, (((SCREEN_HEIGHT-448)/2)+230) //Y Position of Blur Layer 8 Get Ready Text

.org 0x8016B560
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Blur Layer 9 Get Ready Text

.org 0x8016B568
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+230) //Y Position of Blur Layer 9 Get Ready Text

.org 0x8016B5E8
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Blur Layer 10 Get Ready Text

.org 0x8016B5F0
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+230) //Y Position of Blur Layer 10 Get Ready Text

.org 0x8016B670
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Blur Layer 11 Get Ready Text

.org 0x8016B678
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+230) //Y Position of Blur Layer 11 Get Ready Text

.org 0x8016B6F8
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Blur Layer 12 Get Ready Text

.org 0x8016B700
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+230) //Y Position of Blur Layer 12 Get Ready Text

.org 0x8016B858
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Enlarging Unblurred Get Ready Text

.org 0x8016B92C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Middling Unblurred Get Ready Text

.org 0x8016B980
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Downscaling Unblurred Get Ready Text

.org 0x8016BA88
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Blur Slowing Get Ready Text

.org 0x8016BB20
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Blur Backwards Slow Get Ready Text

.org 0x8016BBB0
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Blur Speeding Get Ready Text

.org 0x8016BCB0
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Paused Unblurred Get Ready Text

.org 0x8016BD48
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Paused Blurred Get Ready Text

.org 0x8016BDD8
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Paused High Blurred Get Ready Text

.org 0x8016BF2C
.include "defines.inc"
li r4, (((SCREEN_WIDTH-640)/2)+320) //X Position of Unblurred Get Ready Text

.org 0x8016BFBC
.include "defines.inc"
li r4, (((SCREEN_WIDTH-640)/2)+320) //X Position of New Unblurred Get Ready Text

.org 0x8016C050
.include "defines.inc"
li r4, (((SCREEN_WIDTH-640)/2)+320) //X Position of Slow Unblurred Get Ready Text

.org 0x8016C0F4
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Up Blur Get Ready Text

.org 0x8016C18C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Down Blur Get Ready Text

.org 0x8016C21C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Middle Blur Get Ready Text

.org 0x8016C2B8
.include "defines.inc"
li r7, SCREEN_WIDTH //Starting X Position of Hurry Text

.org 0x8016C370
.include "defines.inc"
li r5,  (((SCREEN_WIDTH-640)/2)+320) //Starting X Position of Split Start Text

.org 0x80174B88
.include "defines.inc"
li r9, (((SCREEN_WIDTH-640)/2)+176) //X Position of World Select Text

.org 0x8017BDD8
.include "defines.inc"
addi r7, r11, (((SCREEN_WIDTH-640)/2)+320) //X Position of Select Arrows in World Select

.org 0x8017BEC8
.include "defines.inc"
li r11, (SCREEN_HEIGHT-98) //Y Position of World Map Select Arrows

.org 0x8017C074
.include "defines.inc"
li r11, (((SCREEN_HEIGHT-448)/2)+196) //Y Position of World Map Course Select Arrows

.org 0x80189A6C
.include "defines.inc"
li r10, (((SCREEN_WIDTH-640)/2)+23) //Width of Bar to from Top-Left to Center Header on 3-Matches Screen

.org 0x80189B18
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+496) //X Position of Bar to from Center to Top-Right Curve on 3-Matches Screen

.org 0x80189B20
.include "defines.inc"
li r10, (((SCREEN_WIDTH-640)/2)+16) //Width of Bar to from Center to Top-Right Curve on 3-Matches Screen

.org 0x80189C08
.include "defines.inc"
li r0, (SCREEN_HEIGHT-147) //Height of Left Bar on 3-Matches Screen

.org 0x80189C84
.include "defines.inc"
li r0, (SCREEN_HEIGHT-147) //Height of Right Bar on 3-Matches Screen

.org 0x80189CBC
.include "defines.inc"
li r7, (SCREEN_WIDTH-128) //X Position of Right Bar on 3-Matches Screen

.org 0x80189D40
.include "defines.inc"
li r10, (SCREEN_WIDTH-256) //Width of Top-Center on 3-Matches Screen

.org 0x80189E74
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+168) //X Position of Top Bar Over 3 Matches Text

.org 0x80189F2C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+168) //X Position of Bottom Bar Under 3 Matches Text

.org 0x80189FEC
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+164) //X Position of Left Bar Beside 3 Matches Text

.org 0x8018A0B0
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+484) //X Position of Right Bar Beside 3 Matches Text

.org 0x8018A180
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+176) //X Position of Battle Text

.org 0x8018A244
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+352) //X Position of Results Text

.org 0x8018A324
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+197) //X Position of Match Count in 3-Matches Text

.org 0x8018A3E8
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+340) //X Position of Matches Text in 3-Matches Text

.org 0x801A7B28
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Victory Icon on Battle Victory Screen

.org 0x801E4F20
.include "defines.inc"
subi r3, r3, (SCREEN_WIDTH-240) //X Offset of Left Slide Cursor in Options Menu

.org 0x801E4F40
.include "defines.inc"
addi r3, r3, (SCREEN_WIDTH-240) //X Offset of Right Slide Cursor in Options Menu

.org 0x801EDC28
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Pause Warning Box
li r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Pause Warning Box

.org 0x801EDF2C
.include "defines.inc"
addi r5, r5, (((SCREEN_WIDTH-640)/2)+320) //X Position of Pause Warning Box Text
addi r0, r4, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Pause Warning Box Text

.org 0x801EE0E4
.include "defines.inc"
addi r7, r3, (((SCREEN_WIDTH-640)/2)+320) //X Position of Pause Warning Box Cursor

.org 0x801EE17C
.include "defines.inc"
addi r8, r4, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Pause Warning Box Cursor

.org 0x801EE94C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Pause Menu Options Box
li r8, (SCREEN_HEIGHT-80) //Y Position of Pause Menu Options Box

.org 0x801EEC0C
.include "defines.inc"
addi r4, r4, (((SCREEN_WIDTH-640)/2)+320) //X Position of Continue Game Option
addi r0, r3, (SCREEN_HEIGHT-224) //Y Position of Continue Game Option

.org 0x801EEEA0
.include "defines.inc"
addi r5, r5, (((SCREEN_WIDTH-640)/2)+320) //X Position of Leave Area Option
addi r0, r4, (SCREEN_HEIGHT-224) //Y Position of Leave Area Option

.org 0x801EF130
.include "defines.inc"
addi r5, r5, (((SCREEN_WIDTH-640)/2)+320) //X Position of Return to Title Option
addi r0, r4, (SCREEN_HEIGHT-224) //Y Position of Return to Title Option

.org 0x801EF2E4
.include "defines.inc"
addi r7, r3, (((SCREEN_WIDTH-640)/2)+320) //X Position of Pause Menu Cursor

.org 0x801EF37C
.include "defines.inc"
addi r8, r4, (SCREEN_HEIGHT-224) //Y Position of Pause Menu Cursor

.org 0x801EFA48
.include "defines.inc"
li r0, (((SCREEN_WIDTH-640)/2)+320) //X Position of Cards Obtained Page Without Map

.org 0x801EFA54
.include "defines.inc"
li r0, (SCREEN_WIDTH-198) //X Position of Cards Obtained Page with Map

.org 0x801EFAA4
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+188) //Y Position of Cards Obtained Page Background

.org 0x801EFD80
.include "defines.inc"
addi r0, r4, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Cards Obtained Text

.org 0x801EFFF8
.include "defines.inc"
addi r8, r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Card Types Text

.org 0x801F02E0
.include "defines.inc"
addi r8, r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Lightning Card Icons

.org 0x801F0678
.include "defines.inc"
addi r8, r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Hige Hige Card Icons

.org 0x801F0948
.include "defines.inc"
addi r8, r5, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Jetters Card Icons

.org 0x801F0A54
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+188) //Y Position of Pause Map Border

.org 0x801F0C40
.include "defines.inc"
addi r8, r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Pause Map

.org 0x801F0F2C
.include "defines.inc"
addi r8, r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Pause Map Start

.org 0x801F1204
.include "defines.inc"
addi r8, r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Pause Map Goal

.org 0x801F1578
.include "defines.inc"
addi r8, r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Pause Map Bomberman Icon

.org 0x801F17E8
.include "defines.inc"
addi r8, r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Pause Map Alternate Palette Bomberman Icon

.org 0x801F1B38
.include "defines.inc"
addi r8, r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Pause Map Bomberman Direction Icon

.org 0x801F1BEC
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+311) //Y Position of Level Number Box

.org 0x801F1DFC
.include "defines.inc"
addi r8, r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Level Number Digit 1

.org 0x801F2088
.include "defines.inc"
addi r8, r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Level Number Digit 2

.org 0x801F230C
.include "defines.inc"
addi r8, r8, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Level Number Digit 3

.org 0x801F256C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Pause Text

.org 0x80204064
b fix_mountain //Fix Mountain Graphic Last Two Columns

.org 0x80206608
lwz r3, 0x10(r28) //Get X Texcoord Instead of Vertex X Coordinate for Mountain

.org 0x80206610
stw r3, 0x10(r28) //Set X Texcoord Instead of Vertex X Coordinate for Mountain
lwz r5, 0x18(r28) //Get Max X Texcoord Instead of Max Vertex X Coordinate for Mountain
lwz r4, 0x10(r28) //Get X Texcoord Instead of Vertex X Coordinate for Mountain

.org 0x80206630
stw r0, 0x10(r28) //Reset X Texcoord Instead of Vertex X Coordinate for Mountain

.org 0x80206AF8
.include "defines.inc"
li r28, SCREEN_WIDTH //Width for Ingame Select Screen
li r27, SCREEN_HEIGHT //Height for Ingame Select Screen

.org 0x80206D20
b fix_mountain_slice_texcoord //Fix Mountain Graphic Slice Texcoord

.org 0x80207014
.include "defines.inc"
li r6, (SCREEN_HEIGHT-294) //Y Position of Talking Character on Charabom Select

.org 0x80207038
.include "defines.inc"
li r5, (SCREEN_HEIGHT-179) //Y Position of Textbox on Charabom Select

.org 0x802070C4
.include "defines.inc"
addi r5, r5, (((SCREEN_WIDTH-640)/2)+124) //X Position of L Button Icon Charabom Select

.org 0x802070E4
.include "defines.inc"
addi r5, r5, (((SCREEN_WIDTH-640)/2)+366) //X Position of A Button Icon Charabom Select

.org 0x80207CE8
cmpwi r0, 336 //Max Velocity of Right Select HUD

.org 0x80207CF0
li r0, 336 //Set Max Velocity of Right Select HUD

.org 0x80207D10
.include "defines.inc"
cmpwi r0, (SCREEN_WIDTH+80) //End Check X Position of Right Select HUD

.org 0x80207D18
.include "defines.inc"
li r3, (SCREEN_WIDTH+80) //Ending X Position of Right Select HUD

.org 0x80207E4C
.include "defines.inc"
li r6, (SCREEN_HEIGHT-294) //Y Position of White Bomber Talking Character for Bomb Select

.org 0x80207E64
.include "defines.inc"
li r5, (SCREEN_HEIGHT-170) //Y Position of White Bomber Textbox for Bomb Select

.org 0x80207ED0
.include "defines.inc"
li r6, (SCREEN_HEIGHT-294) //Y Position of Max Talking Character for Bomb Select

.org 0x80207EE8
.include "defines.inc"
li r5, (SCREEN_HEIGHT-170) //Y Position of Max Textbox for Bomb Select

.org 0x80207F34
.include "defines.inc"
subfic r5, r0, (((SCREEN_WIDTH-640)/2)+124) //X Position of R Button Bomb Select Icon

.org 0x80207F54
.include "defines.inc"
subfic r5, r0, (((SCREEN_WIDTH-640)/2)+366) //X Position of A Button Bomb Select Icon

.org 0x80208CE8
cmpwi r0, 336 //Max Velocity of Left Select HUD

.org 0x80208CF0
li r0, 336 //Set Max Velocity of Left Select HUD

.org 0x80208D10
.include "defines.inc"
cmpwi r0, (SCREEN_WIDTH+80) //End Check X Position of Left Select HUD

.org 0x80208D18
.include "defines.inc"
li r3, (SCREEN_WIDTH+80) //Ending X Position of Left Select HUD

.org 0x80208E5C
.include "defines.inc"
li r0, (SCREEN_WIDTH+80) //Starting X Position of Right Select HUD

.org 0x80209BF8
.include "defines.inc"
li r0, (SCREEN_WIDTH+80) //Starting X Position of ForcedLeft Select HUD

.org 0x8020A200
.include "defines.inc"
li r5, (((SCREEN_HEIGHT-448)/2)+156) //Y Position of Loading Text

.org 0x8020B91C
.include "defines.inc"
li r5, (((SCREEN_HEIGHT-448)/2)+156) //Y Position of Saving Text

.org 0x8020C644
.include "defines.inc"
li r5, (((SCREEN_HEIGHT-448)/2)+127) //Y Position of Insert Memory Card Text

.org 0x8020CC78
.include "defines.inc"
li r5, (((SCREEN_HEIGHT-448)/2)+156) //Y Position of Confirming Text

.org 0x8020EF18
.include "defines.inc"
li r0, SCREEN_HEIGHT //Height of Fade of Bomber Mansion Save Screen

.org 0x8020EF48
.include "defines.inc"
li r10, SCREEN_WIDTH //Width of Fade of Bomber Mansion Save Screen

.org 0x802139A4
.include "defines.inc"
li r5, (SCREEN_HEIGHT-52) //Y Position of Delete File Box

.org 0x80214EB4
.include "defines.inc"
li r9, (((SCREEN_WIDTH-640)/2)+168) //X Position of Empty File Text

.org 0x80216104
.include "defines.inc"
li r5, (((SCREEN_HEIGHT-448)/2)+197) //Y Position of File X Deleted Text

.org 0x8021695C
.include "defines.inc"
li r0, SCREEN_HEIGHT //Height of Fade of Memory Card Screen

.org 0x8021698C
.include "defines.inc"
li r10, SCREEN_WIDTH //Width of Fade of Memory Card Screen

.org 0x80216B34
.include "defines.inc"
li r5, (((SCREEN_HEIGHT-448)/2)+120) //Y Position of Warning Text

.org 0x80216B4C
.include "defines.inc"
li r5, (((SCREEN_HEIGHT-448)/2)+160) //Y Position of This Game Saves Automatically Text

.org 0x80217984
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+318) //X Position of Select File

.org 0x802179FC
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+315) //X Position of Delete Which File

.org 0x80217A74
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+318) //X Position of Alternate Select File

.org 0x80218E28
.include "defines.inc"
li r4, (((SCREEN_WIDTH-640)/2)+200) //X Position of Continue Text

.org 0x80218E50
.include "defines.inc"
li r4, (((SCREEN_WIDTH-640)/2)+180) //X Position of Without Save Text

.org 0x80218E84
.include "defines.inc"
li r4, (((SCREEN_WIDTH-640)/2)+400) //X Position of Retry Text

.org 0x802190F8
.include "defines.inc"
li r4, (((SCREEN_WIDTH-640)/2)+180) //X Position of Yes File Delete Text

.org 0x80219124
.include "defines.inc"
li r4, (((SCREEN_WIDTH-640)/2)+400) //X Position of No File Delete Text

.org 0x80219244
.include "defines.inc"
addi r19, r4, ((SCREEN_WIDTH-640)/2) //X Offset of Text in Memory Card Box

.org 0x802194B4
.include "defines.inc"
addi r3, r6, (((SCREEN_HEIGHT-448)/2)+224) //Y Position of Memory Card Box

.org 0x802194CC
.include "defines.inc"
li r26, (((SCREEN_WIDTH-640)/2)+92) //X Position of Top of Memory Card Box

.org 0x802195F0
.include "defines.inc"
li r26, (((SCREEN_WIDTH-640)/2)+92) //X Position of Slices Memory Card Box

.org 0x80238B74
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+310) //X Position of Course Name on Early Fading In Win Screen

.org 0x80238E14
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+310) //X Position of Course Name on Fading In Win Screen

.org 0x80239058
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+310) //X Position of Course Name on Static Win Screen

.org 0x80239400
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+310) //X Position of Course Name on Fade Out Win Screen

.org 0x80239644
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+310) //X Position of Course Name on Late Fade Out Win Screen

.org 0x8026064C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Return to Title Box in Battles
li r8, (((SCREEN_HEIGHT-448)/2)+238) //Y Position of Return to Title Box in Battles

.org 0x802606DC
.include "defines.inc"
subfic r30, r3, (((SCREEN_HEIGHT-448)/2)+184) //Y Position of Return to Title Text in Battles

.org 0x80260714
.include "defines.inc"
subfic r27, r0, (((SCREEN_WIDTH-640)/2)+320) //X Position of Return to Title Text in Battles

.org 0x802607DC
.include "defines.inc"
subfic r27, r3, (((SCREEN_HEIGHT-448)/2)+216) //Y Position of Title Screen Text in Battles

.org 0x80260814
.include "defines.inc"
subfic r28, r0, (((SCREEN_WIDTH-640)/2)+320) //X Position of Title Screen Text in Battles

.org 0x802608D0
.include "defines.inc"
addi r25, r3, (((SCREEN_HEIGHT-448)/2)+276) //Y Position of Yes in Battles

.org 0x802608F8
.include "defines.inc"
subfic r26, r3, (((SCREEN_WIDTH-640)/2)+280) //X Position of Yes in Battles

.org 0x802609E8
.include "defines.inc"
addi r26, r3, (((SCREEN_HEIGHT-448)/2)+276) //Y Position of No in Battles

.org 0x80260A10
.include "defines.inc"
addi r24, r3, (((SCREEN_WIDTH-640)/2)+386) //X Position of No in Battles

.org 0x80260B58
.include "defines.inc"
addi r8, r31, (((SCREEN_HEIGHT-448)/2)+272) //Y Position of Yes/No Cursor in Battles

.org 0x80260EF8
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Pause Box in Battles
li r8, (((SCREEN_HEIGHT-448)/2)+238) //Y Position of Pause Box in Battles

.org 0x80260F6C
.include "defines.inc"
subfic r8, r3, (((SCREEN_HEIGHT-448)/2)+162) //Y Position of Pause Text in Battles

.org 0x80260FA4
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Pause Text in Battles

.org 0x80261020
.include "defines.inc"
subfic r30, r3, (((SCREEN_HEIGHT-448)/2)+206) //Y Position of Continue Game Text

.org 0x80261058
.include "defines.inc"
subfic r26, r0, (((SCREEN_WIDTH-640)/2)+308) //X Position of Continue Game Text

.org 0x80261124
.include "defines.inc"
subfic r27, r0, (((SCREEN_WIDTH-640)/2)+318) //X Position of Change Settings Text

.org 0x80261130
.include "defines.inc"
subfic r26, r0, (((SCREEN_HEIGHT-448)/2)+244) //Y Position of Change Settings Text

.org 0x802611D8
.include "defines.inc"
addi r25, r0, (((SCREEN_HEIGHT-448)/2)+284) //Y Position of Return to Title Text

.org 0x80261210
.include "defines.inc"
subfic r26, r0, (((SCREEN_WIDTH-640)/2)+318) //X Position of Return to Title Text

.org 0x80261300
.include "defines.inc"
subfic r7, r3, (((SCREEN_WIDTH-640)/2)+192) //X Position of Battle Pause Cursor

.org 0x802616C0
.include "defines.inc"
li r3, (((SCREEN_WIDTH-640)/2)+326) //Starting X Position of Battle Pause Yes/No Cursor

.org 0x802619C0
.include "defines.inc"
li r0, (((SCREEN_HEIGHT-448)/2)+200) //Starting Y Position of Battle Pause Cursor

.org 0x80276C90
.include "defines.inc"
li r7, (SCREEN_WIDTH/2) //X Position of Blurred Dig Em Bomber Text
li r8, (SCREEN_HEIGHT/2) //Y Position of Blurred Dig Em Bomber Text

.org 0x80276D1C
.include "defines.inc"
li r7, (SCREEN_WIDTH/2) //X Position of Unblurred Dig Em Bomber Text
li r8, (SCREEN_HEIGHT/2) //Y Position of Unblurred Dig Em Bomber Text

.org 0x80276D9C
.include "defines.inc"
li r7, (SCREEN_WIDTH/2) //X Position of Paused Dig Em Bomber Text
li r8, (SCREEN_HEIGHT/2) //Y Position of Paused Dig Em Bomber Text

.org 0x80276E1C
.include "defines.inc"
mulli r4, r3, (SCREEN_HEIGHT/2) //Starting Y Position of Rising Dig Em Bomber Text for Scrolling

.org 0x80276EC4
.include "defines.inc"
li r7, (SCREEN_WIDTH/2) //X Position of Blurred Rising Dig Em Bomber Text

.org 0x80276F50
.include "defines.inc"
li r7, (SCREEN_WIDTH/2) //X Position of Unblurred Rising Dig Em Bomber Text

.org 0x8027705C
.include "defines.inc"
li r7, (SCREEN_WIDTH/2) //X Position of Blurred Stopped Rising Dig Em Bomber Text

.org 0x802770E4
.include "defines.inc"
li r7, (SCREEN_WIDTH/2) //X Position of Unblurred Stopped Rising Dig Em Bomber Text

.org 0x80277188
.include "defines.inc"
li r7, (SCREEN_WIDTH/2) //X Position of Blurred Fading Dig Em Bomber Text

.org 0x8027721C
.include "defines.inc"
li r7, (SCREEN_WIDTH/2) //X Position of Unblurred Fading Dig Em Bomber Text

.org 0x802772D4
.include "defines.inc"
li r0, (SCREEN_HEIGHT/2) //Starting Y Position of Rising Dig Em Bomber Text

.org 0x8027C3D4
.include "defines.inc"
addi r0, r3, (((SCREEN_WIDTH-640)/2)+300) //X Position of Item Icons in Dig Em Bomber End


.org 0x8027CB28
.include "defines.inc"
li r4, (((SCREEN_WIDTH-640)/2)+220) //X Position of Player Icons in Dig Em Bomber End

.org 0x8027E534
.include "defines.inc"
li r0, (SCREEN_WIDTH/2) //X Position of Item Bar in Dig Em Bomber
li r3, ((SCREEN_HEIGHT/2)-24) //Y Position of Item Bar in Dig Em Bomber

.org 0x8027FBEC
.include "defines.inc"
addi r26, r6, (SCREEN_HEIGHT-448) //Y Offset of Text in Dig Em Bomber

.org 0x8027FCE0
.include "defines.inc"
addi r28, r6, (SCREEN_HEIGHT-448) //Y Offset of Some Text in Dig Em Bomber

.org 0x802804C8
.include "defines.inc"
li r8, (SCREEN_HEIGHT-64) //Center Y Position of Textbox in Dig Em Bomber

.org 0x802804D4
.include "defines.inc"
li r10, (SCREEN_HEIGHT-124) //Y Position of Textbox in Dig Em Bomber

.org 0x80280594
.include "defines.inc"
li r8, (SCREEN_HEIGHT-64) //Center Y Position of Textbox Icon in Dig Em Bomber

.org 0x8028059C
.include "defines.inc"
li r10, (SCREEN_HEIGHT-127) //Y Position of Textbox Icon in Dig Em Bomber

.org 0x80285458
.include "defines.inc"
li r0, SCREEN_HEIGHT //Height of Blue Background of Loading Screen

.org 0x8028548C
.include "defines.inc"
li r10, SCREEN_WIDTH //Width of Blue Background of Loading Screen

.org 0x802854D0
.include "defines.inc"
li r8, (((SCREEN_HEIGHT-448)/2)+201) //Y Position of Loading Text on Loading Screen

.org 0x80285528
.include "defines.inc"
li r7, (SCREEN_WIDTH-272) //X Position of Loading Icon on Loading Screen

.org 0x80285530
.include "defines.inc"
li r8, (SCREEN_HEIGHT-245) //Y Position of Loading Icon on Loading Screen

.org 0x802855F0
.include "defines.inc"
li r0, SCREEN_HEIGHT //Height of Fade of Loading Screen

.org 0x80285620
.include "defines.inc"
li r10, SCREEN_WIDTH //Width of Fade of Loading Screen

.org 0x8028775C
.include "defines.inc"
cmpwi r4, SCREEN_WIDTH //Max X Position of Distorted Boss Flames

.org 0x8028776C
.include "defines.inc"
cmpwi r3, SCREEN_HEIGHT //Max Y Position of Distorted Boss Flames

.org 0x80290F44
b fix_bomber_mansion_left_stat_height //Fix Left Half of Rank Border Stat Height

.org 0x80290F5C
.include "defines.inc"
li r10, ((SCREEN_WIDTH*320)/640) //Width of Left Half of Rank Border

.org 0x80290F8C
bl fix_bomber_mansion_stat_height //Fix Right Half of Rank Border Stat Height

.org 0x80290FB4
.include "defines.inc"
li r7, ((SCREEN_WIDTH*320)/640) //X Position of Right Half of Rank Border

.org 0x80290FC4
.include "defines.inc"
li r10, ((SCREEN_WIDTH*320)/640) //Width of Right Half of Rank Border

.org 0x80291024
.include "defines.inc"
li r7, (((SCREEN_WIDTH*320)/640)-80) //X Position of Rank Text on Rank Chart

.org 0x8029102C
.include "defines.inc"
li r8, (((SCREEN_HEIGHT*38)/448)-10) //Y Position of Rank Text on Rank Chart

.org 0x80291098
.include "defines.inc"
li r4, ((SCREEN_WIDTH*112)/640) //X Position of 1 Text on Rank Chart

.org 0x802910AC
.include "defines.inc"
li r5, ((SCREEN_HEIGHT*156)/448) //Y Position of 1 Text on Rank Chart

.org 0x802910C8
.include "defines.inc"
li r4, ((SCREEN_WIDTH*112)/640) //X Position of 2 Text on Rank Chart

.org 0x802910D0
.include "defines.inc"
li r5, ((SCREEN_HEIGHT*196)/448) //Y Position of 2 Text on Rank Chart

.org 0x802910F0
.include "defines.inc"
li r4, ((SCREEN_WIDTH*112)/640) //X Position of 3 Text on Rank Chart

.org 0x802910F8
.include "defines.inc"
li r5, ((SCREEN_HEIGHT*236)/448) //Y Position of 3 Text on Rank Chart

.org 0x80291118
.include "defines.inc"
li r4, ((SCREEN_WIDTH*112)/640) //X Position of 4 Text on Rank Chart

.org 0x80291120
.include "defines.inc"
li r5, ((SCREEN_HEIGHT*276)/448) //Y Position of 4 Text on Rank Chart

.org 0x80291140
.include "defines.inc"
li r4, ((SCREEN_WIDTH*112)/640) //X Position of 5 Text on Rank Chart

.org 0x80291148
.include "defines.inc"
li r5, ((SCREEN_HEIGHT*316)/448) //Y Position of 5 Text on Rank Chart

.org 0x802911D8
.include "defines.inc"
li r4, (((SCREEN_WIDTH*152)/640)-12) //X Position of Small Rank Text
li r5, ((SCREEN_HEIGHT*111)/448) //Y Position of Small Rank Text

.org 0x80291204
.include "defines.inc"
li r26, (((SCREEN_HEIGHT*156)/448)-2) //Starting Y Position of Ranks for Placement

.org 0x80291220
.include "defines.inc"
li r4, ((SCREEN_WIDTH*152)/640) //X Position of Rank for Placement

.org 0x80291248
.include "defines.inc"
addi r26, r26, ((SCREEN_HEIGHT*40)/448) //Spacing of Ranks for Placement

.org 0x80291288
.include "defines.inc"
li r4, ((SCREEN_WIDTH*236)/640) //X Position of Score Text
li r5, ((SCREEN_HEIGHT*108)/448) //Y Position of Score Text

.org 0x802912C4
.include "defines.inc"
li r25, ((SCREEN_HEIGHT*156)/448) //Starting Y Position of Scores for Placement

.org 0x8029130C
.include "defines.inc"
li r4, (((SCREEN_WIDTH*236)/640)-2) //X Position of Score for Placement

.org 0x80291330
.include "defines.inc"
addi r25, r25, ((SCREEN_HEIGHT*40)/448) //Spacing of Scores for Placement

.org 0x80291370
.include "defines.inc"
li r4, (((SCREEN_WIDTH*372)/640)-36) //X Position of Floor Text
li r5, ((SCREEN_HEIGHT*108)/448) //Y Position of Floor Text

.org 0x802913AC
.include "defines.inc"
li r25, ((SCREEN_HEIGHT*156)/448) //Starting Y Position of Floor Count for Placement

.org 0x802913E8
.include "defines.inc"
li r4, ((SCREEN_WIDTH*372)/640) //X Position of Cleared Floor Count for Placement

.org 0x80291428
.include "defines.inc"
li r4, ((SCREEN_WIDTH*372)/640) //X Position of Not Cleared Floor Count for Placement

.org 0x8029144C
.include "defines.inc"
addi r25, r25, ((SCREEN_HEIGHT*40)/448) //Spacing of Floor Counts for Placement

.org 0x802914E0
.include "defines.inc"
addi r31, r3, (((SCREEN_WIDTH*80)/640)+10) //X Position of Left Arrow on Rank Chart

.org 0x802914EC
.include "defines.inc"
subfic r30, r3, ((SCREEN_WIDTH*560)/640) //X Position of Right Arrow on Rank Chart

.org 0x802916F4
.include "defines.inc"
li r4, ((SCREEN_WIDTH*440)/640) //X Position of Time Text on Rank Chart

.org 0x802916FC
.include "defines.inc"
li r5, ((SCREEN_HEIGHT*108)/448) //Y Position of Time Text on Rank Chart

.org 0x8029173C
.include "defines.inc"
li r21, ((SCREEN_HEIGHT*156)/448) //Starting Y Position of Times on Rank Chart

.org 0x802917A8
.include "defines.inc"
li r22, (((SCREEN_WIDTH*440)/640)-16) //X Position of Long Time on Rank Chart

.org 0x802917E8
.include "defines.inc"
li r22, ((SCREEN_WIDTH*440)/640) //X Position of Short Time on Rank Chart

.org 0x80291900
.include "defines.inc"
addi r21, r21, ((SCREEN_HEIGHT*40)/448) //Spacing of Times for Placement

.org 0x80291AE0
.include "defines.inc"
mulli r3, r0, ((SCREEN_HEIGHT*40)/448) //Spacing Between Arrow Spots on Rank Chart
addi r0, r3, (((SCREEN_HEIGHT*156)/448)+16) //Y Position of Arrow Spots on Rank Chart

.org 0x80291B78
.include "defines.inc"
li r4, ((SCREEN_WIDTH*120)/640) //X Position of Total Text

.org 0x80291B80
.include "defines.inc"
li r5, ((SCREEN_HEIGHT*360)/448) //Y Position of Total Text

.org 0x80291C08
.include "defines.inc"
li r4, ((SCREEN_WIDTH*440)/640) //X Position of Total Text
li r5, ((SCREEN_HEIGHT*360)/448) //Y Position of Total Text

.org 0x80291CA4
.include "defines.inc"
li r4, ((SCREEN_WIDTH*120)/640) //X Position of Hearts Text

.org 0x80291CFC
.include "defines.inc"
li r4, ((SCREEN_WIDTH*320)/640) //X Position of Heart Gain Sign

.org 0x80291D20
.include "defines.inc"
li r4, (((SCREEN_WIDTH*320)/640)+24) //X Position of Heart Gain

.org 0x80291DDC
.include "defines.inc"
li r4, (((SCREEN_WIDTH*440)/640)+16) //X Position of Heart Score Gain

.org 0x80291E94
.include "defines.inc"
li r4, ((SCREEN_WIDTH*120)/640) //X Position of Missed Bombs Text

.org 0x80291EE8
.include "defines.inc"
li r0, ((SCREEN_WIDTH*440)/640) //X Position of Thousands of Missed Bomb Minus

.org 0x80291EF8
.include "defines.inc"
li r0, (((SCREEN_WIDTH*440)/640)+16) //X Position of Hundreds of Missed Bomb Minus

.org 0x80291F00
.include "defines.inc"
li r0, (((SCREEN_WIDTH*440)/640)+32) //X Position of Tens of Missed Bomb Minus

.org 0x80291F5C
.include "defines.inc"
li r4, (((SCREEN_WIDTH*440)/640)+16) //X Position of Missed Bomb Points

.org 0x8029201C
.include "defines.inc"
li r4, ((SCREEN_WIDTH*120)/640) //X Position of Items Destroyed Text

.org 0x8029203C
.include "defines.inc"
li r6, (((SCREEN_WIDTH*440)/640)+16) //X Position of Hundreds of Items Destroyed Minus

.org 0x80292044
.include "defines.inc"
li r6, ((SCREEN_WIDTH*456)/640) //X Position of Tens of Items Destroyed Minus

.org 0x802920D0
.include "defines.inc"
li r4, (((SCREEN_WIDTH*440)/640)+16) //X Position of Items Destroyed Points

.org 0x80292174
.include "defines.inc"
li r4, ((SCREEN_WIDTH*120)/640) //X Position of Misses Text

.org 0x802921A8
.include "defines.inc"
li r6, (((SCREEN_WIDTH*440)/640)-16) //X Position of Misses Narrow Space Minus

.org 0x802921BC
.include "defines.inc"
li r6, (((SCREEN_WIDTH*440)/640)-32) //X Position of Misses Wide Space Minus

.org 0x80292248
.include "defines.inc"
li r4, ((SCREEN_WIDTH*440)/640) //X Position of Misses Points

.org 0x802922F8
.include "defines.inc"
li r4, ((SCREEN_WIDTH*120)/640) //X Position of Powerup Not Taken Text

.org 0x80292374
.include "defines.inc"
li r4, (((SCREEN_WIDTH*440)/640)+32) //X Position of Score Gain for Powerup Not Taken

.org 0x80292444
.include "defines.inc"
li r4, ((SCREEN_WIDTH*120)/640) //X Position of Time Left Text

.org 0x802924B8
.include "defines.inc"
li r4, (((SCREEN_WIDTH*440)/640)+16) //X Position of Score Gain for Time Left

.org 0x80292554
.include "defines.inc"
li r4, ((SCREEN_WIDTH*120)/640) //X Position of Floor Text

.org 0x802925AC
.include "defines.inc"
li r4, (((SCREEN_WIDTH*120)/640)+80) //X Position of Floor Space

.org 0x802925D0
.include "defines.inc"
li r4, (((SCREEN_WIDTH*120)/640)+96) //X Position of Floor Number

.org 0x8029264C
.include "defines.inc"
li r4, (((SCREEN_WIDTH*440)/640)+16) //X Position of Score Gain for Floor

.org 0x802926E4
b fix_stat_velocity //Fix Bomber Mansion Stats Velocity

.org 0x80292734
bl fix_bomber_mansion_stat_height //Fix Sliding Left Half Bomber Mansion Stat Height

.org 0x80292768
.include "defines.inc"
li r10, (SCREEN_WIDTH/2) //Width of Sliding Left Half of Bomber Mansion Stat

.org 0x802927A0
bl fix_bomber_mansion_stat_height //Fix Sliding Right Half Bomber Mansion Stat Height

.org 0x802927D4
.include "defines.inc"
li r10, (SCREEN_WIDTH/2) //Width of Sliding Right Half of Bomber Mansion Stat

.org 0x80292800
.include "defines.inc"
addi r7, r7, (SCREEN_WIDTH/2) //Height of Sliding Right Half of Bomber Mansion Stat

.org 0x8029283C
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Left Slice of Sliding Bomber Mansion Stat Line

.org 0x80292874
.include "defines.inc"
addi r7, r7, ((SCREEN_WIDTH*88)/640) //X Position of Left Slice of Sliding Bomber Mansion Stat Line

.org 0x802928B8
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Middle Slice of Sliding Bomber Mansion Stat Line

.org 0x802928C0
.include "defines.inc"
li r10, (((SCREEN_WIDTH*552)/640)-((SCREEN_WIDTH*88)/640)-304) //Width of Middle Slice of Sliding Bomber Mansion StatLine

.org 0x802928EC
.include "defines.inc"
addi r7, r7, (((SCREEN_WIDTH*88)/640)+152) //X Position of Middle Slice of Sliding Bomber Mansion Stat Line

.org 0x80292930
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Right Slice of Sliding Bomber Mansion Stat Line

.org 0x80292964
.include "defines.inc"
addi r7, r7, (((SCREEN_WIDTH*552)/640)-152) //X Position of Right Slice of Sliding Bomber Mansion Stat Line

.org 0x80292A3C
bl fix_bomber_mansion_stat_height //Fix Displaying Left Half Bomber Mansion Stat Height

.org 0x80292A70
.include "defines.inc"
li r10, (SCREEN_WIDTH/2) //Width of Displaying Left Half of Bomber Mansion Stat

.org 0x80292AA8
bl fix_bomber_mansion_stat_height //Fix Displaying Right Half Bomber Mansion Stat Height

.org 0x80292ADC
.include "defines.inc"
li r10, (SCREEN_WIDTH/2) //Width of Displaying Right Half of Bomber Mansion Stat

.org 0x80292B08
.include "defines.inc"
addi r7, r7, (SCREEN_WIDTH/2) //Height of Displaying Right Half of Bomber Mansion Stat

.org 0x80292B44
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Left Slice of Displaying Score Bomber Mansion Stat Line

.org 0x80292B7C
.include "defines.inc"
addi r7, r7, ((SCREEN_WIDTH*88)/640) //X Position of Left Slice of Displaying Score Bomber Mansion Stat Line

.org 0x80292BC0
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Middle Slice of Displaying Score Bomber Mansion Stat Line

.org 0x80292BC8
.include "defines.inc"
li r10, (((SCREEN_WIDTH*552)/640)-((SCREEN_WIDTH*88)/640)-304) //Width of Middle Slice of Displaying Score Bomber Mansion Stat Line

.org 0x80292BF4
.include "defines.inc"
addi r7, r7, (((SCREEN_WIDTH*88)/640)+152) //X Position of Middle Slice of Displaying Score Bomber Mansion Stat Line

.org 0x80292C38
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Right Slice of Displaying Score Bomber Mansion Stat Line

.org 0x80292C6C
.include "defines.inc"
addi r7, r7, (((SCREEN_WIDTH*552)/640)-152) //X Position of Right Slice of Displaying Score Bomber Mansion Stat Line

.org 0x80292C74
.include "defines.inc"
li r0, ((SCREEN_HEIGHT*64)/448) //Starting Y Position of Stat Names when Displaying Stats

.org 0x80292CA4
.include "defines.inc"
addi r0, r3, ((SCREEN_HEIGHT*40)/448) //Spacing of Stat Names when Displaying Stats

.org 0x80292D08
bl fix_bomber_mansion_stat_height //Fix Waiting Left Half Bomber Mansion Stat Height

.org 0x80292D3C
.include "defines.inc"
li r10, (SCREEN_WIDTH/2) //Width of Waiting Left Half of Bomber Mansion Stat

.org 0x80292D74
bl fix_bomber_mansion_stat_height //Fix Waiting Right Half Bomber Mansion Stat Height

.org 0x80292DA8
.include "defines.inc"
li r10, (SCREEN_WIDTH/2) //Width of Waiting Right Half of Bomber Mansion Stat

.org 0x80292DD4
.include "defines.inc"
addi r7, r7, (SCREEN_WIDTH/2) //Height of Waiting Right Half of Bomber Mansion Stat

.org 0x80292E10
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Left Slice of Waiting Score Bomber Mansion Stat Line

.org 0x80292E48
.include "defines.inc"
addi r7, r7, ((SCREEN_WIDTH*88)/640) //X Position of Left Slice of Waiting Score Bomber Mansion Stat Line

.org 0x80292E8C
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Middle Slice of Waiting Score Bomber Mansion Stat Line

.org 0x80292E94
.include "defines.inc"
li r10, (((SCREEN_WIDTH*552)/640)-((SCREEN_WIDTH*88)/640)-304) //Width of Middle Slice of Waiting Score Bomber Mansion Stat Line

.org 0x80292EC0
.include "defines.inc"
addi r7, r7, (((SCREEN_WIDTH*88)/640)+152) //X Position of Middle Slice of Waiting Score Bomber Mansion Stat Line

.org 0x80292F04
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Right Slice of Waiting Score Bomber Mansion Stat Line

.org 0x80292F38
.include "defines.inc"
addi r7, r7, (((SCREEN_WIDTH*552)/640)-152) //X Position of Right Slice of Waiting Score Bomber Mansion Stat Line

.org 0x80292F40
.include "defines.inc"
li r0, ((SCREEN_HEIGHT*64)/448) //Starting Y Position of Stat Names when Waiting Stats

.org 0x80292F70
.include "defines.inc"
addi r0, r3, ((SCREEN_HEIGHT*40)/448) //Spacing of Stat Names when Waiting Stats

.org 0x80293064
bl fix_bomber_mansion_stat_height //Fix Decreasing Score Left Half Bomber Mansion Stat Height

.org 0x80293098
.include "defines.inc"
li r10, (SCREEN_WIDTH/2) //Width of Decreasing Score Left Half of Bomber Mansion Stat

.org 0x802930D0
bl fix_bomber_mansion_stat_height //Fix Decreasing Score Right Half Bomber Mansion Stat Height

.org 0x80293104
.include "defines.inc"
li r10, (SCREEN_WIDTH/2) //Width of Decreasing Score Right Half of Bomber Mansion Stat

.org 0x80293130
.include "defines.inc"
addi r7, r7, (SCREEN_WIDTH/2) //Height of Decreasing Score Right Half of Bomber Mansion Stat

.org 0x8029316C
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Left Slice of Decreasing Score Bomber Mansion Stat Line

.org 0x802931A4
.include "defines.inc"
addi r7, r7, ((SCREEN_WIDTH*88)/640) //X Position of Left Slice of Decreasing Score Bomber Mansion Stat Line

.org 0x802931E8
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Middle Slice of Decreasing Score Bomber Mansion Stat Line

.org 0x802931F0
.include "defines.inc"
li r10, (((SCREEN_WIDTH*552)/640)-((SCREEN_WIDTH*88)/640)-304) //Width of Middle Slice of Decreasing Score Bomber Mansion Stat Line

.org 0x8029321C
.include "defines.inc"
addi r7, r7, (((SCREEN_WIDTH*88)/640)+152) //X Position of Middle Slice of Decreasing Score Bomber Mansion Stat Line

.org 0x80293260
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Right Slice of Decreasing Score Bomber Mansion Stat Line

.org 0x80293294
.include "defines.inc"
addi r7, r7, (((SCREEN_WIDTH*552)/640)-152) //X Position of Right Slice of Decreasing Score Bomber Mansion Stat Line

.org 0x8029329C
.include "defines.inc"
li r0, ((SCREEN_HEIGHT*64)/448) //Starting Y Position of Stat Names when Decreasing Score Stats

.org 0x802932CC
.include "defines.inc"
addi r0, r3, ((SCREEN_HEIGHT*40)/448) //Spacing of Stat Names when Decreasing Score Stats

.org 0x80293374
bl fix_bomber_mansion_stat_height //Fix Late Waiting Score Left Half Bomber Mansion Stat Height

.org 0x802933A8
.include "defines.inc"
li r10, (SCREEN_WIDTH/2) //Width of Late Waiting Score Left Half of Bomber Mansion Stat

.org 0x802933E0
bl fix_bomber_mansion_stat_height //Fix Late Waiting Score Right Half Bomber Mansion Stat Height

.org 0x80293414
.include "defines.inc"
li r10, (SCREEN_WIDTH/2) //Width of Late Waiting Score Right Half of Bomber Mansion Stat

.org 0x80293440
.include "defines.inc"
addi r7, r7, (SCREEN_WIDTH/2) //Height of Late Waiting Score Right Half of Bomber Mansion Stat

.org 0x8029347C
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Left Slice of Late Waiting Score Bomber Mansion Stat Line

.org 0x802934B4
.include "defines.inc"
addi r7, r7, ((SCREEN_WIDTH*88)/640) //X Position of Left Slice of Late Waiting Score Bomber Mansion Stat Line

.org 0x802934F8
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Middle Slice of Late Waiting Score Bomber Mansion Stat Line

.org 0x80293500
.include "defines.inc"
li r10, (((SCREEN_WIDTH*552)/640)-((SCREEN_WIDTH*88)/640)-304) //Width of Middle Slice of Late Waiting Score Bomber Mansion Stat Line

.org 0x8029352C
.include "defines.inc"
addi r7, r7, (((SCREEN_WIDTH*88)/640)+152) //X Position of Middle Slice of Late Waiting Score Bomber Mansion Stat Line

.org 0x80293570
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Right Slice of Late Waiting Score Bomber Mansion Stat Line

.org 0x802935A4
.include "defines.inc"
addi r7, r7, (((SCREEN_WIDTH*552)/640)-152) //X Position of Right Slice of Late Waiting Score Bomber Mansion Stat Line

.org 0x802935AC
.include "defines.inc"
li r0, ((SCREEN_HEIGHT*64)/448) //Starting Y Position of Stat Names when Late Waiting Score Stats

.org 0x802935DC
.include "defines.inc"
addi r0, r3, ((SCREEN_HEIGHT*40)/448) //Spacing of Stat Names when Late Waiting Score Stats

.org 0x80293638
bl fix_bomber_mansion_stat_height //Fix Fade Waiting Score Left Half Bomber Mansion Stat Height

.org 0x8029366C
.include "defines.inc"
li r10, (SCREEN_WIDTH/2) //Width of Fade Waiting Score Left Half of Bomber Mansion Stat

.org 0x802936A4
bl fix_bomber_mansion_stat_height //Fix Fade Waiting Score Right Half Bomber Mansion Stat Height

.org 0x802936D8
.include "defines.inc"
li r10, (SCREEN_WIDTH/2) //Width of Fade Waiting Score Right Half of Bomber Mansion Stat

.org 0x80293704
.include "defines.inc"
addi r7, r7, (SCREEN_WIDTH/2) //Height of Fade Waiting Score Right Half of Bomber Mansion Stat

.org 0x80293740
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Left Slice of Fade Waiting Score Bomber Mansion Stat Line

.org 0x80293778
.include "defines.inc"
addi r7, r7, ((SCREEN_WIDTH*88)/640) //X Position of Left Slice of Fade Waiting Score Bomber Mansion Stat Line

.org 0x802937BC
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Middle Slice of Fade Waiting Score Bomber Mansion Stat Line

.org 0x802937C4
.include "defines.inc"
li r10, (((SCREEN_WIDTH*552)/640)-((SCREEN_WIDTH*88)/640)-304) //Width of Middle Slice of Fade Waiting Score Bomber Mansion Stat Line

.org 0x802937F0
.include "defines.inc"
addi r7, r7, (((SCREEN_WIDTH*88)/640)+152) //X Position of Middle Slice of Fade Waiting Score Bomber Mansion Stat Line

.org 0x80293834
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Right Slice of Fade Waiting Score Bomber Mansion Stat Line

.org 0x80293868
.include "defines.inc"
addi r7, r7, (((SCREEN_WIDTH*552)/640)-152) //X Position of Right Slice of Fade Waiting Score Bomber Mansion Stat Line

.org 0x80293870
.include "defines.inc"
li r0, ((SCREEN_HEIGHT*64)/448) //Starting Y Position of Stat Names when Fade Waiting Score Stats

.org 0x802938A0
.include "defines.inc"
addi r0, r3, ((SCREEN_HEIGHT*40)/448) //Spacing of Stat Names when Fade Waiting Score Stats

.org 0x80293904
bl fix_bomber_mansion_stat_height //Fix Fading Score Left Half Bomber Mansion Stat Height

.org 0x80293938
.include "defines.inc"
li r10, (SCREEN_WIDTH/2) //Width of Fading Score Left Half of Bomber Mansion Stat

.org 0x80293970
bl fix_bomber_mansion_stat_height //Fix Fading Score Right Half Bomber Mansion Stat Height

.org 0x802939A4
.include "defines.inc"
li r10, (SCREEN_WIDTH/2) //Width of Fading Score Right Half of Bomber Mansion Stat

.org 0x802939D0
.include "defines.inc"
addi r7, r7, (SCREEN_WIDTH/2) //Height of Fading Score Right Half of Bomber Mansion Stat

.org 0x80293A0C
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Left Slice of Fading Score Bomber Mansion Stat Line

.org 0x80293A44
.include "defines.inc"
addi r7, r7, ((SCREEN_WIDTH*88)/640) //X Position of Left Slice of Fading Score Bomber Mansion Stat Line

.org 0x80293A88
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Middle Slice of Fading Score Bomber Mansion Stat Line

.org 0x80293A90
.include "defines.inc"
li r10, (((SCREEN_WIDTH*552)/640)-((SCREEN_WIDTH*88)/640)-304) //Width of Middle Slice of Fading Score Bomber Mansion Stat Line

.org 0x80293ABC
.include "defines.inc"
addi r7, r7, (((SCREEN_WIDTH*88)/640)+152) //X Position of Middle Slice of Fading Score Bomber Mansion Stat Line

.org 0x80293B00
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*336)/448) //Y Position of Right Slice of Fading Score Bomber Mansion Stat Line

.org 0x80293B34
.include "defines.inc"
addi r7, r7, (((SCREEN_WIDTH*552)/640)-152) //X Position of Right Slice of Fading Score Bomber Mansion Stat Line

.org 0x80293B3C
.include "defines.inc"
li r0, ((SCREEN_HEIGHT*64)/448) //Starting Y Position of Stat Names when Fading Score Stats

.org 0x80293B6C
.include "defines.inc"
addi r0, r3, ((SCREEN_HEIGHT*40)/448) //Spacing of Stat Names when Fading Score Stats

.org 0x80293F04
.include "defines.inc"
li r10, SCREEN_WIDTH //Starting X Position of Sliding Bomber Mansion Stat

.org 0x80293F80
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*8)/7) //Height of Final Bomber Mansion Screen Background Left Half

.org 0x80293F8C
.include "defines.inc"
li r0, (SCREEN_WIDTH/2) //Width of Final Bomber Mansion Screen Background Left Half

.org 0x80293FE0
.include "defines.inc"
b fix_mansion_bg_left_height //Fix Final Bomber Mansion Screen Background Left Half Texture Height

.org 0x80294010
.include "defines.inc"
li r21, (SCREEN_WIDTH/2) //Width of Final Bomber Mansion Screen Background Right Half

.org 0x8029401C
.include "defines.inc"
li r12, ((SCREEN_HEIGHT*8)/7) //Height of Final Bomber Mansion Screen Background Right Half

.org 0x8029404C
.include "defines.inc"
b fix_mansion_bg_right //Fix Final Bomber Mansion Screen Background Right Half Texture Size and X Position

.org 0x80294174
.include "defines.inc"
subfic r23, r0, (SCREEN_WIDTH/2) //X Position of Training Results Text

.org 0x80294180
.include "defines.inc"
subfic r21, r0, (SCREEN_HEIGHT/4) //Y Position of Training Results Text

.org 0x80294238
.include "defines.inc"
subfic r23, r0, ((SCREEN_WIDTH*170)/640) //X Position of Total Score Text

.org 0x80294244
.include "defines.inc"
subfic r21, r0, ((SCREEN_HEIGHT*170)/448) //Y Position of Total Score Text

.org 0x802942C0
.include "defines.inc"
li r25, (((SCREEN_WIDTH*460)/640)-198) //X Position of Total Score Non-Zero Digits

.org 0x80294304
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-74) //X Position of Zero Total Score
li r8, ((SCREEN_HEIGHT*166)/448) //Y Position of Zero Total Score

.org 0x802943A8
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*166)/448) //Y Position of Zero within Total Score

.org 0x80294430
.include "defines.inc"
li r8, ((SCREEN_HEIGHT*166)/448) //Y Position of Non-Zero within Total Score

.org 0x802944BC
.include "defines.inc"
subfic r23, r0, ((SCREEN_WIDTH*170)/640) //X Position of Floors Cleared Text

.org 0x802944C8
.include "defines.inc"
subfic r21, r0, ((SCREEN_HEIGHT*230)/448) //Y Position of Floors Cleared Text

.org 0x80294590
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-142) //X Position of Cleared Floor Count
li r8, (((SCREEN_HEIGHT*230)/448)-4) //Y Position of Cleared Floor Count

.org 0x80294618
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-164) //X Position of Floor Count
li r8, (((SCREEN_HEIGHT*230)/448)-4) //Y Position of Floor Count

.org 0x802946AC
.include "defines.inc"
subfic r23, r0, (((SCREEN_WIDTH*460)/640)-94) //X Position of Floor Text

.org 0x802946B8
.include "defines.inc"
subfic r21, r0, ((SCREEN_HEIGHT*230)/448) //Y Position of Floor Text

.org 0x80294768
.include "defines.inc"
subfic r23, r0, (((SCREEN_WIDTH*460)/640)-94) //X Position of Floors Text

.org 0x80294774
.include "defines.inc"
subfic r21, r0, ((SCREEN_HEIGHT*230)/448) //Y Position of Floors Text

.org 0x80294820
.include "defines.inc"
subfic r23, r0, (((SCREEN_WIDTH*170)/640)-50) //X Position of Time Text

.org 0x8029482C
.include "defines.inc"
subfic r21, r0, ((SCREEN_HEIGHT*290)/448) //Y Position of Time Text

.org 0x802948E0
.include "defines.inc"
subfic r22, r0, (((SCREEN_WIDTH*170)/640)+6) //X Position of Your Rank Text

.org 0x802948EC
.include "defines.inc"
subfic r21, r0, ((SCREEN_HEIGHT*350)/448) //Y Position of Your Rank Text

.org 0x80294A34
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-224) //X Position of Minutes Tens in Time
li r8, (((SCREEN_HEIGHT*290)/448)-4) //Y Position of Minutes Tens in Time

.org 0x80294AD0
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-200) //X Position of Minutes Ones in Time

.org 0x80294AD8
.include "defines.inc"
li r8, (((SCREEN_HEIGHT*290)/448)-4) //Y Position of Minutes Ones in Time

.org 0x80294B90
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-176) //X Position of Minutes Colon in Time
li r8, (((SCREEN_HEIGHT*290)/448)-4) //Y Position of Minutes Colon in Time

.org 0x80294C18
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-152) //X Position of Seconds Tens in Time
li r8, (((SCREEN_HEIGHT*290)/448)-4) //Y Position of Seconds Tens in Time

.org 0x80294CEC
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-128) //X Position of Seconds Ones in Time
li r8, (((SCREEN_HEIGHT*290)/448)-4) //Y Position of Seconds Ones in Time

.org 0x80294DAC
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-104) //X Position of Seconds Colon in Time
li r8, (((SCREEN_HEIGHT*290)/448)-4) //Y Position of Seconds Colon in Time

.org 0x80294E30
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-80) //X Position of Deciseconds in Time

.org 0x80294E38
.include "defines.inc"
li r8, (((SCREEN_HEIGHT*290)/448)-4) //Y Position of Deciseconds in Time

.org 0x80295020
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-116) //X Position of Scaling Kyu Number
li r8, (((SCREEN_HEIGHT*370)/448)-24) //Y Position of Scaling Kyu Number

.org 0x802950A8
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-112) //X Position of Scaling Kyu Text

.org 0x802950B0
.include "defines.inc"
li r8, (((SCREEN_HEIGHT*370)/448)-24) //Y Position of Scaling Kyu Text

.org 0x802955C0
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-116) //X Position of Stopped Scaling Kyu Number
li r8, (((SCREEN_HEIGHT*370)/448)-24) //Y Position of Stopped Scaling Kyu Number

.org 0x80295648
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-112) //X Position of Stopped Scaling Kyu Text

.org 0x80295650
.include "defines.inc"
li r8, (((SCREEN_HEIGHT*370)/448)-24) //Y Position of Stopped Scaling Kyu Text

.org 0x80295B18
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-116) //X Position of Post-Voice Kyu Number
li r8, (((SCREEN_HEIGHT*370)/448)-24) //Y Position of Post-Voice Kyu Number

.org 0x80295BA0
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-112) //X Position of Post-Voice Kyu Text

.org 0x80295BA8
.include "defines.inc"
li r8, (((SCREEN_HEIGHT*370)/448)-24) //Y Position of Post-Voice Kyu Text

.org 0x80295D4C
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-30) //X Position of Kyu Number Shadow
li r8, ((SCREEN_HEIGHT*370)/448) //Y Position of Kyu Number Shadow

.org 0x80295DDC
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-116) //X Position of Static Kyu Number
li r8, (((SCREEN_HEIGHT*370)/448)-24) //Y Position of Static Kyu Number

.org 0x80295E64
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-112) //X Position of Static Kyu Text

.org 0x80295E6C
.include "defines.inc"
li r8, (((SCREEN_HEIGHT*370)/448)-24) //Y Position of Static Kyu Text

.org 0x80295F00
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-136) //X Position of Kyu Number
li r8, (((SCREEN_HEIGHT*370)/448)-24) //Y Position of Kyu Number

.org 0x80295FF4
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-30) //X Position of Ending Kyu Number Shadow
li r8, ((SCREEN_HEIGHT*370)/448) //Y Position of Ending Kyu Number Shadow

.org 0x80296084
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-116) //X Position of Static Ending Kyu Number
li r8, (((SCREEN_HEIGHT*370)/448)-24) //Y Position of Static Ending Kyu Number

.org 0x8029610C
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-112) //X Position of Ending Kyu Text

.org 0x80296114
.include "defines.inc"
li r8, (((SCREEN_HEIGHT*370)/448)-24) //Y Position of Ending Kyu Text

.org 0x802961A8
.include "defines.inc"
li r7, (((SCREEN_WIDTH*460)/640)-136) //X Position of Ending Kyu Number
li r8, (((SCREEN_HEIGHT*370)/448)-24) //Y Position of Ending Kyu Number

.org 0x80296608
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Return to Title Screen Box in Bomber Mansion
li r8, (((SCREEN_HEIGHT-448)/2)+226) //Y Position of Return to Title Screen Box in Bomber Mansion

.org 0x80296698
.include "defines.inc"
addi r30, r3, (((SCREEN_HEIGHT-448)/2)+180) //Y Position of Return to the Text in Bomber Mansion

.org 0x802966D0
.include "defines.inc"
subfic r26, r0, (((SCREEN_WIDTH-640)/2)+320) //X Position of Return to the Text in Bomber Mansion

.org 0x80296798
.include "defines.inc"
addi r26, r3, (((SCREEN_HEIGHT-448)/2)+208) //Y Position of Title Screen Text in Bomber Mansion

.org 0x802967D0
.include "defines.inc"
subfic r27, r0, (((SCREEN_WIDTH-640)/2)+320) //X Position of Title Screen Text in Bomber Mansion

.org 0x8029688C
.include "defines.inc"
subfic r24, r3, (((SCREEN_HEIGHT-448)/2)+256) //Y Position of Yes Text in Bomber Mansion

.org 0x802968B4
.include "defines.inc"
addi r25, r3, (((SCREEN_WIDTH-640)/2)+270) //X Position of Yes Text in Bomber Mansion

.org 0x802969A4
.include "defines.inc"
subfic r25, r3, (((SCREEN_HEIGHT-448)/2)+256) //Y Position of No Text in Bomber Mansion

.org 0x802969CC
.include "defines.inc"
subfic r23, r3, (((SCREEN_WIDTH-640)/2)+372) //X Position of No Text in Bomber Mansion

.org 0x80296AA4
.include "defines.inc"
subfic r8, r3, (((SCREEN_HEIGHT-448)/2)+256) //Y Position of Horizontal Bomb Cursor in Bomber Mansion

.org 0x80296EB4
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Pause Menu Box in Bomber Mansion
li r8, (((SCREEN_HEIGHT-448)/2)+226) //Y Position of Pause Menu Box in Bomber Mansion

.org 0x80296F2C
.include "defines.inc"
subfic r8, r3, (((SCREEN_HEIGHT-448)/2)+180) //Y Position of Pause Text in Bomber Mansion

.org 0x80296F64
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Pause Text in Bomber Mansion

.org 0x80297024
.include "defines.inc"
subfic r7, r3, (((SCREEN_WIDTH-640)/2)+204) //X Position of Pause Bomb Icon in Bomber Mansion

.org 0x802970F4
.include "defines.inc"
subfic r25, r3, (((SCREEN_HEIGHT-448)/2)+216) //Y Position of Continue Game Text in Bomber Mansion

.org 0x8029712C
.include "defines.inc"
subfic r26, r0, (((SCREEN_WIDTH-640)/2)+320) //X Position of Continue Game Text in Bomber Mansion

.org 0x802971F4
.include "defines.inc"
addi r25, r3, (((SCREEN_HEIGHT-448)/2)+248) //Y Position of Return to Title Text in Bomber Mansion

.org 0x8029722C
.include "defines.inc"
subfic r26, r0, (((SCREEN_WIDTH-640)/2)+330) //X Position of Return to Title Text in Bomber Mansion

.org 0x802975F0
.include "defines.inc"
li r0, (((SCREEN_WIDTH-640)/2)+320) //Starting X Position of Horizontal Bomb Cursor

.org 0x80297668
.include "defines.inc"
li r7, (((SCREEN_HEIGHT-448)/2)+210) //Y Position of Default Selection in Bomber Mansion Pause Menu

.org 0x80297A48
.include "defines.inc"
li r8, (SCREEN_HEIGHT-144) //Y Position of Bomber Mansion Portrait

.org 0x80297AC4
.include "defines.inc"
li r8, (SCREEN_HEIGHT-106) //Y Position of Bomber Mansion Portrait Eyes

.org 0x80297B34
.include "defines.inc"
li r8, (SCREEN_HEIGHT-144) //Y Position of Bomber Mansion Textbox Left Border

.org 0x80297BA4
.include "defines.inc"
li r8, (SCREEN_HEIGHT-144) //Y Position of Bomber Mansion Textbox Center

.org 0x80297C18
.include "defines.inc"
li r8, (SCREEN_HEIGHT-144) //Y Position of Bomber Mansion Textbox Right Border

.org 0x80297EAC
.include "defines.inc"
li r8, (SCREEN_HEIGHT-62) //Y Position of Bomb Cursor in Bomber Mansion

.org 0x80297F20
.include "defines.inc"
li r8, (SCREEN_HEIGHT-144) //Y Position of Bomber Mansion Select Portrait

.org 0x80297F9C
.include "defines.inc"
li r8, (SCREEN_HEIGHT-106) //Y Position of Bomber Mansion Select Portrait Eyes

.org 0x8029800C
.include "defines.inc"
li r8, (SCREEN_HEIGHT-144) //Y Position of Bomber Mansion Select Textbox Left Border

.org 0x8029807C
.include "defines.inc"
li r8, (SCREEN_HEIGHT-144) //Y Position of Bomber Mansion Select Textbox Center

.org 0x802980F0
.include "defines.inc"
li r8, (SCREEN_HEIGHT-144) //Y Position of Bomber Mansion Select Textbox Right Border

.org 0x80298324
.include "defines.inc"
li r7, (SCREEN_WIDTH-82) //X Position of Heart Icon in Bomber Mansion

.org 0x8029839C
.include "defines.inc"
li r7, (SCREEN_WIDTH-54) //X Position of Heart Count in Bomber Mansion

.org 0x80298418
.include "defines.inc"
li r7, (SCREEN_WIDTH-82) //X Position of 0 Heart Icon in Bomber Mansion

.org 0x80298488
.include "defines.inc"
li r7, (SCREEN_WIDTH-54) //X Position of 0 Heart Count in Bomber Mansion

.org 0x80298564
.include "defines.inc"
li r7, (SCREEN_WIDTH-144) //X Position of Speed Icon in Bomber Mansion

.org 0x802985D4
.include "defines.inc"
li r7, (SCREEN_WIDTH-116) //X Position of Speed Count in Bomber Mansion

.org 0x802988B8
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+264) //X Position of Clock Minutes in Bomber Mansion

.org 0x80298930
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+280) //X Position of Clock Minutes Colon in Bomber Mansion

.org 0x802989B0
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+296) //X Position of Clock Tens Seconds in Bomber Mansion

.org 0x80298A48
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+312) //X Position of Clock Ones Seconds in Bomber Mansion

.org 0x80298AD4
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+328) //X Position of Clock Seconds Colon in Bomber Mansion

.org 0x80298B54
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+344) //X Position of Clock Deciseconds in Bomber Mansion

.org 0x80298C30
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+236) //X Position of Clock Icon in Bomber Mansion

.org 0x80298D4C
.include "defines.inc"
li r7, (SCREEN_WIDTH-206) //X Position of Fire Icon in Bomber Mansion

.org 0x80298DC0
.include "defines.inc"
li r7, (SCREEN_WIDTH-176) //X Position of Fire Count in Bomber Mansion

.org 0x80298E94
.include "defines.inc"
li r7, (SCREEN_WIDTH-270) //X Position of Bomb Icon in Bomber Mansion

.org 0x80298F08
.include "defines.inc"
li r7, (SCREEN_WIDTH-240) //X Position of Bomb Count in Bomber Mansion

.org 0x8029CB68
.include "defines.inc"
li r5, SCREEN_WIDTH //Width of Bomber Mansion Fades
li r8, SCREEN_HEIGHT //Heioght of Bomber Mansion Fades

.org 0x802A9E8C
.include "defines.inc"
li r7, (((SCREEN_WIDTH-640)/2)+320) //X Position of Press Start Text in Demo
li r8, (((SCREEN_HEIGHT-448)/2)+200) //Y Position of Press Start Text in Demo

.org 0x802AB524
.include "defines.inc"
li r0, SCREEN_HEIGHT //Height of Memory Card Autoload Filter

.org 0x802AB554
.include "defines.inc"
li r10, SCREEN_WIDTH //Height of Memory Card Autoload Filter

.org 0x802ACF50
.include "defines.inc"
lis r4, (SCREEN_HEIGHT*4096)@ha //High Half of Max Render Height of Hudson Credits Text
addi r0, r4, (SCREEN_HEIGHT*4096)@l //Low Half of Max Render Height of Hudson Credits Text

.org 0x802ACFC4
b fix_hudson_stop //Fix Stop Point of Hudson Text in Credits

.org 0x802AD130
b fix_credits_invisiblity //Fix Visiblity of Credits

.org 0x802AD22C
.include "defines.inc"
lis r5, (SCREEN_HEIGHT*4096)@ha //High Half of Starting Text Y Position in Ending

.org 0x802AD07C
.include "defines.inc"
addi r0, r9, (SCREEN_HEIGHT+32) //Starting Y Position of Produced by Hudson Text in Credits

.org 0x802AD244
.include "defines.inc"
addi r4, r5, (SCREEN_HEIGHT*4096)@l //Low Half of Starting Text Y Position in Ending

.org 0x802AD438
.include "defines.inc"
subfic r26, r4, (((SCREEN_WIDTH-640)/2)+320) //X Position of Ending Text

.org 0x802AD728
.include "defines.inc"
li r5, (((SCREEN_HEIGHT-448)/2)+200) //Y Position of The End Text

.org 0x802AE0EC
.include "defines.inc"
li r3, SCREEN_HEIGHT //Height of The End Screen Filter

.org 0x802AE118
.include "defines.inc"
li r10, SCREEN_WIDTH //Width of The End Screen Filter

.org 0x802BCDC4
.include "defines.inc"
li r0, (SCREEN_HEIGHT-104) //Y Position of Textbox on Rule Select

.org 0x802BCE10
.include "defines.inc"
li r0, (SCREEN_HEIGHT-107) //Y Position of Textbox on Rule Select

.org 0x802BCECC
.include "defines.inc"
addi r24, r6, ((SCREEN_WIDTH-640)/2) //X Offset of Textbox in Rule Select

.org 0x802BD10C
.include "defines.inc"
addi r16, r5, ((SCREEN_WIDTH-640)/2) //X Offset of Handicap Page Text Overlay in Rule Select

.org 0x802BD654
.include "defines.inc"
addi r16, r5, ((SCREEN_WIDTH-640)/2) //X Offset of Items Page Text Overlay in Rule Select

.org 0x802BE98C
.include "defines.inc"
addi r22, r5, ((SCREEN_WIDTH-640)/2) //X Offset of Settings Page Text Overlay in Rule Select

.org 0x802BFADC
.include "defines.inc"
li r5, (((400-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of Current Stage Selected Icon

.org 0x802BFAF4
.include "defines.inc"
li r4, (((SCREEN_HEIGHT-448)/2)+180) //Y Position of Current Stage Selected Icon

.org 0x802BFB60
.include "defines.inc"
li r5, (((400-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of Stage Type Icon
li r4, (SCREEN_HEIGHT-152) //Y Position of Stage Type Icon

.org 0x802BFBB0
.include "defines.inc"
li r3, ((((400-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2)-12) //X Position of Stage Type with Letter Icon
li r0, (SCREEN_HEIGHT-152) //Y Position of Stage Type with Letter Icon

.org 0x802BFBD8
.include "defines.inc"
li r3, ((((400-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2)+116) //X Position of Stage Type Letter
li r0, (SCREEN_HEIGHT-152) //Y Position of Stage Type Letter

.org 0x802BFC28
.include "defines.inc"
li r5, ((((400-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2)-168) //X Position of Stage Select Left Arrow

.org 0x802BFC30
.include "defines.inc"
li r4, (((SCREEN_HEIGHT-448)/2)+172) //Y Position of Stage Select Left Arrow

.org 0x802BFC58
.include "defines.inc"
li r3, ((((400-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2)+168) //X Position of Stage Select Right Arrow

.org 0x802BFC9C
.include "defines.inc"
li r0, (((400-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of Stage Select Up/Down Arrow

.org 0x802BFCB4
.include "defines.inc"
li r3, (SCREEN_HEIGHT-182) //Y Position of Stage Select Up Arrow

.org 0x802BFCD0
.include "defines.inc"
li r3, (SCREEN_HEIGHT-116) //Y Position of Stage Select Down Arrow

.org 0x802BFD48
.include "defines.inc"
li r3, (((400-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of Battle Mode Selected

.org 0x802BFDB0
.include "defines.inc"
li r5, (((400-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of Battle Mode Icon
li r4, (((SCREEN_HEIGHT-448)/2)+208) //Y Position of Battle Mode Icon

.org 0x802BFDF8
.include "defines.inc"
li r5, ((((400-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2)-176) //X Position of Battle Mode Left Arrow

.org 0x802BFE00
.include "defines.inc"
li r4, (((SCREEN_HEIGHT-448)/2)+208) //Y Position of Battle Mode Left Arrow

.org 0x802BFE28
.include "defines.inc"
li r0, ((((400-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2)+176) //X Position of Battle Mode Right Arrow
li r4, (((SCREEN_HEIGHT-448)/2)+208) //Y Position of Battle Mode Right Arrow

.org 0x802C0798
.include "defines.inc"
li r4, (SCREEN_HEIGHT-96) //Y Position of Rule Explanations

.org 0x802C08B0
.include "defines.inc"
li r3, (SCREEN_HEIGHT-60) //Y Position of Select Cursor on Rule Select

.org 0x802C08E8
.include "defines.inc"
li r4, (SCREEN_HEIGHT-48) //Y Position of DPad Change Icon on Rule Select

.org 0x802C0914
.include "defines.inc"
li r0, (SCREEN_HEIGHT-48) //Y Position of A Button on Rule Select

.org 0x802C0934
.include "defines.inc"
li r4, (SCREEN_HEIGHT-44) //Y Position of A Button Text on Rule Select

.org 0x802C0954
.include "defines.inc"
li r0, (SCREEN_HEIGHT-48) //Y Position of B Button on Rule Select

.org 0x802C0978
.include "defines.inc"
li r4, (SCREEN_HEIGHT-44) //Y Position of B Button Text on Rule Select

.org 0x802C0A3C
.include "defines.inc"
li r4, (SCREEN_HEIGHT-184) //Y Position of Time Box on Rule Select

.org 0x802C0B30
.include "defines.inc"
li r5, (((400-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of Standard Battle Text Rule Select

.org 0x802C0C20
.include "defines.inc"
li r4, (SCREEN_WIDTH-156) //X Position of Handicap Box

.org 0x802C0C58
.include "defines.inc"
li r5, (SCREEN_WIDTH-102) //X Position of Handicap Text

.org 0x802C0C80
.include "defines.inc"
li r3, (SCREEN_WIDTH-81) //X Position of Handicap Setting

.org 0x802C0D30
.include "defines.inc"
li r5, (((400-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of Standard Stage Box
li r4, (SCREEN_HEIGHT-128) //Y Position of Standard Stage Box

.org 0x802C0D80
.include "defines.inc"
li r3, (((400-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of Alternate Stage Text
li r0, (SCREEN_HEIGHT-128) //Y Position of Alternate Stage Text

.org 0x802C0DAC
.include "defines.inc"
li r3, (((400-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of Stage Name
li r0, (SCREEN_HEIGHT-128) //Y Position of Stage Name

.org 0x802C0E44
.include "defines.inc"
li r4, (SCREEN_HEIGHT-172) //Y Position of Clock Icon on Rule Select

.org 0x802C0E80
.include "defines.inc"
li r0, (SCREEN_HEIGHT-172) //Y Position of Minutes on Rule Select

.org 0x802C0EA8
.include "defines.inc"
li r4, (SCREEN_HEIGHT-172) //Y Position of :00 on Rule Select

.org 0x802C0ECC
.include "defines.inc"
li r4, (SCREEN_HEIGHT-172) //Y Position of Infinity on Rule Select

.org 0x802C0EEC
.include "defines.inc"
li r0, (SCREEN_HEIGHT-147) //Y Position of Match Count on Rule Select

.org 0x802C0F14
.include "defines.inc"
li r3, (SCREEN_HEIGHT-148) //Y Position of Matches Text on Rule Select

.org 0x802C105C
.include "defines.inc"
li r3, (((SCREEN_HEIGHT-448)/2)+192) //Y Position of VS Icon

.org 0x802C10DC
.include "defines.inc"
li r0, (((400-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of 2v2 Team VS Icon

.org 0x802C10E8
.include "defines.inc"
li r0, (((328-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of 1vs3 P1 Team VS Icon

.org 0x802C10F4
.include "defines.inc"
li r0, (((472-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of 1vs3 P4 Team VS Icon

.org 0x802C1FDC
.include "defines.inc"
li r0, (((SCREEN_WIDTH-640)/2)+640) //Max X Position of Sliding Setup Pages

.org 0x802C69C4
.include "defines.inc"
cmpwi r27, (((SCREEN_WIDTH+255)/256)+2) //Max Number of Tiles in X Axis of Battle Rule Select Background

.org 0x802C69D4
.include "defines.inc"
cmpwi r28, (((SCREEN_HEIGHT+127)/128)+2) //Max Number of Tiles in Y Axis of Battle Rule Select Background

.org 0x802C9428
.include "defines.inc"
li r0, (((SCREEN_WIDTH-640)/2)+640) //Starting X Position of Sliding Setup Pages

.org 0x802C9764
bgt 0x802C9780 //Correct Stop of Sliding Setup Page

.org 0x802C9D78
.include "defines.inc"
li r0, SCREEN_HEIGHT //Height of Fade on Rule Select

.org 0x802C9DB0
.include "defines.inc"
li r10, SCREEN_WIDTH //Width of Fade on Rule Select

.org 0x802D4F40
b fix_title_background //Fix Title Screen Background

.org 0x802D55DC
.include "defines.inc"
li r6, (SCREEN_WIDTH-195) //Starting X Position of Light during Logo Brighten

.org 0x802D6D68
.include "defines.inc"
li r8, SCREEN_HEIGHT //Height of Demo Fade on Title Screen

.org 0x802D6D98
.include "defines.inc"
li r10, SCREEN_WIDTH //Width of Demo Fade on Title Screen

.org 0x802D6E94
.include "defines.inc"
li r8, SCREEN_HEIGHT //Height of End Fade on Title Screen

.org 0x802D6EC4
.include "defines.inc"
li r10, SCREEN_WIDTH //Width of End Fade on Title Screen

.org 0x802D7020
.include "defines.inc"
li r0, (SCREEN_HEIGHT-67) //Y Position of Bottom Bomber Mansion Option

.org 0x802D7030
.include "defines.inc"
li r0, (SCREEN_HEIGHT-107) //Y Position of Bottom Option Option

.org 0x802D7334
.include "defines.inc"
li r3, (((SCREEN_WIDTH-640)/2)+195) //Cursor X Position for Normal Mode Option in Main Menu
li r0, (SCREEN_HEIGHT-189) //Cursor Y Position for Normal Mode Option in Main Menu

.org 0x802D7348
.include "defines.inc"
li r3, (((SCREEN_WIDTH-640)/2)+195) //Cursor X Position for Battle Mode Option in Main Menu
li r0, (SCREEN_HEIGHT-148) //Cursor Y Position for Battle Mode Option in Main Menu

.org 0x802D735C
.include "defines.inc"
li r3, (((SCREEN_WIDTH-640)/2)+195) //Cursor X Position for Option Option in Main Menu
li r0, (SCREEN_HEIGHT-110) //Cursor Y Position for Option Option in Main Menu

.org 0x802D737C
.include "defines.inc"
li r3, (((SCREEN_WIDTH-640)/2)+195) //Cursor X Position for Bomber Mansion Option in Main Menu
li r0, (SCREEN_HEIGHT-70) //Cursor Y Position for Bomber Mansion Option in Main Menu

.org 0x802D7390
.include "defines.inc"
li r3, (((SCREEN_WIDTH-640)/2)+195) //Cursor X Position for Unavailabile Option in Main Menu
li r0, (SCREEN_HEIGHT-110) //Cursor Y Position for Unavailabile Option in Main Menu

.org 0x802D7938
.include "defines.inc"
li r0, SCREEN_HEIGHT //Height of Wait Start Fade on Title Screen

.org 0x802D7968
.include "defines.inc"
li r10, SCREEN_WIDTH //Width of Wait Start Fade on Title Screen

.org 0x802D79FC
.include "defines.inc"
li r0, SCREEN_HEIGHT //Height of Animation End Fade on Title Screen

.org 0x802D7A2C
.include "defines.inc"
li r10, SCREEN_WIDTH //Width of Animation End Fade on Title Screen

.org 0x802D7F54
.include "defines.inc"
li r0, SCREEN_HEIGHT //Height of Start Fade on Title Screen

.org 0x802D7F84
.include "defines.inc"
li r10, SCREEN_WIDTH //Width of Start Fade on Title Screen

.org 0x802DDA98
.include "defines.inc"
li r5, SCREEN_HEIGHT //Battle Rule Select Orthographic View Height
fmr f5, f1 //Run Replaced Instruction
li r0, SCREEN_WIDTH //Battle Rule Select Orthographic View Width

.org 0x80324C30
b scale_viewport_get //Scale Returned Coordinates by GXGetViewportV

.org 0x8037CF78
.include "defines.inc"
.short (((SCREEN_WIDTH-640)/2)+242) //X Position of Background of File Select Next Box
.short (SCREEN_HEIGHT-48) //Y Position of Background of File Select Next Box

.org 0x8037CF88
.include "defines.inc"
.short (((SCREEN_WIDTH-640)/2)+252) //X Position of A Button in File Select Next Box
.short (SCREEN_HEIGHT-46) //Y Position of A Button in File Select Next Box

.org 0x8037CF98
.include "defines.inc"
.short (((SCREEN_WIDTH-640)/2)+288) //X Position of Next Icon in File Select Next Box
.short (SCREEN_HEIGHT-42) //Y Position of Next Icon in File Select Next Box

.org 0x8037CFA8
.include "defines.inc"
.short (SCREEN_WIDTH-208) //X Position of Background of File Select Back Box
.short (SCREEN_HEIGHT-48) //Y Position of Background of File Select Back Box

.org 0x8037CFB8
.include "defines.inc"
.short (SCREEN_WIDTH-198) //X Position of B Button in File Select Back Box
.short (SCREEN_HEIGHT-46) //Y Position of B Button in File Select Back Box

.org 0x8037CFC8
.include "defines.inc"
.short (SCREEN_WIDTH-166) //X Position of Back Icon in File Select Back Box
.short (SCREEN_HEIGHT-42) //Y Position of Back Icon in File Select Back Box

.org 0x8037CFD8
.include "defines.inc"
.short (((SCREEN_WIDTH-640)/2)+242) //X Position of Background of Next Box
.short (SCREEN_HEIGHT-48) //Y Position of Background of Next Box

.org 0x8037CFE8
.include "defines.inc"
.short (((SCREEN_WIDTH-640)/2)+252) //X Position of A Button in Next Box
.short (SCREEN_HEIGHT-46) //Y Position of A Button in Next Box

.org 0x8037CFF8
.include "defines.inc"
.short (((SCREEN_WIDTH-640)/2)+288) //X Position of Next Icon in Next Box
.short (SCREEN_HEIGHT-42) //Y Position of Next Icon in Next Box

.org 0x8037D10C
.include "defines.inc"
.short (((SCREEN_WIDTH-640)/2)+242) //X Position of Background of Memory Card Next Box
.short (SCREEN_HEIGHT-48) //Y Position of Background of Memory Card Next Box

.org 0x8037D118
.include "defines.inc"
.short (((SCREEN_WIDTH-640)/2)+244) //X Position of A Button in Memory Card Next Box
.short (SCREEN_HEIGHT-46) //Y Position of A Button in Memory Card Next Box

.org 0x8037D124
.include "defines.inc"
.short (((SCREEN_WIDTH-640)/2)+278) //X Position of Next Icon in Memory Card Next Box
.short (SCREEN_HEIGHT-42) //Y Position of Next Icon in Memory Card Next Box

.org 0x80382AFC
.include "defines.inc"
.int (((SCREEN_HEIGHT-448)/2)+200) //Y Position of Top Option Cursor in Battle Pause Menu
.int (((SCREEN_HEIGHT-448)/2)+240) //Y Position of Middle Option Cursor in Battle Pause Menu
.int (((SCREEN_HEIGHT-448)/2)+280) //Y Position of Bottom Option Cursor in Battle Pause Menu

.org 0x803D0810
.include "defines.inc"
.int ((SCREEN_HEIGHT-208)/3) //Spacing Between 3 Matches Player Standings

.org 0x803D0A08
.include "defines.inc"
.int (SCREEN_WIDTH-128) //X Position of Top-Right Curve on 3 Matches Screen

.org 0x803D0A20
.include "defines.inc"
.int (SCREEN_HEIGHT-78) //Y Position of Bottom Left Curve on 3-Matches Screen

.org 0x803D0A30
.include "defines.inc"
.int (SCREEN_WIDTH-128) //X Position of Bottom-Right Curve on 3 Matches Screen
.int (SCREEN_HEIGHT-78) //Y Position of Bottom Right Curve on 3-Matches Screen

.org 0x803D45F4
.include "defines.inc"
.int (((SCREEN_HEIGHT-448)/2)+220) //Y Position of Cursor for Screen Rotation Option
.int (SCREEN_HEIGHT-152) //Y Position of Cursor for Rumble Feature Option

.org 0x803D4600
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+319) //X Position of Options Text

.org 0x803D4658
.include "defines.inc"
.int (SCREEN_WIDTH-180) //X Position of Mono Text Option

.org 0x803D4684
.include "defines.inc"
.int (SCREEN_WIDTH-184) //X Position of Stereo Text Option

.org 0x803D46B4
.include "defines.inc"
.int (((SCREEN_HEIGHT-448)/2)+220) //Y Position of Screen Rotation Option

.org 0x803D46DC
.include "defines.inc"
.int (SCREEN_WIDTH-180) //X Position of Standard Option
.int (((SCREEN_HEIGHT-448)/2)+220) //Y Position of Standard Option

.org 0x803D4708
.include "defines.inc"
.int (SCREEN_WIDTH-180) //X Position of Reverse Option
.int (((SCREEN_HEIGHT-448)/2)+220) //Y Position of Reverse Option

.org 0x803D4738
.include "defines.inc"
.int (SCREEN_HEIGHT-152) //Y Position of Rumble Feature Option

.org 0x803D4760
.include "defines.inc"
.int (SCREEN_WIDTH-210) //X Position of Yes Option
.int (SCREEN_HEIGHT-152) //Y Position of Yes Option

.org 0x803D478C
.include "defines.inc"
.int (SCREEN_WIDTH-206) //X Position of No Option
.int (SCREEN_HEIGHT-152) //Y Position of No Option

.org 0x803D47B8
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+285) //X Position of Return Button Icon
.int (SCREEN_HEIGHT-60) //Y Position of Return Button Icon

.org 0x803D47E4
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+353) //X Position of Return Text
.int (SCREEN_HEIGHT-50) //Y Position of Return Text

.org 0x803D4810
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+335) //X Position of Return Text
.int (SCREEN_HEIGHT-60) //Y Position of Return Text

.org 0x803D483C
.include "defines.inc"
.int (SCREEN_WIDTH-270) //X Position of Left Cursor for Mono Option
.int (SCREEN_WIDTH-93) //X Position of Right Cursor for Mono Option
.int (SCREEN_WIDTH-270) //X Position of Left Cursor for Stereo Option
.int (SCREEN_WIDTH-93) //X Position of Right Cursor for Stereo Option
.int (SCREEN_WIDTH-270) //X Position of Left Cursor for Reverse Option
.int (SCREEN_WIDTH-74) //X Position of Right Cursor for Reverse Option
.int (SCREEN_WIDTH-270) //X Position of Left Cursor for Stanard Option
.int (SCREEN_WIDTH-48) //X Position of Right Cursor for Stanard Option
.int (SCREEN_WIDTH-270) //X Position of Left Cursor for Yes Option
.int (SCREEN_WIDTH-145) //X Position of Right Cursor for Yes Option
.int (SCREEN_WIDTH-270) //X Position of Left Cursor for No Option
.int (SCREEN_WIDTH-152) //X Position of Right Cursor for No Option

.org 0x803DE2E0
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+192) //X Position of Select Player Box Left Corner

.org 0x803DE314
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+210) //X Position of Select Player Box Center Line

.org 0x803DE348
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+420) //X Position of Select Player Box Right Corner

.org 0x803DE37C
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+194) //X Position of Select Player Icon

.org 0x803DE3B0
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+462) //X Position of Select Player Right Arrow

.org 0x803DE4E8
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+358) //X Position of Select Box Left Corner
.int (SCREEN_HEIGHT-48) //Y Position of Select Box Left Corner

.org 0x803DE51C
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+374) //X Position of Select Box Center Line
.int (SCREEN_HEIGHT-48) //Y Position of Select Box Center Line

.org 0x803DE550
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+480) //X Position of Select Box Right Corner
.int (SCREEN_HEIGHT-48) //Y Position of Select Box Right Corner

.org 0x803DE584
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+402) //X Position of Select Icon in Box
.int (SCREEN_HEIGHT-41) //Y Position of Select Icon in Box

.org 0x803DE5B8
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+116) //X Position of Select Charabom Box Left Corner
.int (SCREEN_HEIGHT-48) //Y Position of Select Charabom Box Left Corner

.org 0x803DE5EC
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+132) //X Position of Select Charabom Box Center Line
.int (SCREEN_HEIGHT-48) //Y Position of Select Charabom Box Center Line

.org 0x803DE620
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+332) //X Position of Select Charabom Box Right Corner
.int (SCREEN_HEIGHT-48) //Y Position of Select Charabom Box Right Corner

.org 0x803DE654
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+157) //X Position of Select Charabom Icon in Box
.int (SCREEN_HEIGHT-41) //Y Position of Select Charabom Icon in Box

.org 0x803DE688
.include "defines.inc"
.int (SCREEN_WIDTH-120) //X Position of Top Arrow on Bomb Select

.org 0x803DE6BC
.include "defines.inc"
.int (SCREEN_WIDTH-120) //X Position of Bottom Arrow on Bomb Select

.org 0x803DE6F0
.include "defines.inc"
.int (((232-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of Left Arrow on Player Select
.int (((SCREEN_HEIGHT-448)/2)+196) //Y Position of Left Arrow on Player Select

.org 0x803DE724
.include "defines.inc"
.int (((390-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of Right Arrow on Player Select
.int (((SCREEN_HEIGHT-448)/2)+196) //Y Position of Right Arrow on Player Select

.org 0x803DE758
.include "defines.inc"
.int (SCREEN_WIDTH-120) //X Position of Fire Bomb Box

.org 0x803DE78C
.include "defines.inc"
.int (SCREEN_WIDTH-188) //X Position of Fire Bomb Question Icon

.org 0x803DE7C0
.include "defines.inc"
.int (SCREEN_WIDTH-190) //X Position of Fire Bomb Icon

.org 0x803DE7F4
.include "defines.inc"
.int (SCREEN_WIDTH-104) //X Position of Fire Bomb Question Name

.org 0x803DE828
.include "defines.inc"
.int (SCREEN_WIDTH-102) //X Position of Fire Bomb Name

.org 0x803DE85C
.include "defines.inc"
.int (SCREEN_WIDTH-68) //X Position of Alternate Fire Bomb Icon

.org 0x803DE890
.include "defines.inc"
.int (SCREEN_WIDTH-104) //X Position of Alternate Fire Bomb Name

.org 0x803DE8C4
.include "defines.inc"
.int (SCREEN_WIDTH-120) //X Position of Hurricane Bomb Box

.org 0x803DE8F8
.include "defines.inc"
.int (SCREEN_WIDTH-188) //X Position of Hurricane Bomb Question Icon

.org 0x803DE92C
.include "defines.inc"
.int (SCREEN_WIDTH-190) //X Position of Hurricane Bomb Icon

.org 0x803DE960
.include "defines.inc"
.int (SCREEN_WIDTH-104) //X Position of Hurricane Bomb Question Name

.org 0x803DE994
.include "defines.inc"
.int (SCREEN_WIDTH-102) //X Position of Hurricane Bomb Name

.org 0x803DE9C8
.include "defines.inc"
.int (SCREEN_WIDTH-68) //X Position of Alternate Hurricane Bomb Icon

.org 0x803DE9FC
.include "defines.inc"
.int (SCREEN_WIDTH-104) //X Position of Alternate Hurricane Bomb Name

.org 0x803DEA30
.include "defines.inc"
.int (SCREEN_WIDTH-120) //X Position of Aqua Bomb Box

.org 0x803DEA64
.include "defines.inc"
.int (SCREEN_WIDTH-188) //X Position of Aqua Bomb Question Icon

.org 0x803DEA98
.include "defines.inc"
.int (SCREEN_WIDTH-190) //X Position of Aqua Bomb Icon

.org 0x803DEACC
.include "defines.inc"
.int (SCREEN_WIDTH-104) //X Position of Aqua Bomb Question Name

.org 0x803DEB00
.include "defines.inc"
.int (SCREEN_WIDTH-102) //X Position of Aqua Bomb Name

.org 0x803DEB34
.include "defines.inc"
.int (SCREEN_WIDTH-68) //X Position of Alternate Aqua Bomb Icon

.org 0x803DEB68
.include "defines.inc"
.int (SCREEN_WIDTH-104) //X Position of Alternate Aqua Bomb Name

.org 0x803DEB9C
.include "defines.inc"
.int (SCREEN_WIDTH-120) //X Position of Ice Bomb Box

.org 0x803DEBD0
.include "defines.inc"
.int (SCREEN_WIDTH-188) //X Position of Ice Bomb Question Icon

.org 0x803DEC04
.include "defines.inc"
.int (SCREEN_WIDTH-190) //X Position of Ice Bomb Icon

.org 0x803DEC38
.include "defines.inc"
.int (SCREEN_WIDTH-104) //X Position of Ice Bomb Question Name

.org 0x803DEC6C
.include "defines.inc"
.int (SCREEN_WIDTH-102) //X Position of Ice Bomb Name

.org 0x803DECA0
.include "defines.inc"
.int (SCREEN_WIDTH-68) //X Position of Alternate Ice Bomb Icon

.org 0x803DECD4
.include "defines.inc"
.int (SCREEN_WIDTH-104) //X Position of Alternate Ice Bomb Name

.org 0x803DED08
.include "defines.inc"
.int (SCREEN_WIDTH-120) //X Position of Thunder Bomb Box

.org 0x803DED3C
.include "defines.inc"
.int (SCREEN_WIDTH-188) //X Position of Thunder Bomb Question Icon

.org 0x803DED70
.include "defines.inc"
.int (SCREEN_WIDTH-190) //X Position of Thunder Bomb Icon

.org 0x803DEDA4
.include "defines.inc"
.int (SCREEN_WIDTH-104) //X Position of Thunder Bomb Question Name

.org 0x803DEDD8
.include "defines.inc"
.int (SCREEN_WIDTH-102) //X Position of Thunder Bomb Name

.org 0x803DEE0C
.include "defines.inc"
.int (SCREEN_WIDTH-68) //X Position of Alternate Thunder Bomb Icon

.org 0x803DEE40
.include "defines.inc"
.int (SCREEN_WIDTH-104) //X Position of Alternate Thunder Bomb Name

.org 0x803DEFE8
.include "defines.inc"
.int (((SCREEN_WIDTH*256)/640)-2) //Width of Background Slices in Ingame Select

.org 0x803DEFF8
.include "defines.inc"
.int (((SCREEN_WIDTH*256)/640)-2) //Texture Size of Background Slices in Ingame Select

.org 0x803DF014
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+168) //X Position of Select Charabom Box Left Corner

.org 0x803DF048
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+186) //X Position of Select Charabom Box Center Line

.org 0x803DF07C
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+400) //X Position of Select Charabom Box Right Corner

.org 0x803DF0B0
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+174) //X Position of Select Charabom Text

.org 0x803DF0E4
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+146) //X Position of Select Charabom Left Arrow

.org 0x803DF118
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+208) //X Position of Select Charabom Lv Icon
.int (SCREEN_HEIGHT-198) //Y Position of Select Charabom Lv Icon

.org 0x803DF14C
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+256) //X Position of Select Charabom Level 1
.int (SCREEN_HEIGHT-198) //Y Position of Select Charabom Level 1

.org 0x803DF180
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+256) //X Position of Select Charabom Level 2
.int (SCREEN_HEIGHT-198) //Y Position of Select Charabom Level 2

.org 0x803DF1B4
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+256) //X Position of Select Charabom Level 3
.int (SCREEN_HEIGHT-198) //Y Position of Select Charabom Level 3

.org 0x803DF528
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+288) //X Position of Select Charabom Exp Box Intensity
.int (SCREEN_HEIGHT-204) //Y Position of Select Charabom Exp Box Intensity

.org 0x803DF55C
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+295) //X Position of Select Charabom Exp Rectangle
.int (SCREEN_HEIGHT-194) //Y Position of Select Charabom Exp Rectangle

.org 0x803DF590
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+288) //X Position of Select Charabom Exp Box
.int (SCREEN_HEIGHT-204) //Y Position of Select Charabom Exp Box

.org 0x803DF694
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+358) //X Position of Charabom Select Box Left Corner
.int (SCREEN_HEIGHT-48) //Y Position of Charabom Select Box Left Corner

.org 0x803DF6C8
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+374) //X Position of Charabom Select Box Center Line
.int (SCREEN_HEIGHT-48) //Y Position of Charabom Select Box Center Line

.org 0x803DF6FC
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+480) //X Position of Charabom Select Box Right Corner
.int (SCREEN_HEIGHT-48) //Y Position of Charabom Select Box Right Corner

.org 0x803DF730
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+402) //X Position of Charabom Select Text
.int (SCREEN_HEIGHT-41) //Y Position of Charabom Select Text

.org 0x803DF764
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+116) //X Position of Select Player Box Left Corner
.int (SCREEN_HEIGHT-48) //Y Position of Select Player Box Left Corner

.org 0x803DF798
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+132) //X Position of Select Player Box Center Line
.int (SCREEN_HEIGHT-48) //Y Position of Select Player Box Center Line

.org 0x803DF7CC
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+332) //X Position of Select Player Box Right Corner
.int (SCREEN_HEIGHT-48) //Y Position of Select Player Box Right Corner

.org 0x803DF800
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+157) //X Position of Select Player Icon in Box
.int (SCREEN_HEIGHT-41) //Y Position of Select Player Icon in Box

.org 0x803DF834
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Hidden Sharkun Icon 

.org 0x803DF868
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Non-Hidden Sharkun Icon 

.org 0x803DF89C
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Level 3 Sharkun Icon 

.org 0x803DF8D0
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Level 2 Sharkun Icon 

.org 0x803DF904
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Sharkun Icon Border

.org 0x803DF938
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Hidden Sparkun Icon 

.org 0x803DF96C
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Non-Hidden Sparkun Icon 

.org 0x803DF9A0
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Level 3 Sparkun Icon 

.org 0x803DF9D4
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Level 2 Sparkun Icon 

.org 0x803DFA08
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Sparkun Icon Border

.org 0x803DFA3C
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Hidden Kai-Man Icon 

.org 0x803DFA70
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Non-Hidden Kai-Man Icon 

.org 0x803DFAA4
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Level 3 Kai-Man Icon 

.org 0x803DFAD8
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Level 2 Kai-Man Icon 

.org 0x803DFB0C
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Kai-Man Icon Border

.org 0x803DFB40
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Hidden Pommy Icon 

.org 0x803DFB74
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Non-Hidden Pommy Icon 

.org 0x803DFBA8
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Level 3 Pommy Icon 

.org 0x803DFBDC
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Level 2 Pommy Icon 

.org 0x803DFC10
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Pommy Icon Border

.org 0x803DFC44
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Hidden Pox Icon 

.org 0x803DFC78
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Non-Hidden Pox Icon 

.org 0x803DFCAC
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Level 3 Pox Icon 

.org 0x803DFCE0
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Level 2 Pox Icon 

.org 0x803DFD14
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Pox Icon Border

.org 0x803DFD48
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Hidden P.Dragon Icon 

.org 0x803DFD7C
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Non-Hidden P.Dragon Icon 

.org 0x803DFDB0
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Level 3 P.Dragon Icon 

.org 0x803DFDE4
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Level 2 P.Dragon Icon 

.org 0x803DFE18
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of P.Dragon Icon Border

.org 0x803DFE4C
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Hidden Ceedrun Icon 

.org 0x803DFE80
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Non-Hidden Ceedrun Icon 

.org 0x803DFEB4
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Level 3 Ceedrun Icon 

.org 0x803DFEE8
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Level 2 Ceedrun Icon 

.org 0x803DFF1C
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Ceedrun Icon Border

.org 0x803DFF50
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Hidden Battra Icon 

.org 0x803DFF84
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Non-Hidden Battra Icon 

.org 0x803DFFB8
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Level 3 Battra Icon 

.org 0x803DFFEC
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Level 2 Battra Icon 

.org 0x803E0020
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Battra Icon Border

.org 0x803E0054
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Hidden Dorako Icon 

.org 0x803E0088
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Non-Hidden Dorako Icon 

.org 0x803E00BC
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Level 3 Dorako Icon 

.org 0x803E00F0
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Level 2 Dorako Icon 

.org 0x803E0124
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Dorako Icon Border

.org 0x803E0158
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Hidden Elfan Icon 

.org 0x803E018C
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Non-Hidden Elfan Icon 

.org 0x803E01C0
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Level 3 Elfan Icon 

.org 0x803E01F4
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Level 2 Elfan Icon 

.org 0x803E0228
.include "defines.inc"
.int (SCREEN_WIDTH-176) //X Position of Elfan Icon Border

.org 0x803E025C
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Hidden Toughguy Icon 

.org 0x803E0290
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Non-Hidden Toughguy Icon 

.org 0x803E02C4
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Level 3 Toughguy Icon 

.org 0x803E02F8
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Level 2 Toughguy Icon 

.org 0x803E032C
.include "defines.inc"
.int (SCREEN_WIDTH-112) //X Position of Toughguy Icon Border

.org 0x803E0360
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Hidden Yuono Icon 

.org 0x803E0394
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Non-Hidden Yuono Icon 

.org 0x803E03C8
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Level 3 Yuono Icon 

.org 0x803E03FC
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Level 2 Yuono Icon 

.org 0x803E0430
.include "defines.inc"
.int (SCREEN_WIDTH-48) //X Position of Yuono Icon Border

.org 0x803E9038
.include "defines.inc"
.int (((SCREEN_HEIGHT-448)/2)+200) //Y Position of Player 1 Icon
.int (((SCREEN_HEIGHT-448)/2)+270) //Y Position of Player 2 Icon
.int (((SCREEN_HEIGHT-448)/2)+340) //Y Position of Player 3 Icon
.int (((SCREEN_HEIGHT-448)/2)+410) //Y Position of Player 4 Icon

.org 0x803F4508
.include "defines.inc"
.short (((SCREEN_HEIGHT-448)/2)+300) //Spawn Time before Original Japanese Version Credits Text

.org 0x803F450C
.include "defines.inc"
.int (((SCREEN_HEIGHT-448)/2)+178) //Y Position of Original Japanese Version Credits Text

.org 0x803F4518
.include "defines.inc"
.int (((SCREEN_HEIGHT-448)/2)+234) //Y Position of Production Staff Credits Text

.org 0x803F4C70
.include "defines.inc"
.short (((SCREEN_HEIGHT-448)/4)+110) //Spawn Time before Produced by Hudson Text

.org 0x803F5F34
.include "defines.inc"
.int (((232-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of P1 Character Select
.int ((SCREEN_HEIGHT*92)/448) //Y Position of P1 Character Select

.org 0x803F5F40
.include "defines.inc"
.int (((344-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of P2 Character Select
.int ((SCREEN_HEIGHT*92)/448) //Y Position of P2 Character Select

.org 0x803F5F4C
.include "defines.inc"
.int (((456-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of P3 Character Select
.int ((SCREEN_HEIGHT*92)/448) //Y Position of P3 Character Select

.org 0x803F5F58
.include "defines.inc"
.int (((568-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of P4 Character Select
.int ((SCREEN_HEIGHT*92)/448) //Y Position of P4 Character Select

.org 0x803F5F64
.include "defines.inc"
.int (((224-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of Left 1vs3 Team Player
.int ((SCREEN_HEIGHT*112)/448) //Y Position of Left 1vs3 Team Player

.org 0x803F5F7C
.include "defines.inc"
.int (((224-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of P1 Team Character Select
.int ((SCREEN_HEIGHT*112)/448) //Y Position of P1 Team Character Select

.org 0x803F5F88
.include "defines.inc"
.int (((318-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of P2 Team Character Select
.int ((SCREEN_HEIGHT*72)/448) //Y Position of P2 Team Character Select

.org 0x803F5F94
.include "defines.inc"
.int (((488-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of P3 Team Character Select
.int ((SCREEN_HEIGHT*72)/448) //Y Position of P3 Team Character Select

.org 0x803F5FA0
.include "defines.inc"
.int (((576-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of P4 Team Character Select
.int ((SCREEN_HEIGHT*112)/448) //Y Position of P4 Team Character Select

.org 0x803F5FAC
.include "defines.inc"
.int (((224-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of P1 1vs3 Team Character Select
.int ((SCREEN_HEIGHT*112)/448) //Y Position of P1 1vs3 Team Character Select

.org 0x803F5FB8
.include "defines.inc"
.int (((296-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of P2 1vs3 Team Character Select
.int ((SCREEN_HEIGHT*72)/448) //Y Position of P2 1vs3 Team Character Select

.org 0x803F5FC4
.include "defines.inc"
.int (((368-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of P3 1vs3 Team Character Select
.int ((SCREEN_HEIGHT*112)/448) //Y Position of P3 1vs3 Team Character Select

.org 0x803F5FD0
.include "defines.inc"
.int (((432-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of P4 1vs3 Team Character Select
.int ((SCREEN_HEIGHT*112)/448) //Y Position of P4 1vs3 Team Character Select

.org 0x803F5FDC
.include "defines.inc"
.int (((504-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of P4 1vs3 Team Character Select
.int ((SCREEN_HEIGHT*72)/448) //Y Position of P4 1vs3 Team Character Select

.org 0x803F5FE8
.include "defines.inc"
.int (((576-320)*SCREEN_HEIGHT)/448)+(SCREEN_WIDTH/2) //X Position of Right Player 1vs3 Team Character Select
.int ((SCREEN_HEIGHT*112)/448) //Y Position of Right Player 1vs3 Team Character Select

.org 0x803FED9C
.include "defines.inc"
.int (SCREEN_WIDTH-279) //X Position of Large Structure in Upper-Right of Title Screen

.org 0x803FEDEC
.include "defines.inc"
.int (SCREEN_WIDTH+457) //Starting X Position of Bomberman Text in Game Logo

.org 0x803FEDF4
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+97) //Ending X Position of Bomberman Text in Game Logo

.org 0x803FEE18
.include "defines.inc"
.int (SCREEN_HEIGHT-281) //Starting Y Position of Charabom on Title Screen
.int (((SCREEN_WIDTH-640)/2)+167) //Ending X Position of Charabom on Title Screen
.int (SCREEN_HEIGHT-281) //Ending Y Position of Charabom on Title Screen

.org 0x803FEE3C
.include "defines.inc"
.int (SCREEN_WIDTH+394) //Starting X Position of Max on Title Screen
.int (SCREEN_HEIGHT-310) //Starting Y Position of Max on Title Screen

.org 0x803FEE48
.include "defines.inc"
.int (SCREEN_HEIGHT-310) //Ending Y Position of Max on Title Screen

.org 0x803FEE68
.include "defines.inc"
.int (SCREEN_HEIGHT-310) //Starting Y Position of Bomberman on Title Screen
.int (SCREEN_WIDTH-221) //Ending X Position of Bomberman on Title Screen
.int (SCREEN_HEIGHT-310) //Ending Y Position of Bomberman on Title Screen

.org 0x803FEEB4
.include "defines.inc"
.int (SCREEN_WIDTH+563) //Starting X Position of Jetters Text in Game Logo

.org 0x803FEEBC
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+203) //Ending X Position of Jetters Text in Game Logo

.org 0x803FEEDC
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+523) //Starting X Position of Feather Icon in Game Logo

.org 0x803FEEE4
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+523) //Ending X Position of Feather Icon in Game Logo

.org 0x803FEF04
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+97) //X Position of Static Game Logo

.org 0x803FEF2C
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+322) //X Position of Press Start Text on Title Screen
.int (SCREEN_HEIGHT-145) //Y Position of Press Start Text on Title Screen

.org 0x803FEF54
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+322) //X Position of Normal Game Text on Title Screen
.int (SCREEN_HEIGHT-186) //Y Position of Normal Game Text on Title Screen

.org 0x803FEF7C
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+322) //X Position of Battle Game Text on Title Screen
.int (SCREEN_HEIGHT-146) //Y Position of Battle Game Text on Title Screen

.org 0x803FEFA4
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+322) //X Position of Option Text on Title Screen
.int (SCREEN_HEIGHT-106) //Y Position of Option Text on Title Screen

.org 0x803FEFCC
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+322) //X Position of Bomber Mansion Text on Title Screen
.int (SCREEN_HEIGHT-66) //Y Position of Bomber Mansion Text on Title Screen

.org 0x803FEFF4
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+161) //X Position of Copyright Text on Title Screen
.int (SCREEN_HEIGHT-35) //Y Position of Copyright Text on Title Screen

.org 0x803FF01C
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+384) //X Position of Second Copyright Text on Title Screen
.int (SCREEN_HEIGHT-35) //Y Position of Second Copyright Text on Title Screen

.org 0x8049CEEA
.include "defines.inc"
.short (SCREEN_WIDTH-280) //Width of Select File Textbox

.org 0x8049CEF2
.include "defines.inc"
.short (SCREEN_WIDTH-280) //Width of Select File Textbox Border

.org 0x8049CF02
.include "defines.inc"
.short (((SCREEN_HEIGHT-448)/2)+156) //Y Position of File 2 Info
.short (SCREEN_HEIGHT-176) //Y Position of File 3 Info

.org 0x8049EE64
.include "defines.inc"
put_int_as_float(SCREEN_HEIGHT) //Viewport Height for Particles

.org 0x8049F1AC
.include "defines.inc"
write_aspect //Write Aspect Ratio for Game

.org 0x8049F48C
.include "defines.inc"
put_int_as_float(SCREEN_WIDTH/2) //X Position of Bomb Select Icons
put_int_as_float(((SCREEN_HEIGHT-448)/2)+250) //Y Position of Bomb Select Icons

.org 0x8049F4F4
.include "defines.inc"
float_sub(SCREEN_HEIGHT, 68) //Y Position of Stat Icons

.org 0x8049F4FC
.include "defines.inc"
float_sub(SCREEN_HEIGHT, 56) //Y Position of Stat Count

.org 0x8049F514
.include "defines.inc"
float_sub(SCREEN_HEIGHT, 44) //Y Position of LV Icon in Charabom UI

.org 0x8049F524
.include "defines.inc"
float_sub(SCREEN_WIDTH, 158) //X Position of Player Hearts

.org 0x804A0808
.include "defines.inc"
write_aspect //Write Aspect Ratio for Battle

.org 0x804A162C
.include "defines.inc"
put_int_as_float(((SCREEN_HEIGHT-448)/2)+224) //Center Y Position of You Failed Text

.org 0x804A1654
.include "defines.inc"
put_int_as_float(((SCREEN_HEIGHT-448)/2)+230) //Starting Y Position of Get Ready Text

.org 0x804A17C8
.include "defines.inc"
put_int_as_float((((SCREEN_WIDTH-640)/2)+244)) //Two-Option X Position of Next Option Stage Select
put_int_as_float((SCREEN_HEIGHT-45)) //Y Position of Bottom Options on Stage Select
put_int_as_float((((SCREEN_WIDTH-640)/2)+396)) //Two-Option X Position of Title Option Stage Select
put_int_as_float((((SCREEN_WIDTH-640)/2)+164)) //Three-Option X Position of Next Option Stage Select
put_int_as_float((((SCREEN_WIDTH-640)/2)+316)) //Three-Option X Position of Back Option Stage Select
put_int_as_float((((SCREEN_WIDTH-640)/2)+476)) //Three-Option X Position of Title Option Stage Select
put_int_as_float((((SCREEN_WIDTH-640)/2)+320)) //Two-Option X Position of Back Option Stage Select
put_int_as_float((SCREEN_HEIGHT+35)) //Y Position of Two-Option Back Option on Stage Select

.org 0x804A1808
.include "defines.inc"
write_aspect //Write Aspect Ratio for Stage Select

.org 0x804A1818
.include "defines.inc"
put_int_as_float((((SCREEN_WIDTH-640)/2)+320)) //X Position of World Select Text

.org 0x804A1820
.include "defines.inc"
put_int_as_float((((SCREEN_WIDTH-640)/2)+218)) //X Position of New Course Name Text

.org 0x804A1824
.include "defines.inc"
put_int_as_float((SCREEN_HEIGHT-97)) //Y Position of New World Name Text
put_int_as_float((((SCREEN_WIDTH-640)/2)+455)) //X Position of Gotten Item Icons

.org 0x804A182C
.include "defines.inc"
put_int_as_float(((SCREEN_HEIGHT-448)/2)+196) //Y Position of Level Icon

.org 0x804A1830
.include "defines.inc"
put_int_as_float((((SCREEN_WIDTH-640)/2)+323)) //X Position of New World Name Text

.org 0x804A1838
.include "defines.inc"
put_int_as_float(SCREEN_WIDTH) //Width of Stage Select Dark Filter
put_int_as_float(SCREEN_HEIGHT/2) //Height of Stage Select Dark Filter Halves
put_int_as_float(SCREEN_HEIGHT) //Bottom of Stage Select Dark Filter

.org 0x804A2268
.include "defines.inc"
write_aspect //Write Aspect Ratio for Battle Victory Screen

.org 0x804A28E8
.include "defines.inc"
write_aspect //Write Aspect Ratio for Options Screen

.org 0x804A2F0C
.include "defines.inc"
write_aspect //Write Aspect Ratio for Autosave Screen

.org 0x804A2FA8
.include "defines.inc"
write_aspect //Write Aspect Ratio for Save Select Screen

.org 0x804A3CF0
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+224) //X Position of Yes Cursor in Battles
.int (((SCREEN_WIDTH-640)/2)+326) //X Position of No Cursor in Battles

.org 0x804A3FD8
.include "defines.inc"
write_aspect //Write Aspect Ratio for Minigames

.org 0x804A3FE4
.include "defines.inc"
put_int_as_float(SCREEN_WIDTH) //Width of Minigame Screen Fadeouts
put_int_as_float(SCREEN_HEIGHT/2) //Center Height of Minigame Screen Fadeouts
put_int_as_float(SCREEN_HEIGHT) //Height of Minigame Screen Fadeouts

.org 0x804A434C
.include "defines.inc"
put_int_as_float(SCREEN_HEIGHT) //Texcoord Y Scale of Distorted Boss Flames

.org 0x804A4368
.include "defines.inc"
put_int_as_float(SCREEN_WIDTH) //Texcoord X Scale of Distorted Boss Flames

.org 0x804A44BC
.include "defines.inc"
put_int_as_float(SCREEN_HEIGHT) //Y Position Scale of Bomber Mansion Enemy Score

.org 0x804A4530
.include "defines.inc"
.int (((SCREEN_HEIGHT-448)/2)+210) //Y Position of Cursor for Continue Game Option
.int (((SCREEN_HEIGHT-448)/2)+242) //Y Position of Cursor for Return to Title Option

.org 0x804A4540
.include "defines.inc"
.int (((SCREEN_WIDTH-640)/2)+224) //X Position of Horizontal Cursor for Yes Option
.int (((SCREEN_WIDTH-640)/2)+320) //X Position of Horizontal Cursor for No Option

.org 0x804A45D4
.include "defines.inc"
put_int_as_float((445*(((-21892*SCREEN_WIDTH)/100)/SCREEN_HEIGHT))/1000) //X Position of Bomberman on Bomber Mansion End Screen

.org 0x804A45E8
.include "defines.inc"
write_aspect //Write Aspect Ratio for Bomber Mansion End Screen

.org 0x804A46F8
.include "defines.inc"
write_aspect //Write Aspect Ratio for Bomber Mansion

.org 0x804A4974
.include "defines.inc"
write_aspect //Write Aspect Ratio for Memory Card Autoload Screen

.org 0x804A4A84
.include "defines.inc"
write_aspect //Write Aspect Ratio for Staff Roll

.org 0x804A4D10
.include "defines.inc"
write_aspect //Write Aspect Ratio for Battle Rule Select Screen

.org 0x804A4D70
.include "defines.inc"
put_int_as_float((((SCREEN_WIDTH-640)/2)+445)) //Start X Position of Orbiting Logo Light

.org 0x804A4D78
.include "defines.inc"
put_int_as_float((((SCREEN_WIDTH-640)/2)+134)) //Rise End X Position of Orbiting Logo Light

.org 0x804A4D88
.include "defines.inc"
put_int_as_float((((SCREEN_WIDTH-640)/2)+210)) //Fall End X Position of Orbiting Logo Light

.org 0x804A4D90
.include "defines.inc"
put_int_as_float((((SCREEN_WIDTH-640)/2)+485)) //End X Position of Orbiting Logo Light

.close
