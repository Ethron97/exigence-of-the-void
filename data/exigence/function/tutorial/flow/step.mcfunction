# Initiate the next step, based on current step

## CONSTRAINTS
#   IN exigence:tutorial

#=============================================================================================================

execute unless entity @a[distance=..1000,tag=Tutorial] run say Called tutorial.step without in exigence:tutorial, cancelling
execute unless entity @a[distance=..1000,tag=Tutorial] run return 1

scoreboard players add Step Tutorial 1

# Playsound click
execute at @a[distance=..1000,tag=Tutorial] run playsound minecraft:ui.button.click ambient @s ~ ~1000 ~ 1000 1

# Set bossbar
execute if score Step Tutorial matches 1 run bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}
execute if score Step Tutorial matches 1 as @a[tag=Tutorial] run playsound minecraft:ui.toast.in ambient @s ~ ~1000 ~ 1000 1

## INTRODUCTION 
execute if score Step Tutorial matches 1 run tellraw @a [{color:"green",text:"-> Welcome to the Tutorial Canyon!"}]
execute if score Step Tutorial matches 2 run tellraw @a [{color:"green",text:"\n-> Follow your compass to the Echo Shard, which will allow you to escape."}]
# TODO give compass here
execute if score Step Tutorial matches 3 run tellraw @a [{color:"green",text:"\n-> You may encounter various threats within the dungeon."}]
execute if score Step Tutorial matches 4 run tellraw @a [{color:"green",text:"\n-> The most common of these will be ravagers."}]

execute if score Step Tutorial matches 5 run tellraw @a [{color:"green",text:"\n-> They are deadly, but are also slow and not terribly smart."}]
execute if score Step Tutorial matches 5 run spawnpoint @a[tag=Tutorial] 99 102 25
execute if score Step Tutorial matches 5 run function exigence:tutorial/flow/last_dropped_fallback
execute if score Step Tutorial matches 5 run scoreboard players set Fallback Tutorial 5

execute if score Step Tutorial matches 6 run tellraw @a [{color:"green",text:"\n-> With wits and speed you can outmaneuver them."}]
execute if score Step Tutorial matches 6 run fill 114 104 11 114 105 12 air
execute if score Step Tutorial matches 6 run fill 109 104 17 108 105 17 air
execute if score Step Tutorial matches 6 run function exigence:tutorial/setup/ravager/setup_loopy
execute if score Step Tutorial matches 6 run scoreboard players set Step Tutorial 101

execute if score Step Tutorial matches 1..103 run function exigence:tutorial/flow/next_token

#=============================================================================================================
## LOOPY
#=============================================================================================================

execute if score Step Tutorial matches 102 run tellraw @a [{color:"green",text:"\n-> Here's one now. It appears to be too tall to fit through the hole."}]

execute if score Step Tutorial matches 103 run effect clear @n[type=minecraft:ravager,tag=L10,name=Loopy] slowness
execute if score Step Tutorial matches 103 run bossbar set exigence:tutorial name {text:"Get past the ravager",color:"green",italic:false}
execute if score Step Tutorial matches 103 run bossbar set exigence:tutorial value 0
execute if score Step Tutorial matches 103 run tellraw @a [{color:"green",text:"\n-> See if you can find a way around the ravager."}]

execute if score Step Tutorial matches 104 run tellraw @a [{color:"green",text:"\n-> The exit is blocked! Distract the ravager while the door melts!"}]
execute if score Step Tutorial matches 104 run bossbar set exigence:tutorial name {text:"!!! Survive for 5 seconds !!!",color:"red",italic:false}
execute if score Step Tutorial matches 104 run bossbar set exigence:tutorial color red
execute if score Step Tutorial matches 104 run scoreboard players set Bossbar Tutorial 0
execute if score Step Tutorial matches 104 run fill 114 104 11 114 105 12 ice
execute if score Step Tutorial matches 104 run fill 109 104 17 108 105 17 ice
execute if score Step Tutorial matches 104 run function exigence:tutorial/flow/private/ravager_loop

execute if score Step Tutorial matches 105 run tellraw @a [{color:"green",text:"\n-> The exit is open, go go go!"}]
execute if score Step Tutorial matches 105 run bossbar set exigence:tutorial name {text:"Get past the ravager",color:"green",italic:false}
execute if score Step Tutorial matches 105 run bossbar set exigence:tutorial color green
execute if score Step Tutorial matches 105 run fill 126 103 29 130 109 33 minecraft:structure_void replace ice destroy

