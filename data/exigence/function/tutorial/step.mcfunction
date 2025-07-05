# Call to advance the step by 1

scoreboard players add Step Tutorial 1

# Playsound click
execute at @a[tag=Tutorial] run playsound minecraft:ui.button.click ambient @a ~ ~1000 ~ 1000 1

# Set bossbar
execute if score Step Tutorial matches 1 run bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}

## INTRODUCTION
execute if score Step Tutorial matches 1 run tellraw @a [{color:"green",text:"Welcome to the Tutorial Canyon!"}]
execute if score Step Tutorial matches 2 run tellraw @a [{color:"green",text:"\nFollow your compass to the Echo Shard, which will allow you to escape."}]
execute if score Step Tutorial matches 3 run tellraw @a [{color:"green",text:"\nYou may encounter various threats within the dungeon."}]
execute if score Step Tutorial matches 4 run tellraw @a [{color:"green",text:"\nThe most common of these will be ravagers."}]
execute if score Step Tutorial matches 5 run tellraw @a [{color:"green",text:"\nThey are deadly, but are also slow and not terribly smart."}]
execute if score Step Tutorial matches 6 run tellraw @a [{color:"green",text:"\nWith wits and speed you can outmaneuver them."}]
#execute if score Step Tutorial matches 6 run spawnpoint @a[tag=Tutorial] -252 2 -118
execute if score Step Tutorial matches 7 run tellraw @a [{color:"green",text:"\nAh, here's one now. It appears to be too large to fit through the hole."}]
execute if score Step Tutorial matches 7 run data modify entity @e[type=minecraft:ravager,tag=L10,name=Loopy,limit=1] Silent set value 0
execute if score Step Tutorial matches 7 run effect clear @e[type=minecraft:ravager,tag=L10,name=Loopy,limit=1] slowness
execute if score Step Tutorial matches 8 run scoreboard players set Step Tutorial 100

## RAVAGER LOOP
execute if score Step Tutorial matches 100 run bossbar set exigence:tutorial name {text:"Get past the ravager",color:"green",italic:false}
execute if score Step Tutorial matches 100 run bossbar set exigence:tutorial value 0
execute if score Step Tutorial matches 100 run tellraw @a [{color:"green",text:"\nSee if you can find a way around the ravager."}]
#execute if score Step Tutorial matches 100 run remove slowness from Loopy

execute if score Step Tutorial matches 101 run tellraw @a [{color:"green",text:"\nThe exit is blocked! Distract the ravager while I work on opening it!"}]
execute if score Step Tutorial matches 101 run bossbar set exigence:tutorial name {text:"Distract the ravager for 5 seconds",color:"red",italic:false}
execute if score Step Tutorial matches 101 run fill -260 5 -134 -260 2 -136 ice replace air
execute if score Step Tutorial matches 101 run fill -249 2 -131 -249 4 -127 ice replace air
execute if score Step Tutorial matches 101 run fill -244 2 -133 -247 4 -133 ice replace air


execute if score Step Tutorial matches 201 run tellraw @a [{color:"green",text:"\nThe exit is open, go go go!"}]
execute if score Step Tutorial matches 201 run bossbar set exigence:tutorial name {text:"Get past the ravager",color:"green",italic:false}
execute if score Step Tutorial matches 201 run fill -260 5 -134 -260 2 -136 air replace ice

execute if score Step Tutorial matches 202 run data modify entity @e[type=minecraft:ravager,tag=L10,name=Loopy,limit=1] Silent set value 1
execute if score Step Tutorial matches 202 run bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}
execute if score Step Tutorial matches 202 run bossbar set exigence:tutorial value 7
execute if score Step Tutorial matches 202 run tellraw @a [{color:"green",text:"\nWhile freezing doorways is not something you will have to worry about inside the dungeon, other forces will strive to block your progress."}]


execute if score Step Tutorial matches 202 run scoreboard players set Fallback Tutorial 300
execute if score Step Tutorial matches 202 run spawnpoint @a[tag=Tutorial] -261 2 -133

execute if score Step Tutorial matches 202 run scoreboard players set Step Tutorial 300

