# Called from loading sequence

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

say (D3) Drop level keys

# Reset tag
tag @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=KeyDropper] remove KeyDropper

execute if score game.difficulty game.state matches 2.. run scoreboard players operation #i Temp = 1.keys_to_drop game.level_doors
execute if score game.difficulty game.state matches 2.. if score #i Temp matches 1.. run function exigence:treasure/keys/drop_mirror_mine_keys

execute if score game.difficulty game.state matches 3.. run scoreboard players operation #i Temp = 2.keys_to_drop game.level_doors
execute if score game.difficulty game.state matches 3.. if score #i Temp matches 1.. run function exigence:treasure/keys/drop_temple_keys

execute if score game.difficulty game.state matches 4.. run scoreboard players operation #i Temp = 3.keys_to_drop game.level_doors
execute if score game.difficulty game.state matches 4.. if score #i Temp matches 1.. run function exigence:treasure/keys/drop_ardor_keys
