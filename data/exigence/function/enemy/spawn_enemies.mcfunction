# In charge of making sure all enemies have been spawned

## CONSTRAINTS
#   IN minecraft:overworld 0 0 0

#====================================================================================================

# L# Tags are mostly deprecated, but are still needed to assign score since those can't be done in-line.

# Just kill and respawn enemies so there is no weird tracking-shenanigans
kill @e[type=#exigence:enemy,distance=..2000]

#====================================================================================================

## RAVAGERS
execute if score game.difficulty game.state matches 1.. run function exigence:enemy/spawn_enemies/ravager/1
execute if score game.difficulty game.state matches 2.. run function exigence:enemy/spawn_enemies/ravager/2
execute if score game.difficulty game.state matches 3.. run function exigence:enemy/spawn_enemies/ravager/3
execute if score game.difficulty game.state matches 4.. run function exigence:enemy/spawn_enemies/ravager/4

#====================================================================================================
## WITCHES
#   LEVEL 1
#       Foozle - Tavern kitchen
summon minecraft:witch -322 7 -192 {Tags:["L1","DataMerge"],CustomName:{text:"Foozle",color:"dark_red",italic:false},PersistenceRequired:1b}
#       Droop - Tavern bar island
summon minecraft:witch -329 7 -195 {Tags:["L1","DataMerge"],CustomName:{text:"Droop",color:"dark_red",italic:false},PersistenceRequired:1b}

#   LEVEL 3
#       Wum - Wine place on floor 3
execute if score game.difficulty game.state matches 3.. run summon minecraft:witch -397.5 167.0 -64.5 {Tags:["L3","DataMerge"],CustomName:{text:"Wum",color:"dark_red",italic:false},PersistenceRequired:1b}

#====================================================================================================
## WITHER SKELETON
#   LEVEL 1
#       Shrivel - Barrows
summon minecraft:wither_skeleton -293 9 -253 {Tags:["L1","DataMerge"],CustomName:{text:"Shrivel",color:"dark_red",italic:false},PersistenceRequired:1b}

# Level 3
execute if score game.difficulty game.state matches 3.. run function exigence:enemy/spawn_enemies/wither_skeleton/3

#====================================================================================================
## WARDEN
execute if score game.difficulty game.state matches 3.. run function exigence:enemy/spawn_enemies/warden/3
execute if score game.difficulty game.state matches 4.. run function exigence:enemy/spawn_enemies/warden/4

#====================================================================================================
## CREAKING
execute if score game.difficulty game.state matches 4.. run function exigence:enemy/creaking/spawn_creakings

#====================================================================================================