execute if score Step Tutorial matches 106 run kill @n[distance=..1000,type=minecraft:ravager,tag=L10,name=Loopy]
execute if score Step Tutorial matches 106 run bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}
execute if score Step Tutorial matches 106 run bossbar set exigence:tutorial value 1
execute if score Step Tutorial matches 106 run tellraw @a [{color:"green",text:"\n-> Wits and speed is not all you will have against the ravagers..."}]
execute if score Step Tutorial matches 106 run fill 126 103 29 130 109 33 ice replace structure_void

execute if score Step Tutorial matches 106 run function exigence:tutorial/flow/last_dropped_fallback
execute if score Step Tutorial matches 106 run scoreboard players set Fallback Tutorial 106
execute if score Step Tutorial matches 106 run spawnpoint @a[tag=Tutorial] 131 104 33


execute if score Step Tutorial matches 107 run tellraw @a [{color:"green",text:"\n-> You will also have your Deck!"}]
execute if score Step Tutorial matches 107 run function exigence:bossbar/tutorial/hide
execute if score Step Tutorial matches 107 run function exigence:bossbar/tutorial_deck/initialize
execute if score Step Tutorial matches 107 run function exigence:bossbar/tutorial/initialize
execute if score Step Tutorial matches 107 as @a[tag=Tutorial] run playsound minecraft:ui.toast.in ambient @s ~ ~1000 ~ 1000 1
execute if score Step Tutorial matches 107 run bossbar set exigence:tutorial value 1
execute if score Step Tutorial matches 107 run bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}

execute if score Step Tutorial matches 108 run tellraw @a [{color:"green",text:"\n-> Every 30 seconds, a random card will automatically be drawn and played."}]
execute if score Step Tutorial matches 108 run scoreboard players set Step Tutorial 200

execute if score Step Tutorial matches 105..201 run function exigence:tutorial/flow/next_token

#=============================================================================================================
## BERRIES
#=============================================================================================================

execute if score Step Tutorial matches 201 run tellraw @a [{color:"green",text:"\n-> Sounds like a card just played!"}]
execute if score Step Tutorial matches 201 run tellraw @a [{color:"white",text:"["},{color:"dark_aqua",text:"Green Thumb"},{color:"white",text:"] "},{color:"white",text:"+ Berry Bushes"}]
execute if score Step Tutorial matches 201 as @a[tag=Tutorial] run playsound minecraft:entity.lightning_bolt.thunder ambient @s ~ ~1000 ~ 1000 1
execute if score Step Tutorial matches 201 run bossbar set exigence:tutorial_deck name [{text:"Deck (4",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌▌▌▌",color:"white",italic:false},{text:"▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score Step Tutorial matches 201 run function exigence:tutorial/setup/grow_berries

execute if score Step Tutorial matches 202 run tellraw @a [{color:"green",text:"\n-> Dead bushes cannot grow berries. See if you can find some other bushes."}]
execute if score Step Tutorial matches 202 run bossbar set exigence:tutorial name {text:"Pick 3 berry bushes",color:"green",italic:false}
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
execute if score Step Tutorial matches 205 run bossbar set exigence:tutorial value 1
execute if score Step Tutorial matches 205 run fill 122 114 70 124 119 74 minecraft:structure_void replace ice destroy
execute if score Step Tutorial matches 205 run bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}

execute if score Step Tutorial matches 205 run function exigence:tutorial/flow/next_token
execute if score Step Tutorial matches 205 run scoreboard players set Step Tutorial 300


#=============================================================================================================
## HAZARD + MENACE
#=============================================================================================================

execute if score Step Tutorial matches 301 run tellraw @a [{color:"green",text:"\n-> See that? That there is sculk."}]
execute if score Step Tutorial matches 301 run function exigence:tutorial/flow/last_dropped_fallback
execute if score Step Tutorial matches 301 run scoreboard players set Fallback Tutorial 301
execute if score Step Tutorial matches 301 run spawnpoint @a[tag=Tutorial] 128 115 70

execute if score Step Tutorial matches 302 run tellraw @a [{color:"green",text:"\n-> It is one of the many long arms of the Watchers."}]
execute if score Step Tutorial matches 303 run tellraw @a [{color:"green",text:"\n-> When sculk blocks a passage, it is called Hazard."}]
execute if score Step Tutorial matches 304 run tellraw @a [{color:"green",text:"\n-> Hazard can make traversing the dungeon more difficult."}]
execute if score Step Tutorial matches 305 run tellraw @a [{color:"green",text:"\n-> However, there is ALWAYS at least one path through."}]

execute if score Step Tutorial matches 306 run tellraw @a [{color:"green",text:"\n-> As you traverse the dungeon, you will generate Menace."}]
execute if score Step Tutorial matches 307 run tellraw @a [{color:"green",text:"\n-> Menace measures how aware the dungeon is of you."}]
execute if score Step Tutorial matches 308 run tellraw @a [{color:"green",text:"\n-> The more Menace, the faster your heart will beat."}]
execute if score Step Tutorial matches 301..308 run function exigence:tutorial/flow/next_token

execute if score Step Tutorial matches 309 run tellraw @a [{color:"green",text:"\n-> If you reach Max Menace, the Watchers become fully aware of you and there is no hiding."}]

execute if score Step Tutorial matches 310 run tellraw @a [{color:"green",text:"\n-> Hear that noise? The Watchers can sense your vibrations when you step on sculk."}]
execute if score Step Tutorial matches 310..311 run function exigence:tutorial/flow/next_token
execute if score Step Tutorial matches 311 run tellraw @a [{color:"green",text:"\n-> Stepping on sculk has a high chance of generating Menace."}]

execute if score Step Tutorial matches 312 run tellraw @a [{color:"green",text:"\n-> Listen to the heartbeat as Menace increases by playing these samples."}]
execute if score Step Tutorial matches 312 run bossbar set exigence:tutorial value 0
execute if score Step Tutorial matches 312 run bossbar set exigence:tutorial name {text:"Listen to the heartbeat samples",color:"green",italic:false}
# Pushy buttons to play heartbeat sounds
execute if score Step Tutorial matches 313 run bossbar set exigence:tutorial value 25
execute if score Step Tutorial matches 314 run bossbar set exigence:tutorial value 50
execute if score Step Tutorial matches 315 run bossbar set exigence:tutorial value 75


execute if score Step Tutorial matches 316 run tellraw @a [{color:"green",text:"\n-> Menace will also increase when you run out of cards, so the bigger your deck, the longer you can stay in the dungeon!"}]
execute if score Step Tutorial matches 316 run bossbar set exigence:tutorial value 1
execute if score Step Tutorial matches 316 run bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}
execute if score Step Tutorial matches 316 run fill 92 122 85 88 128 90 structure_void replace ice destroy
execute if score Step Tutorial matches 316 run function exigence:tutorial/flow/next_token
execute if score Step Tutorial matches 316 run scoreboard players set Step Tutorial 400


