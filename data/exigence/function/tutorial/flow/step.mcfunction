# Initiate the next step, based on current step

## CONSTRAINTS
#   IN exigence:tutorial

#=============================================================================================================

execute unless entity @a[distance=..1000,tag=Tutorial] run say Called tutorial.step without in exigence:tutorial, cancelling
execute unless entity @a[distance=..1000,tag=Tutorial] run return 1

scoreboard players add Step Tutorial 1

# Playsound click
execute at @a[distance=..1000,tag=Tutorial] run playsound minecraft:ui.button.click ambient @s ~ ~1000 ~ 1000 1

execute if score Step Tutorial matches 1..103 run function exigence:tutorial/flow/next_token

# Set bossbar
execute if score Step Tutorial matches 1 run function exigence:tutorial/flow/reset_bossbars
execute if score Step Tutorial matches 1 as @a[tag=Tutorial] run playsound minecraft:ui.toast.in ambient @s ~ ~1000 ~ 1000 1

## INTRODUCTION 
execute if score Step Tutorial matches 1 run tellraw @a [{color:"green",text:"-> Welcome to the Tutorial Canyon!"}]
execute if score Step Tutorial matches 1 run bossbar set exigence:tutorial value 0

execute if score Step Tutorial matches 2 run tellraw @a [{color:"green",text:"\n-> Follow the Tutorial Tokens to learn how the dungeon operates."}]
execute if score Step Tutorial matches 2 run bossbar set exigence:tutorial value 1

execute if score Step Tutorial matches 3 run tellraw @a [{color:"green",text:"\n-> The text at the top of your screen lists your current objective, as well as your overall progress."}]
execute if score Step Tutorial matches 3 run function exigence:tutorial/utility/flashing_bossbar_a {final_text:"Follow the Tutorial Tokens",text:">>> Follow the Tutorial Tokens <<<",color0:"green",color1:"white",active_color:0,interval:3,flashes:9}
execute if score Step Tutorial matches 3 run bossbar set exigence:tutorial value 2

execute if score Step Tutorial matches 4 run tellraw @a [{color:"green",text:"\n-> Throughout the dungeon, you will encounter various threats and dangers."}]
execute if score Step Tutorial matches 4 run bossbar set exigence:tutorial value 3

execute if score Step Tutorial matches 5 run tellraw @a [{color:"green",text:"\n-> The most common of these will be ravagers."}]
execute if score Step Tutorial matches 5 run bossbar set exigence:tutorial value 4

execute if score Step Tutorial matches 6 run tellraw @a [{color:"green",text:"\n-> They are deadly, but can be outmaneuvered with practice."}]
execute if score Step Tutorial matches 6 run fill 114 104 11 114 105 12 air
execute if score Step Tutorial matches 6 run fill 109 104 17 108 105 17 air
execute if score Step Tutorial matches 6 run function exigence:tutorial/setup/ravager/setup_loopy
execute if score Step Tutorial matches 6 run scoreboard players set Step Tutorial 101


#=============================================================================================================
## LOOPY
#=============================================================================================================

execute if score Step Tutorial matches 102 run tellraw @a [{color:"green",text:"\n-> Here's one now. It appears to be too tall to fit through the hole."}]

execute if score Step Tutorial matches 103 run effect clear @n[type=minecraft:ravager,tag=L10,name=Loopy] slowness
execute if score Step Tutorial matches 103 run function exigence:tutorial/utility/flashing_bossbar_a {final_text:"Get past the ravager",text:">>> Get past the ravager <<<",color0:"yellow",color1:"white",active_color:0,interval:3,flashes:9}
execute if score Step Tutorial matches 103 run bossbar set exigence:tutorial value 0
execute if score Step Tutorial matches 103 run tellraw @a [{color:"green",text:"\n-> See if you can find a way around the ravager."}]

execute if score Step Tutorial matches 104 run tellraw @a [{color:"green",text:"\n-> The exit is blocked! Distract the ravager while the door melts!"}]
execute if score Step Tutorial matches 104 run function exigence:tutorial/utility/flashing_bossbar_a {final_text:"!!! Survive for 5 seconds !!!",text:">>> !!! Survive for 5 seconds !!! <<<",color0:"red",color1:"yellow",active_color:0,interval:3,flashes:9}
execute if score Step Tutorial matches 104 run scoreboard players set Bossbar Tutorial 0
execute if score Step Tutorial matches 104 run fill 114 104 11 114 105 12 ice
execute if score Step Tutorial matches 104 run fill 109 104 17 108 105 17 ice
execute if score Step Tutorial matches 104 run function exigence:tutorial/flow/private/ravager_loop

