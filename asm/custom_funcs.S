.open "root/&&systemdata/Start.dol"

.org 0x800036AC
.include "defines.inc"
.global scale_viewport_get
scale_viewport_get:
lis r9, view_width@ha //Upper Half of View Size Table
lfs f0, view_width@l(r9) //Get View Width for Scaling Viewport
lfs f4, -0x6860(r2) //Get Base View Width for Scaling Viewport
fdivs f0, f0, f4 //Calculate Viewport X Scale
lfs f4, 0(r3) //Get Viewport X Position
fmuls f4, f0, f4 //Scale Viewport X Position
stfs f4, 0(r3) //Update Viewport X Position
lfs f4, 8(r3) //Get Viewport Width
fmuls f4, f0, f4 //Scale Viewport Width
stfs f4, 8(r3) //Update Viewport Width
lfs f0, view_height@l(r9) //Get View Height for Scaling View
lfs f4, -0x5ADC(r2) //Get Base View Height for Scaling View
fdivs f0, f0, f4 //Calculate View Y Scale
lfs f4, 4(r3) //Get Viewport Y Position
fmuls f4, f0, f4 //Scale Viewport Y Position
stfs f4, 4(r3) //Update Viewport Y Position
lfs f4, 12(r3) //Get Viewport Height
fmuls f4, f0, f4 //Scale Viewport Height
stfs f4, 12(r3) //Update Viewport Height
blr //Return to Game
view_width:
put_int_as_float(SCREEN_WIDTH) //Screen Width as Float
view_height:
put_int_as_float(SCREEN_HEIGHT) //Screen Height as Float
.global fix_textbox
fix_textbox:
li r0, 19 //Tile Width of Textboxes Ingame
addi r7, r7, (SCREEN_HEIGHT-448) //Y Offset of Textboxes Ingame
b 0x8015F80C //Return Back to Game
.global fix_cursor
fix_cursor:
addi r6, r6, (SCREEN_HEIGHT-448) //Bottom Align Cursor Spot
stw r5, 0x148(r3) //Update Cursor Spot X Position
b 0x80160428 //Return Back to Game
.global fix_title_background
fix_title_background:
li r30, SCREEN_WIDTH //Width of Title Screen Background
stw r30, 0x14(r31) //Set Width of Title Screen Background
li r30, SCREEN_HEIGHT //Height of Title Screen Background
stw r30, 0x18(r31) //Set Height of Title Screen Background
li r30, 0 //Run Replaced Instruction
b 0x802D4F44 //Return Back to Game
.global fix_mansion_bg_right
fix_mansion_bg_right:
li r8, (SCREEN_WIDTH/2) //X Position of Right Half of Bomber Mansion Background
li r21, 320 //Texture Width of Right Half of Bomber Mansion Background
li r12, 512 //Texture Height of Right Half of Bomber Mansion Background
b 0x80294050 //Return Back to Game
.global fix_mansion_bg_left_height
fix_mansion_bg_left_height:
li r8, 512 //Texture Height of Left Half of Bomber Mansion Background
stw r8, 0x1C(sp) //Set Texture Height of Left Half of Bomber Mansion Background
b 0x80293FE4 //Return Back to Game
.global fix_debug_text_pos
fix_debug_text_pos:
mulli r4, r4, SCREEN_WIDTH //Upscale Debug Text X Position
mulli r5, r5, SCREEN_HEIGHT //Upscale Debug Text Y Position
li r9, 640 //Base Debug Text Position X Resolution
divw r4, r4, r9 //Downscale Debug Text X Position
li r9, 480 //Base Debug Text Position Y Resolution
divw r5, r5, r9 //Downscale Debug Text Y Position
li r9, 0 //Run Replaced Instruction
b 0x8002E3FC //Return Back to Game
.global fix_hudson_stop
fix_hudson_stop:
addis r4, r4, (SCREEN_HEIGHT*2048)@ha //Add High Half of Hudson Text Stop Point
addi r0, r4, (SCREEN_HEIGHT*2048)@l //Add Low Half of Hudson Stop Point
b 0x802ACFC8 //Return Back to Game
.global fix_credits_invisiblity
fix_credits_invisiblity:
lis r5, (SCREEN_HEIGHT*4096)@ha //High Half of Max Render Height of Credits Text
addi r0, r5, (SCREEN_HEIGHT*4096)@l //Low Half of Max Render Height of Credits Text
b 0x802AD134 //Return Back to Game
.global fix_mountain
fix_mountain:
lwz r0, 0(r6) //Get ARAM Graphic ID
cmpwi r0, 724 //Check for Mountain ARAM Graphic ID
bne skip_fill //Only Copy Last Two Columns for Mountain ARAM
li r4, 0 //Row Counter for Column Copy
loop:
rlwinm r7, r4, 7, 0, 24 //Get Offset for Mountain ARAM Graphic
addi r7, r7, 128 //Offset of Mountain ARAM Graphic from File Start
add r7, r5, r7 //Get Address of Row of Mountain ARAM Graphic
lbz r0, 126(r7) //Get Second to Last Column of Mountain ARAM Graphic
stb r0, 127(r7) //Update Last Last Column of Mountain ARAM Graphic
addi r4, r4, 1 //Update Row Counter
cmpwi r4, 128 //Check for Last Row
bne loop //Loop Through Rows
skip_fill:
lwz r4, 0xA4(r6) //Get ARAM Offset of Mountain Graphic
b 0x80204068 //Return to Game
.global fix_mountain_slice_texcoord
fix_mountain_slice_texcoord:
stw r3, 0(r29) //Update Mountain Slice Vertex Coordinate
stw r3, 0x10(r29) //Update Mountain Slice Texture Coordinate
b 0x80206D24 //Return to Game
.global fix_bomber_mansion_stat_height
fix_bomber_mansion_stat_height:
li r12, ((SCREEN_HEIGHT*512)/448) //Height of Bomber Mansion Stat Texture
stw r12, 0x8(sp) //Set Height of Bomber Mansion Stat Texture
li r12, 512 //Texture Height of Bomber Mansion Stat Texture
blr //Return to Caller
.global fix_bomber_mansion_left_stat_height
fix_bomber_mansion_left_stat_height:
li r10, ((SCREEN_HEIGHT*512)/448) //Height of Bomber Mansion Stat Texture
stw r10, 0x8(sp) //Set Height of Bomber Mansion Stat Texture
li r10, 512 //Texture Height of Bomber Mansion Stat Texture
b 0x80290F48 //Return to Caller
.global fix_stat_velocity
fix_stat_velocity:
mulli r3, r3, SCREEN_WIDTH //Upscale Bomber Mansion Stat Velocity
li r12, 640 //Bomber Mansion Stat Velocity Base Width
divw r3, r3, r12 //Downscale Bomber Mansion Stat Velocity
lwz r0, 0x1C(r29) //Get Bomber Mansion Stat Position
b 0x802926E8

.close