#=============================================================================================================
## TREASURE TOWN
#=============================================================================================================

execute if score Step Tutorial matches 401 run tellraw @a [{color:"green",text:"\n-> The dungeon contains many treasures scattered throughout the dungeon."}]
execute if score Step Tutorial matches 401 run function exigence:tutorial/flow/last_dropped_fallback
execute if score Step Tutorial matches 401 run scoreboard players set Fallback Tutorial 401
execute if score Step Tutorial matches 401 run spawnpoint @a[tag=Tutorial] 88 123 90

execute if score Step Tutorial matches 401..403 run function exigence:tutorial/flow/next_token

execute if score Step Tutorial matches 402 run tellraw @a [{color:"green",text:"\n-> Coins are the most common treasure drop."}]

execute if score Step Tutorial matches 403 run tellraw @a [{color:"green",text:"\n-> They are converted into Glint when you leave the dungeon. Glint is used to purchase items from the shop."}]
execute if score Step Tutorial matches 403 run scoreboard players set Step Tutorial 702

execute if score Step Tutorial matches 703 run tellraw @a [{color:"green",text:"\n-> See what you can find in this abandoned village."}]
execute if score Step Tutorial matches 703 as @e[distance=..1000,type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=10},tag=!EmberSpecial] run function exigence:treasure/node/drop_treasure {function:"exigence:treasure/node/coin/summon_coin"}
execute if score Step Tutorial matches 703 as @e[distance=..1000,type=minecraft:item,scores={ObjectLevel=10}] run tag @s add PreventItemDespawn
execute if score Step Tutorial matches 703 run bossbar set exigence:tutorial name {text:"Collect 5 Coins",color:"green",italic:false}
execute if score Step Tutorial matches 703 run bossbar set exigence:tutorial value 0

execute if score Step Tutorial matches 704 run tellraw @a [{color:"green",text:"\n-> Coins naturally spawn over time in the dungeon."}]
execute if score Step Tutorial matches 704 run bossbar set exigence:tutorial value 20

execute if score Step Tutorial matches 705 run tellraw @a [{color:"green",text:"\n-> They can be found in every knook and cranny..."}]
execute if score Step Tutorial matches 705 run bossbar set exigence:tutorial value 40

execute if score Step Tutorial matches 706 run tellraw @a [{color:"green",text:"\n-> ...but they will always be somewhere accessible."}]
execute if score Step Tutorial matches 706 run bossbar set exigence:tutorial value 60

