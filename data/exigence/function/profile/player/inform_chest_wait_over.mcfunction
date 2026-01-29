# If player is online, inform that chest wait is over

## CONSTRAINTS
#   AS player

## OUTPUT
#   SCORE #player_found Temp

#====================================================================================================

tellraw @s [{text:"[CHESTS LOADED] ",color:yellow,bold:true},{text:"Another profile on your co-op has finished using the chests; they have been moved to this room.",color:gray,italic:true,bold:false}]
execute at @s run playsound minecraft:block.chest.open block @s ~ ~100 ~ 100 1
scoreboard players set #player_found Temp 1