## FIRST HAZARD
execute if score Step Tutorial matches 301 run tellraw @a [{color:"green",text:"\nSee that? We call it sculk."}]
execute if score Step Tutorial matches 302 run tellraw @a [{color:"green",text:"\nIt is one of the many long arms of the Watchers."}]
execute if score Step Tutorial matches 303 run tellraw @a [{color:"green",text:"\nWhen sculk blocks a passage, we call it Hazard."}]
execute if score Step Tutorial matches 304 run tellraw @a [{color:"green",text:"\nHazard can make traversing the dungeon more difficult."}]
execute if score Step Tutorial matches 305 run tellraw @a [{color:"green",text:"\nHowever, there is ALWAYS at least one path through."}]
execute if score Step Tutorial matches 306 run tellraw @a [{color:"green",text:"\nExcellent work! Athleticism such as that will serve you well in the dungeon."}]

execute if score Step Tutorial matches 306 run scoreboard players set Step Tutorial 400

## SCULK
execute if score Step Tutorial matches 401 run bossbar set exigence:tutorial value 14
execute if score Step Tutorial matches 401 run tellraw @a [{color:"green",text:"\nMore sculk? Well, you may have to push through if it is the only way."}]
execute if score Step Tutorial matches 402 run tellraw @a [{color:"green",text:"\nOnly prolonged contact will fully awaken the Watcher to your presence."}]
execute if score Step Tutorial matches 403 run tellraw @a [{color:"green",text:"\nStill, I recommend you avoid stepping on it when possible."}]
execute if score Step Tutorial matches 404 run tellraw @a [{color:"green",text:"\nHere that sound? That is the sound of the Watcher sensing your passing."}]
execute if score Step Tutorial matches 404 run scoreboard players set Step Tutorial 500

## EYEBALLS
execute if score Step Tutorial matches 501 run bossbar set exigence:tutorial value 21
execute if score Step Tutorial matches 501 run tellraw @a [{color:"green",text:"\nThe Watchers can also detect vibrations in the air using Nodes."}]
execute if score Step Tutorial matches 502 run tellraw @a [{color:"green",text:"\nNodes are invisible and unavoidable, but are also less effective at reporting your position."}]
execute if score Step Tutorial matches 503 run tellraw @a [{color:"green",text:"\nWhenever you trigger a node or step on sculk, a Beholder will spawn nearby."}]
execute if score Step Tutorial matches 504 run tellraw @a [{color:"green",text:"\nBeholders are harmless, unless the Watcher becomes fully awake."}]
execute if score Step Tutorial matches 505 run tellraw @a [{color:"green",text:"\nUse the Watcher's heartbeat to discern if it is close to awakening."}]
execute if score Step Tutorial matches 506 run tellraw @a [{color:"green",text:"\nOnce it is awake, there is no hiding."}]
execute if score Step Tutorial matches 506 run scoreboard players set Step Tutorial 600

execute if score Step Tutorial matches 600 run scoreboard players set Fallback Tutorial 600
execute if score Step Tutorial matches 600 run spawnpoint @a[tag=Tutorial] -263 5 -161

## BERRIES
execute if score Step Tutorial matches 601 run bossbar set exigence:tutorial value 28
execute if score Step Tutorial matches 601 run tellraw @a [{color:"green",text:"\nThe dungeon isn't all bad. Solstice is home to the finest berries in the land."}]
execute if score Step Tutorial matches 602 run tellraw @a [{color:"green",text:"\nDon't take my word for it though."}]

execute if score Step Tutorial matches 603 run tellraw @a [{color:"green",text:"\nPick three berry bushes"}]
execute if score Step Tutorial matches 603 run bossbar set exigence:tutorial name {text:"Pick 3 berry bushes",color:"green",italic:false}
execute if score Step Tutorial matches 603 run bossbar set exigence:tutorial value 0

# Pick first
execute if score Step Tutorial matches 604 run tellraw @a [{color:"green",text:"\nEach bush has a 50% chance to be grown each run."}]
execute if score Step Tutorial matches 604 run bossbar set exigence:tutorial value 33
# Pick second
execute if score Step Tutorial matches 605 run tellraw @a [{color:"green",text:"\nBushes do not grow back on their own, but playing certain cards can regrow them."}]
execute if score Step Tutorial matches 605 run bossbar set exigence:tutorial value 66
# Pick third
execute if score Step Tutorial matches 606 run tellraw @a [{color:"green",text:"\nPicking berry bushes also gives ❂ Green, which is used to power certain cards."}]
execute if score Step Tutorial matches 606 run bossbar set exigence:tutorial value 35
execute if score Step Tutorial matches 606 run fill -264 13 -185 -261 17 -185 air replace ice
execute if score Step Tutorial matches 606 run bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}
execute if score Step Tutorial matches 606 run scoreboard players set Step Tutorial 700