execute if score Step Tutorial matches 707 run tellraw @a [{color:"green",text:"\n-> Coins convert to Glint at a 5:1 ratio."}]
execute if score Step Tutorial matches 707 run bossbar set exigence:tutorial value 80

execute if score Step Tutorial matches 708 run tellraw @a [{color:"green",text:"\n-> Cards can be played to drop additional treasure."}]
execute if score Step Tutorial matches 708 run kill @e[distance=..1000,type=minecraft:item,tag=Coin]
execute if score Step Tutorial matches 708 run bossbar set exigence:tutorial value 100
execute if score Step Tutorial matches 708 run scoreboard players set Step Tutorial 800

execute if score Step Tutorial matches 800 run function exigence:tutorial/flow/next_token

## EMBERS
execute if score Step Tutorial matches 801 run tellraw @a [{color:"green",text:"\n-> Sounds like a card just spawned some embers as well."}]
execute if score Step Tutorial matches 801 run tellraw @a [{color:"white",text:"["},{color:"dark_aqua",text:"Ember Seeker"},{color:"white",text:"] "},{color:"white",text:"+ Ancient Embers"}]
execute if score Step Tutorial matches 801 run bossbar set exigence:tutorial_deck name [{text:"Deck (3",color:"white"},{text:"/",color:"gray"},{text:"5): [ ",color:"white"},\
{text:"▌▌▌",color:"white",italic:false},{text:"▌▌",color:"dark_gray",italic:false},{text:" ]",color:"white"}]
execute if score Step Tutorial matches 801 as @a[tag=Tutorial] run playsound minecraft:entity.lightning_bolt.thunder ambient @s ~ ~1000 ~ 1000 1
execute if score Step Tutorial matches 801 run bossbar set exigence:tutorial value 0
execute if score Step Tutorial matches 801 run bossbar set exigence:tutorial name {text:"Collect 3 Embers",color:"green",italic:false}
execute if score Step Tutorial matches 801 run execute as @e[distance=..1000,type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=10},tag=EmberSpecial] run function exigence:treasure/node/drop_treasure {function:"exigence:ember/summon_ember"}
execute if score Step Tutorial matches 801 run execute as @e[distance=..1000,type=minecraft:item,scores={ObjectLevel=10}] run tag @s add PreventItemDespawn

execute if score Step Tutorial matches 802 run tellraw @a [{color:"green",text:"\n-> Embers can be spent purchasing cards after the run."}]
execute if score Step Tutorial matches 802 run bossbar set exigence:tutorial value 33

execute if score Step Tutorial matches 803 run tellraw @a [{color:"green",text:"\n-> Unlike coins, they do not spawn naturally except for around the Echo shard."}]
execute if score Step Tutorial matches 803 run bossbar set exigence:tutorial value 66

execute if score Step Tutorial matches 804 run tellraw @a [{color:"green",text:"\n-> Cards can be played to drop additional embers."}]
execute if score Step Tutorial matches 804 run execute at @e[distance=..1000,type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=10},tag=EmberSpecial] run kill @e[distance=..2,type=minecraft:item,tag=Ember]
execute if score Step Tutorial matches 804 run bossbar set exigence:tutorial value 100
execute if score Step Tutorial matches 804 run scoreboard players set Step Tutorial 900

execute if score Step Tutorial matches 900 run function exigence:tutorial/flow/next_token

## RESEARCH SHERDS
execute if score Step Tutorial matches 901 run tellraw @a [{color:"green",text:"\n-> The final common dungeon drop is the Research Fragment."}]
execute if score Step Tutorial matches 901 run bossbar set exigence:tutorial value 0
execute if score Step Tutorial matches 901 run bossbar set exigence:tutorial name {text:"Collect 1 Fragment",color:"green",italic:false}
execute if score Step Tutorial matches 901 run execute as @e[distance=..1000,type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=10},limit=2,sort=random] run function exigence:treasure/node/drop_treasure {function:"exigence:treasure/sherd/summon_sherd"}
execute if score Step Tutorial matches 901 run execute as @e[distance=..1000,type=minecraft:item,scores={ObjectLevel=10}] run tag @s add PreventItemDespawn

execute if score Step Tutorial matches 902 run tellraw @a [{color:"green",text:"\n-> Fragments are used to unlock new items in the shop."}]
execute if score Step Tutorial matches 902 run bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}
execute if score Step Tutorial matches 902 run bossbar set exigence:tutorial value 1
execute if score Step Tutorial matches 902 run kill @e[distance=..1000,type=minecraft:item,tag=Sherd]
execute if score Step Tutorial matches 902 run fill 84 122 134 79 127 139 structure_void replace ice destroy
execute if score Step Tutorial matches 902 run scoreboard players set Step Tutorial 1000

