# Check player position to see if they have leveled up

## CONSTRAINTS
#   AS player

#===========================================================================================================

# Old active level
scoreboard players operation #OldActiveLevel ActiveLevel = @s ActiveLevel

# Predicates:
execute if predicate exigence:level/1 run scoreboard players set @s ActiveLevel 1
execute if predicate exigence:level/2 run scoreboard players set @s ActiveLevel 2
execute if predicate exigence:level/3 run scoreboard players set @s ActiveLevel 3
execute if predicate exigence:level/4 run scoreboard players set @s ActiveLevel 4

# If went down and echo has been found, give new return compass
execute unless score #OldActiveLevel ActiveLevel = @s ActiveLevel if data storage exigence:dungeon {all_echos_found:1} unless score @s s_disableReturnCompass matches 1 run function exigence:player/give/return_compass

# If active level changed, give title
execute unless score #OldActiveLevel ActiveLevel = @s ActiveLevel if predicate exigence:level/1 run title @s subtitle {text:"⋉ Ruins of Solstice ⋊",color:"aqua"}
execute unless score #OldActiveLevel ActiveLevel = @s ActiveLevel if predicate exigence:level/2 run title @s subtitle {text:"⋉ Mirror Mines ⋊",color:"aqua"}
execute unless score #OldActiveLevel ActiveLevel = @s ActiveLevel if predicate exigence:level/3 run title @s subtitle {text:"⋉ Temple of Fervor ⋊",color:"aqua"}
execute unless score #OldActiveLevel ActiveLevel = @s ActiveLevel if predicate exigence:level/4 run title @s subtitle {text:"⋉ Ardor's Bane ⋊",color:"aqua"}
execute unless score #OldActiveLevel ActiveLevel = @s ActiveLevel run title @s title ""

# If we want door open:
#execute if score Y TempCoords matches 32.. if entity @e[type=minecraft:armor_stand,tag=DoorNode,tag=MirrorMines,tag=Open] run scoreboard players set ActiveLevel DungeonRun 2
#execute if score Y TempCoords matches 128.. if entity @e[type=minecraft:armor_stand,tag=DoorNode,tag=TempleOfFervor,tag=Open] run scoreboard players set ActiveLevel DungeonRun 3