execute if score Step Tutorial matches 700 run scoreboard players set Fallback Tutorial 700
execute if score Step Tutorial matches 700 run spawnpoint @a[tag=Tutorial] -263 13 -186

## COINS
execute if score Step Tutorial matches 701 as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=10},tag=!EmberSpecial] run function exigence:treasure/node/drop_treasure {function:"exigence:treasure/node/coin/summon_coin"}
execute if score Step Tutorial matches 701 as @e[type=minecraft:item,scores={ObjectLevel=10}] run tag @s add PreventItemDespawn
execute if score Step Tutorial matches 701 run tellraw @a [{color:"green",text:"\nYou may also find Coins and Embers scattered throughout the dungeon."}]
execute if score Step Tutorial matches 702 run tellraw @a [{color:"green",text:"\nCoins are converted into Glint when you leave the dungeon. Glint is used to purchase items from the shop."}]
execute if score Step Tutorial matches 702 run fill -264 13 -185 -261 17 -185 ice replace air


execute if score Step Tutorial matches 703 run tellraw @a [{color:"green",text:"\nSee what you can find in this abandoned village."}]
execute if score Step Tutorial matches 703 run bossbar set exigence:tutorial name {text:"Collect 5 Coins",color:"green",italic:false}
execute if score Step Tutorial matches 703 run bossbar set exigence:tutorial value 0

execute if score Step Tutorial matches 704 run tellraw @a [{color:"green",text:"\nCoins naturally spawn over time in the dungeon."}]
execute if score Step Tutorial matches 704 run bossbar set exigence:tutorial value 20
execute if score Step Tutorial matches 705 run tellraw @a [{color:"green",text:"\nThey can be found in every knook and cranny,"}]
execute if score Step Tutorial matches 705 run bossbar set exigence:tutorial value 40
execute if score Step Tutorial matches 706 run tellraw @a [{color:"green",text:"\nbut they will always be somewhere accessible."}]
execute if score Step Tutorial matches 706 run bossbar set exigence:tutorial value 60
execute if score Step Tutorial matches 707 run tellraw @a [{color:"green",text:"\nCoins convert to Glint at a 5:1 ratio."}]
execute if score Step Tutorial matches 707 run bossbar set exigence:tutorial value 80
execute if score Step Tutorial matches 708 run tellraw @a [{color:"green",text:"\nCards can be played to drop additional treasure."}]
execute if score Step Tutorial matches 708 run kill @e[type=minecraft:item,tag=Coin]
execute if score Step Tutorial matches 708 run bossbar set exigence:tutorial value 100
execute if score Step Tutorial matches 708 run scoreboard players set Step Tutorial 800

## EMBERS
execute if score Step Tutorial matches 801 run tellraw @a [{color:"green",text:"\nIt sounds like some Embers just spawned as well."}]
execute if score Step Tutorial matches 801 run bossbar set exigence:tutorial value 0
execute if score Step Tutorial matches 801 run bossbar set exigence:tutorial name {text:"Collect 3 Embers",color:"green",italic:false}
execute if score Step Tutorial matches 801 run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=10},tag=EmberSpecial] run function exigence:treasure/node/drop_treasure {function:"exigence:ember/summon_ember"}
execute if score Step Tutorial matches 801 run execute as @e[type=minecraft:item,scores={ObjectLevel=10}] run tag @s add PreventItemDespawn

execute if score Step Tutorial matches 802 run tellraw @a [{color:"green",text:"\nEmbers can be spent purchasing cards after the run."}]
execute if score Step Tutorial matches 802 run bossbar set exigence:tutorial value 33
execute if score Step Tutorial matches 803 run tellraw @a [{color:"green",text:"\nUnlike coins, they do not spawn naturally except for around the Echo shard."}]
execute if score Step Tutorial matches 803 run bossbar set exigence:tutorial value 66
execute if score Step Tutorial matches 804 run tellraw @a [{color:"green",text:"\nCards can be played to drop additional embers."}]
execute if score Step Tutorial matches 804 run execute at @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=10},tag=EmberSpecial] run kill @e[distance=..2,type=minecraft:item,tag=Ember]
execute if score Step Tutorial matches 804 run bossbar set exigence:tutorial value 100
execute if score Step Tutorial matches 805 run scoreboard players set Step Tutorial 900