execute if score Step Tutorial matches 1000 run function exigence:tutorial/flow/next_token

#=============================================================================================================
## ALTAR
#=============================================================================================================

execute if score Step Tutorial matches 1001 run tellraw @a [{color:"green",text:"\n-> Watch your step!"}]
execute if score Step Tutorial matches 1001 run function exigence:tutorial/flow/last_dropped_fallback
execute if score Step Tutorial matches 1001 run scoreboard players set Fallback Tutorial 1001
execute if score Step Tutorial matches 1001 run spawnpoint @a[tag=Tutorial] 80 123 143
execute if score Step Tutorial matches 1001 run function exigence:tutorial/flow/next_token

execute if score Step Tutorial matches 1002 run tellraw @a [{color:"green",text:"\n-> Up ahead is an old altar. Rekindle it by right clicking."}]
execute if score Step Tutorial matches 1002 run execute as @e[distance=..1000,type=minecraft:armor_stand,tag=AltarNode,scores={ObjectLevel=10}] run function exigence:altar/node/activate
execute if score Step Tutorial matches 1002 run bossbar set exigence:tutorial name {text:"Light the altar",color:"green",italic:false}
execute if score Step Tutorial matches 1002 run bossbar set exigence:tutorial value 0

execute if score Step Tutorial matches 1003 run tellraw @a [{color:"green",text:"\n-> Now Enhance the altar by lighting it with an Ember."}]
execute if score Step Tutorial matches 1003 run bossbar set exigence:tutorial name {text:"Enhance the altar",color:"green",italic:false}
execute if score Step Tutorial matches 1003 as @a[distance=..1000,tag=Tutorial] run function exigence:tutorial/flow/private/force_ember
execute if score Step Tutorial matches 1003 run title @a[tag=Tutorial] subtitle [{text:"❂",color:"aqua"}]
execute if score Step Tutorial matches 1003 run title @a[tag=Tutorial] title [{text:""}]

execute if score Step Tutorial matches 1004 run tellraw @a [{color:"green",text:"\n-> Lighting or Enhacing altars reduces Menace by 1, as well as giving ❂ Aqua."}]
execute if score Step Tutorial matches 1004 run bossbar set exigence:tutorial value 1
execute if score Step Tutorial matches 1004 run title @a[tag=Tutorial] subtitle [{text:"❂",color:"aqua"}]
execute if score Step Tutorial matches 1004 run title @a[tag=Tutorial] title [{text:""}]
execute if score Step Tutorial matches 1004 run bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}
execute if score Step Tutorial matches 1004 run fill 107 125 157 112 131 153 structure_void replace ice destroy
execute if score Step Tutorial matches 1004 run function exigence:tutorial/flow/next_token
execute if score Step Tutorial matches 1004 run scoreboard players set Step Tutorial 1100

#=============================================================================================================
## BEAST SENSE / STEP HEIGHT
#=============================================================================================================

execute if score Step Tutorial matches 1101 run tellraw @a [{color:"green",text:"\n-> Some cards require ❂ Resources to play."}]
execute if score Step Tutorial matches 1101 run function exigence:tutorial/flow/last_dropped_fallback
execute if score Step Tutorial matches 1101 run scoreboard players set Fallback Tutorial 1101
execute if score Step Tutorial matches 1101 run spawnpoint @a[tag=Tutorial] 113 126 152

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
execute if score Step Tutorial matches 1201 run function exigence:tutorial/flow/last_dropped_fallback
execute if score Step Tutorial matches 1201 run scoreboard players set Fallback Tutorial 1201
execute if score Step Tutorial matches 1201 run spawnpoint @a[tag=Tutorial] 129 126 145
execute if score Step Tutorial matches 1201 run kill @n[distance=..1000,type=ravager,name=Climby]
execute if score Step Tutorial matches 1201 run kill @n[distance=..1000,type=armor_stand,name=Bait1]
execute if score Step Tutorial matches 1201 run function exigence:tutorial/flow/next_token

execute if score Step Tutorial matches 1202 run tellraw @a [{color:"green",text:"\n-> Ringing bells gives 1 Red, but has a 2/3 chance to trigger a Hazard."}]
execute if score Step Tutorial matches 1202 run bossbar set exigence:tutorial name {text:"Ring the bell",color:"green",italic:false}
execute if score Step Tutorial matches 1202 run bossbar set exigence:tutorial value 0
