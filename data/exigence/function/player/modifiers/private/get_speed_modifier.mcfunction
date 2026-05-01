# Get speed modifier

## CONSTRAINTS
#   AS player

## OUTPUT
#   SCORE @s Temp

#====================================================================================================

## SWITCH
execute if score @s game.player.effects.speed10 matches 1.. run return run scoreboard players set @s Temp 10
execute if score @s game.player.effects.speed9 matches 1.. run return run scoreboard players set @s Temp 9
execute if score @s game.player.effects.speed8 matches 1.. run return run scoreboard players set @s Temp 8
execute if score @s game.player.effects.speed7 matches 1.. run return run scoreboard players set @s Temp 7
execute if score @s game.player.effects.speed6 matches 1.. run return run scoreboard players set @s Temp 6
execute if score @s game.player.effects.speed5 matches 1.. run return run scoreboard players set @s Temp 5
execute if score @s game.player.effects.speed4 matches 1.. run return run scoreboard players set @s Temp 4
execute if score @s game.player.effects.speed3 matches 1.. run return run scoreboard players set @s Temp 3
execute if score @s game.player.effects.speed2 matches 1.. run return run scoreboard players set @s Temp 2
execute if score @s game.player.effects.speed1 matches 1.. run return run scoreboard players set @s Temp 1