## RESEARCH SHERDS
execute if score Step Tutorial matches 901 run tellraw @a [{color:"green",text:"\nThe final common dungeon drop is the Research Fragment."}]
execute if score Step Tutorial matches 901 run bossbar set exigence:tutorial value 0
execute if score Step Tutorial matches 901 run bossbar set exigence:tutorial name {text:"Collect 1 Fragment",color:"green",italic:false}
execute if score Step Tutorial matches 901 run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=10},limit=2,sort=random] run function exigence:treasure/node/drop_treasure {function:"exigence:treasure/sherd/summon_sherd"}
execute if score Step Tutorial matches 901 run execute as @e[type=minecraft:item,scores={ObjectLevel=10}] run tag @s add PreventItemDespawn

execute if score Step Tutorial matches 902 run tellraw @a [{color:"green",text:"\nFragments are used to unlock new items in the shop."}]
execute if score Step Tutorial matches 902 run bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}
execute if score Step Tutorial matches 902 run bossbar set exigence:tutorial value 50
execute if score Step Tutorial matches 902 run kill @e[type=minecraft:item,tag=Sherd]
execute if score Step Tutorial matches 902 run fill -251 13 -209 -246 17 -209 air
execute if score Step Tutorial matches 902 run scoreboard players set Step Tutorial 1000




## POWDER SNOW
execute if score Step Tutorial matches 1001 run tellraw @a [{color:"green",text:"\nWatch your step. Powder snow can quickly turn a difficult situation into a deadly one."}]


## ALTAR
execute if score Step Tutorial matches 1002 run tellraw @a [{color:"green",text:"\nUp ahead is an old altar. Rekindle it by right clicking."}]
execute if score Step Tutorial matches 1002 run bossbar set exigence:tutorial name {text:"Light the altar",color:"green",italic:false}
execute if score Step Tutorial matches 1002 run bossbar set exigence:tutorial value 0

execute if score Step Tutorial matches 1003 run tellraw @a [{color:"green",text:"\nLighting altars reduces Menace by 1, as well as giving ❂ Aqua."}]
execute if score Step Tutorial matches 1003 run bossbar set exigence:tutorial value 100

execute if score Step Tutorial matches 1024 run tellraw @a [{color:"green",text:"\nNow Enhance the altar by lighting it with an Ember."}]
execute if score Step Tutorial matches 1024 run bossbar set exigence:tutorial value 0
execute if score Step Tutorial matches 1024 run bossbar set exigence:tutorial name {text:"Enhance the altar",color:"green",italic:false}

execute if score Step Tutorial matches 1025 run tellraw @a [{color:"green",text:"\nEnhancing an altar has the same effect, allow you to gain the benefits twice at the cost of an Ember."}]
execute if score Step Tutorial matches 1025 run bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}
execute if score Step Tutorial matches 1025 run bossbar set exigence:tutorial value 64
execute if score Step Tutorial matches 1025 run fill -256 23 -237 -256 27 -233 air replace ice
execute if score Step Tutorial matches 1025 run scoreboard players set Step Tutorial 1100

execute if score Step Tutorial matches 1100 run scoreboard players set Fallback Tutorial 1100
execute if score Step Tutorial matches 1100 run spawnpoint @a[tag=Tutorial] -258 23 -235

## RAVAGER CLIMB
execute if score Step Tutorial matches 1101 run tellraw @a [{color:"green",text:"\nI think I hear another ravager..."}]
execute if score Step Tutorial matches 1101 at @e[name=Steppy] run playsound minecraft:entity.ravager.ambient ambient @a ~ ~ ~ 4 1
execute if score Step Tutorial matches 1101 as @e[name=Steppy] run tp @s -258.09 14.66 -215.00

execute if score Step Tutorial matches 1102 run tellraw @a [{color:"green",text:"\nThere, grazing in the pit. Watch out, Ravagers are excellent climbers."}]
execute if score Step Tutorial matches 1102 run bossbar set exigence:tutorial name {text:"Witness the ravager climb",color:"green",italic:false}
execute if score Step Tutorial matches 1102 run bossbar set exigence:tutorial value 0
execute if score Step Tutorial matches 1102 run effect clear @e[type=minecraft:ravager,tag=L10,name=Steppy,limit=1] slowness
execute if score Step Tutorial matches 1102 run data modify entity @e[type=minecraft:ravager,tag=L10,name=Steppy,limit=1] Silent set value 0