execute if score Step Tutorial matches 105 run tellraw @a [{color:"green",text:"\n-> The exit is open, go go go!"}]
execute if score Step Tutorial matches 105 run function exigence:tutorial/utility/flashing_bossbar_a {final_text:"Get past the ravager",text:">>> Get past the ravager <<<",color0:"yellow",color1:"white",active_color:0,interval:3,flashes:9}
execute if score Step Tutorial matches 105 run bossbar set exigence:tutorial value 0
execute if score Step Tutorial matches 105 run fill 126 103 29 130 109 33 minecraft:structure_void replace ice destroy

execute if score Step Tutorial matches 105..201 run function exigence:tutorial/flow/next_token

#=============================================================================================================
## BERRIES
#=============================================================================================================

execute if score Step Tutorial matches 106 run kill @n[distance=..1000,type=minecraft:ravager,tag=L10,name=Loopy]
execute if score Step Tutorial matches 106 run function exigence:tutorial/flow/reset_bossbars
execute if score Step Tutorial matches 106 run tellraw @a [{color:"green",text:"\n-> Though you cannot fight them directly, many things can aid you in avoiding the ravagers."}]
execute if score Step Tutorial matches 106 run fill 126 103 29 130 109 33 ice replace structure_void

execute if score Step Tutorial matches 107 run tellraw @a [{color:"green",text:"\n-> Your Deck is your most powerful tool in the Dungeon."}]
execute if score Step Tutorial matches 107 run function exigence:tutorial/flow/reset_bossbars
execute if score Step Tutorial matches 107 run bossbar set exigence:tutorial_deck name [{text:"Deck (5",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌▌▌▌▌",color:"white",italic:false},{text:"",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score Step Tutorial matches 107 as @a[tag=Tutorial] run playsound minecraft:ui.toast.in ambient @s ~ ~1000 ~ 1000 1

execute if score Step Tutorial matches 108 run tellraw @a [{color:"green",text:"\n-> Every 30 seconds, a random card will automatically be drawn and played."}]
execute if score Step Tutorial matches 108 run scoreboard players set Step Tutorial 200

execute if score Step Tutorial matches 201 run tellraw @a [{color:"green",text:"\n-> Sounds like a card just played!"}]
execute if score Step Tutorial matches 201 run tellraw @a [{color:"white",text:"["},{color:"dark_aqua",text:"Green Thumb"},{color:"white",text:"] "},{color:"white",text:"+ Berry Bushes"}]
execute if score Step Tutorial matches 201 as @a[tag=Tutorial] run playsound minecraft:entity.lightning_bolt.thunder ambient @s ~ ~1000 ~ 1000 1
execute if score Step Tutorial matches 201 run bossbar set exigence:tutorial_deck name [{text:"Deck (4",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌▌▌▌",color:"white",italic:false},{text:"▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score Step Tutorial matches 201 run function exigence:tutorial/setup/grow_berries

execute if score Step Tutorial matches 202 run tellraw @a [{color:"green",text:"\n-> Dead bushes cannot grow berries. See if you can find some other bushes."}]
execute if score Step Tutorial matches 202 run function exigence:tutorial/utility/flashing_bossbar_a {final_text:"Pick 3 berry bushes",text:">>> Pick 3 berry bushes <<<",color0:"yellow",color1:"white",active_color:0,interval:3,flashes:9}
execute if score Step Tutorial matches 202 run bossbar set exigence:tutorial value 0

# Pick first
execute if score Step Tutorial matches 203 run tellraw @a [{color:"green",text:"\n-> Each bush has a random chance to be grown at the start of each run."}]
execute if score Step Tutorial matches 203 run bossbar set exigence:tutorial value 33

# Pick second
execute if score Step Tutorial matches 204 run tellraw @a [{color:"green",text:"\n-> Bushes do not grow back on their own, but playing 🍒 cards can regrow them."}]
execute if score Step Tutorial matches 204 run bossbar set exigence:tutorial value 66
# Pick third
execute if score Step Tutorial matches 205 run tellraw @a [{color:"green",text:"\n-> Picking berry bushes also gives ❂ Green, which is used to power certain cards."}]
execute if score Step Tutorial matches 205 run title @a[tag=Tutorial] subtitle [{text:"❂",color:"dark_green"}]
execute if score Step Tutorial matches 205 run title @a[tag=Tutorial] title [{text:""}]
execute if score Step Tutorial matches 205 as @a[tag=Tutorial] run playsound minecraft:ui.toast.in ambient @s ~ ~1000 ~ 1000 1
execute if score Step Tutorial matches 205 run fill 122 114 70 124 119 74 minecraft:structure_void replace ice destroy

execute if score Step Tutorial matches 205 run function exigence:tutorial/flow/reset_bossbars

execute if score Step Tutorial matches 205 run function exigence:tutorial/flow/next_token
execute if score Step Tutorial matches 205 run scoreboard players set Step Tutorial 300


#=============================================================================================================
## HAZARD + MENACE
#=============================================================================================================

execute if score Step Tutorial matches 301..308 run function exigence:tutorial/flow/next_token

execute if score Step Tutorial matches 301 run tellraw @a [{color:"green",text:"\n-> See that? That there is sculk."}]

execute if score Step Tutorial matches 302 run tellraw @a [{color:"green",text:"\n-> It is one of the many long arms of the Watchers."}]
execute if score Step Tutorial matches 303 run tellraw @a [{color:"green",text:"\n-> When sculk blocks a passage, it is called Hazard."}]
execute if score Step Tutorial matches 304 run tellraw @a [{color:"green",text:"\n-> Hazard can make traversing the dungeon more difficult."}]
execute if score Step Tutorial matches 305 run tellraw @a [{color:"green",text:"\n-> However, there is ALWAYS at least one path through."}]

execute if score Step Tutorial matches 306 run tellraw @a [{color:"green",text:"\n-> As you traverse the dungeon, you will generate Menace."}]
execute if score Step Tutorial matches 307 run tellraw @a [{color:"green",text:"\n-> Menace measures how aware the dungeon is of you."}]
execute if score Step Tutorial matches 308 run tellraw @a [{color:"green",text:"\n-> The more Menace, the faster the heart of the Watchers will beat."}]


execute if score Step Tutorial matches 309 run tellraw @a [{color:"green",text:"\n-> If you reach Max Menace, the Watchers become fully aware of you and there is no hiding."}]

execute if score Step Tutorial matches 310 run tellraw @a [{color:"green",text:"\n-> Hear that noise? The Watchers can sense your vibrations when you step on sculk."}]
execute if score Step Tutorial matches 310..311 run function exigence:tutorial/flow/next_token
execute if score Step Tutorial matches 311 run tellraw @a [{color:"green",text:"\n-> Stepping on sculk has a high chance of generating Menace."}]
execute if score Step Tutorial matches 311 run scoreboard players set Step Tutorial 315

#execute if score Step Tutorial matches 312 run tellraw @a [{color:"green",text:"\n-> Listen to the heartbeat as Menace increases by playing these samples."}]
#execute if score Step Tutorial matches 312 run bossbar set exigence:tutorial value 0
#execute if score Step Tutorial matches 312 run bossbar set exigence:tutorial name {text:"Listen to the heartbeat samples",color:"green",italic:false}
## Pushy buttons to play heartbeat sounds
#execute if score Step Tutorial matches 313 run bossbar set exigence:tutorial value 25
#execute if score Step Tutorial matches 314 run bossbar set exigence:tutorial value 50
#execute if score Step Tutorial matches 315 run bossbar set exigence:tutorial value 75


execute if score Step Tutorial matches 316 run tellraw @a [{color:"green",text:"\n-> Menace will also increase when you run out of cards, so the bigger your deck, the longer you can stay in the dungeon!"}]
execute if score Step Tutorial matches 316 run function exigence:tutorial/flow/reset_bossbars
execute if score Step Tutorial matches 316 run fill 92 122 85 88 128 90 structure_void replace ice destroy
execute if score Step Tutorial matches 316 run function exigence:tutorial/flow/next_token
execute if score Step Tutorial matches 316 run scoreboard players set Step Tutorial 400


#=============================================================================================================
## TREASURE TOWN
#=============================================================================================================

execute if score Step Tutorial matches 401..403 run function exigence:tutorial/flow/next_token

execute if score Step Tutorial matches 401 run tellraw @a [{color:"green",text:"\n-> The dungeon contains various treasures."}]

execute if score Step Tutorial matches 402 run tellraw @a [{color:"green",text:"\n-> Coins are the most common treasure drop."}]

execute if score Step Tutorial matches 403 run tellraw @a [{color:"green",text:"\n-> They are converted into Glint when you leave the dungeon. Glint is used to purchase items from the shop."}]
execute if score Step Tutorial matches 403 run scoreboard players set Step Tutorial 702

execute if score Step Tutorial matches 703 run tellraw @a [{color:"green",text:"\n-> See what you can find in this abandoned village."}]
execute if score Step Tutorial matches 703 as @e[distance=..1000,type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=10},tag=!EmberSpecial] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/node/coin/summon_coin"}
execute if score Step Tutorial matches 703 as @e[distance=..1000,type=minecraft:item,scores={ObjectLevel=10}] run tag @s add PreventItemDespawn
execute if score Step Tutorial matches 703 run function exigence:tutorial/utility/flashing_bossbar_a {final_text:"Collect 5 coins",text:">>> Collect 5 coins <<<",color0:"yellow",color1:"white",active_color:0,interval:3,flashes:9}
execute if score Step Tutorial matches 703 run bossbar set exigence:tutorial value 0

execute if score Step Tutorial matches 704 run tellraw @a [{color:"green",text:"\n-> Coins naturally spawn over time in the dungeon."}]
execute if score Step Tutorial matches 704 run bossbar set exigence:tutorial value 20

execute if score Step Tutorial matches 705 run tellraw @a [{color:"green",text:"\n-> They can be found in every knook and cranny..."}]
execute if score Step Tutorial matches 705 run bossbar set exigence:tutorial value 40

execute if score Step Tutorial matches 706 run tellraw @a [{color:"green",text:"\n-> ...but they will always be somewhere accessible."}]
execute if score Step Tutorial matches 706 run bossbar set exigence:tutorial value 60

execute if score Step Tutorial matches 707 run tellraw @a [{color:"green",text:"\n-> Cards can be played to drop additional treasure."}]
execute if score Step Tutorial matches 707 run bossbar set exigence:tutorial value 80
execute if score Step Tutorial matches 707 run scoreboard players set Step Tutorial 800


## EMBERS
execute if score Step Tutorial matches 801 run kill @e[distance=..1000,type=minecraft:item,tag=Coin]
execute if score Step Tutorial matches 801 run tellraw @a [{color:"green",text:"\n-> Sounds like a card just spawned some Ancient Embers."}]
execute if score Step Tutorial matches 801 run tellraw @a [{color:"white",text:"["},{color:"dark_aqua",text:"Ember Seeker"},{color:"white",text:"] "},{color:"white",text:"+ Ancient Embers"}]
execute if score Step Tutorial matches 801 run bossbar set exigence:tutorial_deck name [{text:"Deck (3",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌▌▌",color:"white",italic:false},{text:"▌▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score Step Tutorial matches 801 as @a[tag=Tutorial] run playsound minecraft:entity.lightning_bolt.thunder ambient @s ~ ~1000 ~ 1000 1
execute if score Step Tutorial matches 801 run bossbar set exigence:tutorial value 0
execute if score Step Tutorial matches 801 run function exigence:tutorial/utility/flashing_bossbar_a {final_text:"Collect 3 embers",text:">>> Collect 3 embers <<<",color0:"yellow",color1:"white",active_color:0,interval:3,flashes:9}
execute if score Step Tutorial matches 801 run execute as @e[distance=..1000,type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=10},tag=EmberSpecial] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:ember/summon_ember"}
execute if score Step Tutorial matches 801 run execute as @e[distance=..1000,type=minecraft:item,scores={ObjectLevel=10}] run tag @s add PreventItemDespawn

execute if score Step Tutorial matches 802 run tellraw @a [{color:"green",text:"\n-> Unlike coins, Embers only spawn from cards and around Echo Shards."}]
execute if score Step Tutorial matches 802 run bossbar set exigence:tutorial value 33

execute if score Step Tutorial matches 803 run tellraw @a [{color:"green",text:"\n-> Embers can be spent purchasing cards after the run."}]
execute if score Step Tutorial matches 803 run bossbar set exigence:tutorial value 66
execute if score Step Tutorial matches 803 run scoreboard players set Step Tutorial 900

## RESEARCH SHERDS
execute if score Step Tutorial matches 901 run execute at @e[distance=..1000,type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=10},tag=EmberSpecial] run kill @e[distance=..2,type=minecraft:item,tag=Ember]
execute if score Step Tutorial matches 901 run tellraw @a [{color:"green",text:"\n-> The final common dungeon drop is the Research Fragment."}]
execute if score Step Tutorial matches 901 run bossbar set exigence:tutorial value 0
execute if score Step Tutorial matches 901 run function exigence:tutorial/utility/flashing_bossbar_a {final_text:"Collect 1 fragment",text:">>> Collect 1 fragment <<<",color0:"yellow",color1:"white",active_color:0,interval:3,flashes:9}
execute if score Step Tutorial matches 901 run execute at @a[distance=..1000,tag=Tutorial] as @e[distance=5..1000,type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=10},limit=2,sort=random] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}
execute if score Step Tutorial matches 901 run execute as @e[distance=..1000,type=minecraft:item,scores={ObjectLevel=10}] run tag @s add PreventItemDespawn

execute if score Step Tutorial matches 902 run tellraw @a [{color:"green",text:"\n-> Fragments are used to unlock new items in the shop."}]
execute if score Step Tutorial matches 902 run function exigence:tutorial/flow/reset_bossbars
execute if score Step Tutorial matches 902 run kill @e[distance=..1000,type=minecraft:item,tag=Sherd]
execute if score Step Tutorial matches 902 run fill 84 122 134 79 127 139 structure_void replace ice destroy
execute if score Step Tutorial matches 902 run scoreboard players set Step Tutorial 1000

execute if score Step Tutorial matches 1000 run function exigence:tutorial/flow/next_token

#=============================================================================================================
## ALTAR
#=============================================================================================================

execute if score Step Tutorial matches 1001 run tellraw @a [{color:"green",text:"\n-> Watch your step!"}]
execute if score Step Tutorial matches 1001 run function exigence:tutorial/flow/next_token

execute if score Step Tutorial matches 1002 run tellraw @a [{color:"green",text:"\n-> Up ahead is an old altar. Rekindle it by right clicking."}]
execute if score Step Tutorial matches 1002 run execute as @e[distance=..1000,type=minecraft:armor_stand,tag=AltarNode,scores={ObjectLevel=10}] run function exigence:altar/node/activate
execute if score Step Tutorial matches 1002 run function exigence:tutorial/utility/flashing_bossbar_a {final_text:"Light the altar",text:">>> Light the altar <<<",color0:"yellow",color1:"white",active_color:0,interval:3,flashes:9}
execute if score Step Tutorial matches 1002 run bossbar set exigence:tutorial value 0

execute if score Step Tutorial matches 1003 run tellraw @a [{color:"green",text:"\n-> Now Enhance the altar by lighting it with an Ember."}]
execute if score Step Tutorial matches 1003 run function exigence:tutorial/utility/flashing_bossbar_a {final_text:"Enhance the altar",text:">>> Enhance the altar <<<",color0:"yellow",color1:"white",active_color:0,interval:3,flashes:9}
execute if score Step Tutorial matches 1003 as @a[distance=..1000,tag=Tutorial] run function exigence:tutorial/flow/private/force_ember
execute if score Step Tutorial matches 1003 run title @a[tag=Tutorial] subtitle [{text:"❂",color:"aqua"}]
execute if score Step Tutorial matches 1003 run title @a[tag=Tutorial] title [{text:""}]

execute if score Step Tutorial matches 1004 run tellraw @a [{color:"green",text:"\n-> Lighting or Enhacing altars reduces Menace by 1, as well as giving ❂ Aqua."}]
execute if score Step Tutorial matches 1004 run title @a[tag=Tutorial] subtitle [{text:"❂",color:"aqua"}]
execute if score Step Tutorial matches 1004 run title @a[tag=Tutorial] title [{text:""}]
execute if score Step Tutorial matches 1004 run function exigence:tutorial/flow/reset_bossbars
execute if score Step Tutorial matches 1004 run fill 107 125 157 112 131 153 structure_void replace ice destroy
execute if score Step Tutorial matches 1004 run function exigence:tutorial/flow/next_token
execute if score Step Tutorial matches 1004 run scoreboard players set Step Tutorial 1100

#=============================================================================================================
## BEAST SENSE / STEP HEIGHT
#=============================================================================================================

execute if score Step Tutorial matches 1101 run tellraw @a [{color:"green",text:"\n-> Some cards require ❂ Resources to play."}]

execute if score Step Tutorial matches 1101..1102 run function exigence:tutorial/flow/next_token

execute if score Step Tutorial matches 1102 run tellraw @a [{color:"green",text:"\n-> Beast Sense reveals nearby ravagers."}]
execute if score Step Tutorial matches 1102 run tellraw @a [{color:"white",text:"["},{color:"dark_aqua",text:"Beast Sense"},{color:"white",text:"] "},{color:"white",text:"1 Green: + Beast Sense"}]
execute if score Step Tutorial matches 1102 run bossbar set exigence:tutorial_deck name [{text:"Deck (2",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌▌",color:"white",italic:false},{text:"▌▌▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score Step Tutorial matches 1102 as @a[tag=Tutorial] run playsound minecraft:entity.lightning_bolt.thunder ambient @s ~ ~1000 ~ 1000 1
execute if score Step Tutorial matches 1102 run title @a[tag=Tutorial] subtitle [{text:"✔",color:"dark_green"}]
execute if score Step Tutorial matches 1102 run title @a[tag=Tutorial] title [{text:""}]
execute if score Step Tutorial matches 1102 run function exigence:tutorial/setup/ravager/setup_climby
execute if score Step Tutorial matches 1102 run summon armor_stand 124.50 128.00 126.5 {ShowArms:true,Rotation:[45,0],Tags:["Bait1"]}
#execute if score Step Tutorial matches 1102 run summon villager 124.50 128.00 126.5 {NoAI:true,Tags:["Bait1"]}
execute if score Step Tutorial matches 1102 run effect give @a[distance=..1000,tag=Tutorial] luck infinite 0

execute if score Step Tutorial matches 1103 run tellraw @a [{color:"green",text:"\n-> Ravagers may be slower than you, but they can climb up 2 block high steps."}]
execute if score Step Tutorial matches 1103 as @n[distance=..1000,type=armor_stand,tag=Bait1] run item replace entity @s weapon.mainhand with minecraft:beef
execute if score Step Tutorial matches 1103 as @n[distance=..1000,type=ravager,name=Climby] at @s run damage @s 0.0 arrow by @n[distance=..100,type=armor_stand,tag=Bait1]
execute if score Step Tutorial matches 1103 run effect clear @n[type=minecraft:ravager,tag=L10,name=Climby] slowness
# Emergency clock, but otherwise we use Tick to open door as soon as Climby is next to the Bait1
execute if score Step Tutorial matches 1103 run schedule function exigence:tutorial/flow/private/open_climby_door 200t

execute if score Step Tutorial matches 1104 run function exigence:tutorial/flow/next_token
execute if score Step Tutorial matches 1104 run scoreboard players set Step Tutorial 1200

#=============================================================================================================
## BELL / VARIANCE
#=============================================================================================================
execute if score Step Tutorial matches 1201 run tellraw @a [{color:"green",text:"\n-> The third and final ❂ resource is Red."}]
execute if score Step Tutorial matches 1201 run kill @n[distance=..1000,type=ravager,name=Climby]
execute if score Step Tutorial matches 1201 run kill @n[distance=..1000,type=armor_stand,name=Bait1]
execute if score Step Tutorial matches 1201 run function exigence:tutorial/flow/next_token
execute if score Step Tutorial matches 1201 run effect clear @a[tag=Tutorial] luck

execute if score Step Tutorial matches 1202 run tellraw @a [{color:"green",text:"\n-> Ringing bells gives 1 Red, but has a 2/3 chance to trigger a Hazard."}]
execute if score Step Tutorial matches 1202 run function exigence:tutorial/utility/flashing_bossbar_a {final_text:"Ring the bell",text:">>> Ring the bell <<<",color0:"yellow",color1:"white",active_color:0,interval:3,flashes:9}
execute if score Step Tutorial matches 1202 run bossbar set exigence:tutorial value 0

# Ring the bell
execute if score Step Tutorial matches 1203 run tellraw @a [{color:"green",text:"\n-> Placeholder to explain how bells respawn/move after ringing them."}]
execute if score Step Tutorial matches 1203 run title @a[tag=Tutorial] subtitle [{text:"❂",color:"dark_red"}]
execute if score Step Tutorial matches 1203 run title @a[tag=Tutorial] title [{text:""}]
execute if score Step Tutorial matches 1203 run function exigence:tutorial/flow/reset_bossbars
execute if score Step Tutorial matches 1203 run fill 152 126 141 152 130 147 sculk
execute if score Step Tutorial matches 1203..1206 run function exigence:tutorial/flow/next_token

# Infront of the blocked passage
execute if score Step Tutorial matches 1204 run tellraw @a [{color:"green",text:"\n-> Looks like the passage ahead got blocked. You'll have to find another way."}]
execute if score Step Tutorial matches 1204 run fill 136 126 140 137 126 142 structure_void replace ice destroy

# Under the ice
execute if score Step Tutorial matches 1205 run tellraw @a [{color:"green",text:"\n-> Keep an eye out for shortcuts and other small changes in the dungeon. These are called variances, and are randomized each run."}]

# Out of ice
execute if score Step Tutorial matches 1206 run tellraw @a [{color:"green",text:"\n-> The most common indicators of a Variance are cracked bricks and blue ice."}]
execute if score Step Tutorial matches 1206 run fill 142 126 121 146 131 118 structure_void replace ice destroy
execute if score Step Tutorial matches 1206 run scoreboard players set Step Tutorial 1300

#=============================================================================================================
## JUMP BOOST / RAVAGER GLASS
#=============================================================================================================
execute if score Step Tutorial matches 1301 run tellraw @a [{color:"green",text:"\n-> Some shortcuts require Jump Boost."}]
execute if score Step Tutorial matches 1301..1304 run function exigence:tutorial/flow/next_token

execute if score Step Tutorial matches 1302 run tellraw @a [{color:"green",text:"\n-> Use your Jump Boost to take this shortcut."}]
execute if score Step Tutorial matches 1302 run tellraw @a [{color:"white",text:"["},{color:"green",text:"Quick Leap"},{color:"white",text:"] "},{color:"white",text:"1 Red: + Jump Boost II"}]
execute if score Step Tutorial matches 1302 run bossbar set exigence:tutorial_deck name [{text:"Deck (1",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌",color:"white",italic:false},{text:"▌▌▌▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score Step Tutorial matches 1302 run title @a[tag=Tutorial] subtitle [{text:"✔",color:"dark_red"}]
execute if score Step Tutorial matches 1302 run title @a[tag=Tutorial] title [{text:""}]
execute if score Step Tutorial matches 1302 as @a[tag=Tutorial] run playsound minecraft:entity.lightning_bolt.thunder ambient @s ~ ~1000 ~ 1000 1
execute if score Step Tutorial matches 1302 run effect give @a[distance=..1000,tag=Tutorial] jump_boost infinite 1
execute if score Step Tutorial matches 1302 run fill 136 126 140 137 126 142 ice replace structure_void

execute if score Step Tutorial matches 1303 run tellraw @a [{color:"green",text:"\n-> There is one final aspect of the dungeon to learn about: Ravager Glass™"}]
execute if score Step Tutorial matches 1303 run effect clear @a[tag=Tutorial] jump_boost
execute if score Step Tutorial matches 1303 run setblock 157 128 112 stone_bricks

execute if score Step Tutorial matches 1304 run tellraw @a [{color:"green",text:"\n-> It is designed to withstand heavy loads..."}]
execute if score Step Tutorial matches 1304 run fill 171 130 110 171 132 112 minecraft:structure_void replace ice destroy
execute if score Step Tutorial matches 1304 run function exigence:tutorial/utility/flashing_bossbar_a {final_text:"Step on the ravager glass",text:">>> Step on the ravager glass <<<",color0:"yellow",color1:"white",active_color:0,interval:3,flashes:9}
execute if score Step Tutorial matches 1304 run bossbar set exigence:tutorial value 0

# Triggere by stepping on ravager glass
execute if score Step Tutorial matches 1305 run tellraw @a [{color:"green",text:"\n-> ... but break under light ones."}]
execute if score Step Tutorial matches 1305 run function exigence:tutorial/flow/reset_bossbars

execute if score Step Tutorial matches 1306 run tellraw @a [{color:"green",text:"\n-> It also regenerates after a second."}]
execute if score Step Tutorial matches 1306..1307 run function exigence:tutorial/flow/next_token

execute if score Step Tutorial matches 1307 run tellraw @a [{color:"green",text:"\n-> Ravagers can use it to navigate the dungeon easier than you in some cases."}]
# SUMMON RAVAGER
execute if score Step Tutorial matches 1307 run function exigence:tutorial/setup/ravager/setup_glassy
execute if score Step Tutorial matches 1307 run summon armor_stand 181.5 125.0 79.5 {ShowArms:true,Rotation:[0,0],Tags:["Bait2"]}


execute if score Step Tutorial matches 1308 run tellraw @a [{color:"green",text:"\n-> Here is an example of one such case."}]
# RELEASE RAVAGER
execute if score Step Tutorial matches 1308 as @n[distance=..1000,type=armor_stand,tag=Bait2] run item replace entity @s weapon.mainhand with minecraft:beef
execute if score Step Tutorial matches 1308 as @n[distance=..1000,type=ravager,name=Glassy] at @s run damage @s 0.0 arrow by @n[distance=..100,type=armor_stand,tag=Bait2]
execute if score Step Tutorial matches 1308 run effect clear @n[type=minecraft:ravager,tag=L10,name=Glassy] slowness
# Emergency clock, but otherwise we use Tick to open door as soon as Ravager is next to the Bait2
execute if score Step Tutorial matches 1308 run schedule function exigence:tutorial/flow/private/open_glassy_door 200t

execute if score Step Tutorial matches 1309 run function exigence:tutorial/flow/next_token
execute if score Step Tutorial matches 1309 run scoreboard players set Step Tutorial 1400

#=============================================================================================================
## JUMP BOOST / RAVAGER GLASS
#=============================================================================================================
execute if score Step Tutorial matches 1401 run tellraw @a [{color:"green",text:"\n-> If you don't have the required resources when a card is drawn, the card still plays but you do not get the effect."}]
execute if score Step Tutorial matches 1401 run tellraw @a [{color:"white",text:"["},{color:"green",text:"Quick Leap"},{color:"white",text:"] "},{color:"white",text:"1 Red: + Jump Boost II"}]
execute if score Step Tutorial matches 1401 run bossbar set exigence:tutorial_deck name [{text:"Deck (0",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"",color:"white",italic:false},{text:"▌▌▌▌▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score Step Tutorial matches 1401 run title @a[tag=Tutorial] subtitle [{text:"✖",color:"dark_red"}]
execute if score Step Tutorial matches 1401 run title @a[tag=Tutorial] title [{text:""}]
execute if score Step Tutorial matches 1401 as @a[tag=Tutorial] run playsound minecraft:entity.lightning_bolt.thunder ambient @s ~ ~1000 ~ 1000 1
execute if score Step Tutorial matches 1401 run kill @n[distance=..1000,type=ravager,name=Glassy]
execute if score Step Tutorial matches 1401 run kill @n[distance=..1000,type=armor_stand,name=Bait2]
execute if score Step Tutorial matches 1401..1405 run function exigence:tutorial/flow/next_token

execute if score Step Tutorial matches 1402 run tellraw @a [{color:"green",text:"\n-> You are approaching the final test."}]

execute if score Step Tutorial matches 1403 run tellraw @a [{color:"green",text:"\n-> Each time you enter the dungeon, your primary objective is to retrieve the Echo Shard."}]

execute if score Step Tutorial matches 1404 run tellraw @a [{color:"green",text:"\n-> Not only is it needed to escape, but it always contains a cache of Ancient Embers near it."}]

execute if score Step Tutorial matches 1405 run tellraw @a [{color:"green",text:"\n-> The deeper into the dungeon you go, the more treasure and embers you will find."}]

execute if score Step Tutorial matches 1406 run tellraw @a [{color:"green",text:"\n-> We've simulated part of the dungeon up ahead. Are you ready?"}]
execute if score Step Tutorial matches 1406 run fill 175 131 49 177 135 47 structure_void replace ice destroy
execute if score Step Tutorial matches 1406 as @n[distance=..1000,type=marker,tag=TutorialMarker,tag=LastDropped,tag=Checkpoint] run function exigence:tutorial/flow/last_dropped_fallback

#=============================================================================================================
## THE FINAL TEST
#=============================================================================================================
# Triggers when you walk through the door, close door
execute if score Step Tutorial matches 1501 run tellraw @a [{color:"green",text:"\n-> Find the Echo Shard and bring it to the Exit Portal."}]
execute if score Step Tutorial matches 1501 run fill 175 131 49 177 135 47 ice replace structure_void
execute if score Step Tutorial matches 1501 run function exigence:tutorial/utility/flashing_bossbar_a {final_text:"Find the echo shard",text:">>> Find the echo shard <<<",color0:"yellow",color1:"white",active_color:0,interval:3,flashes:9}
execute if score Step Tutorial matches 1501 run bossbar set exigence:tutorial value 0
execute if score Step Tutorial matches 1501 run function exigence:tutorial/setup/choose_echo_node
execute if score Step Tutorial matches 1501 at @n[distance=..1000,tag=ChosenEchoNode] run function exigence:tutorial/setup/ravager/setup_finaly
execute if score Step Tutorial matches 1501 run effect clear @a[distance=..1000,tag=Tutorial]

# Next trigger when the player picks up the echo shard
execute if score Step Tutorial matches 1502 run clear @a[distance=..1000,tag=Tutorial] compass
execute if score Step Tutorial matches 1502 run function exigence:tutorial/utility/flashing_bossbar_a {final_text:"Get to the exit portal",text:">>> Get to the exit portal <<<",color0:"yellow",color1:"white",active_color:0,interval:3,flashes:9}
execute if score Step Tutorial matches 1502 run bossbar set exigence:tutorial value 0
execute if score Step Tutorial matches 1502 at @p[distance=..1000,tag=Tutorial] run playsound minecraft:entity.wither.spawn neutral @a ~ ~1000 ~ 1000 0.8
execute if score Step Tutorial matches 1502 run title @a[tag=Tutorial] subtitle [{text:"❂",color:"dark_red"}]
execute if score Step Tutorial matches 1502 at @e[distance=..1000,type=minecraft:armor_stand,tag=EchoNode] run fill ~ ~1 ~ ~ ~1 ~ air replace light
execute if score Step Tutorial matches 1502 as @e[distance=..1000,type=block_display,tag=TutorialExitPortalDisplay] run data modify entity @s Glowing set value true
execute if score Step Tutorial matches 1502 as @a[distance=..1000,tag=Tutorial] run function exigence:player/give/echo_shard
execute if score Step Tutorial matches 1502 run scoreboard players add Menace Tutorial 3