execute if score Step Tutorial matches 1201 run bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}
execute if score Step Tutorial matches 1201 run bossbar set exigence:tutorial value 71
execute if score Step Tutorial matches 1201 run fill -271 23 -237 -269 27 -237 air replace ice


## BELL
execute if score Step Tutorial matches 1202 run tellraw @a [{color:"green",text:"\nRinging bells gives ❂ Red, but also has a 2/3 chance to increase hazard."}]
execute if score Step Tutorial matches 1202 run bossbar set exigence:tutorial name {text:"Ring the bell",color:"green",italic:false}
execute if score Step Tutorial matches 1202 run bossbar set exigence:tutorial value 0

execute if score Step Tutorial matches 1203 run tellraw @a [{color:"green",text:"\nBells respawn 5 seconds after being rung."}]
execute if score Step Tutorial matches 1203 run bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}
execute if score Step Tutorial matches 1203 run bossbar set exigence:tutorial value 78
execute if score Step Tutorial matches 1203 run fill -272 23 -252 -268 29 -252 sculk

execute if score Step Tutorial matches 1204 run tellraw @a [{color:"green",text:"\nLooks like ringing the bell trigged this hazard. You'll have to look for another way."}]
execute if score Step Tutorial matches 1204 run fill -266 22 -245 -267 22 -244 water replace ice
execute if score Step Tutorial matches 1204 run scoreboard players set Step Tutorial 1300

## VARIANCE
execute if score Step Tutorial matches 1301 run tellraw @a [{color:"green",text:"\nKeep an eye out for shortcuts and other small changes in the dungeon. These are called variances, and are randomized each run."}]
execute if score Step Tutorial matches 1301 run scoreboard players set Step Tutorial 1400
execute if score Step Tutorial matches 1301 run bossbar set exigence:tutorial value 85

## RAVAGER GLASS
execute if score Step Tutorial matches 1401 run tellraw @a [{color:"green",text:"\nAlmost forgot about Ravager Glass™️. Go ahead and walk on it."}]
execute if score Step Tutorial matches 1401 run bossbar set exigence:tutorial name {text:"Step on the ravager glass",color:"green",italic:false}
execute if score Step Tutorial matches 1401 run bossbar set exigence:tutorial value 0

execute if score Step Tutorial matches 1402 run tellraw @a [{color:"green",text:"\nRavager glass is designed to break under light loads, but hold up under large ones."}]
execute if score Step Tutorial matches 1402 run bossbar set exigence:tutorial value 100

execute if score Step Tutorial matches 1403 run tellraw @a [{color:"green",text:"\nThis means ravagers can cross it without issue, but you cannot. Keep that in mind when navigating the dungeon!"}]
execute if score Step Tutorial matches 1403 run bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}
execute if score Step Tutorial matches 1403 run bossbar set exigence:tutorial value 92
execute if score Step Tutorial matches 1403 run scoreboard players set Step Tutorial 1500

execute if score Step Tutorial matches 1500 run scoreboard players set Fallback Tutorial 1500
execute if score Step Tutorial matches 1500 run spawnpoint @a[tag=Tutorial] -249 19 -245

## ECHO FINALE
execute if score Step Tutorial matches 1501 run tellraw @a [{color:"green",text:"\nAlmost there. The echo will give an audible sound when you are close."}]
execute if score Step Tutorial matches 1501 run effect clear @e[type=minecraft:ravager,tag=L10,name=Guardy,limit=1] slowness
execute if score Step Tutorial matches 1501 run data modify entity @e[type=minecraft:ravager,tag=L10,name=Guardy,limit=1] Silent set value 0

execute if score Step Tutorial matches 1502 run tellraw @a [{color:"green",text:"\nGreat work! The echo allows you to teleport back. Go to the green rune to leave."}]
execute if score Step Tutorial matches 1502 run bossbar set exigence:tutorial name {text:"Stand on the green rune to exit",color:"green",italic:false}
execute if score Step Tutorial matches 1502 run bossbar set exigence:tutorial value 100

execute if score Step Tutorial matches 1503 run function exigence:tutorial/leave_tutorial

