# called from Play if resources were consumed successfully

## CONSTRAINTS
#   AS living player

#==========================================================================================================

# If no speed, return
execute unless entity @s[predicate=exigence:effects/speed] run tellraw @s [{text:" > No speed to transfer",color:"red"}]
execute unless entity @s[predicate=exigence:effects/speed] run return fail

# Store current speed amplifier for this player
scoreboard players set temp Temp -1
execute if entity @s[predicate=exigence:effects/speed0] run scoreboard players set temp Temp 0
execute if entity @s[predicate=exigence:effects/speed1] run scoreboard players set temp Temp 1
execute if entity @s[predicate=exigence:effects/speed2] run scoreboard players set temp Temp 2
execute if entity @s[predicate=exigence:effects/speed3] run scoreboard players set temp Temp 3
execute if entity @s[predicate=exigence:effects/speed4] run scoreboard players set temp Temp 4
execute if entity @s[predicate=exigence:effects/speed5] run scoreboard players set temp Temp 5
execute if entity @s[predicate=exigence:effects/speed6] run scoreboard players set temp Temp 6
execute if entity @s[predicate=exigence:effects/speed7] run scoreboard players set temp Temp 7
execute if entity @s[predicate=exigence:effects/speed8] run scoreboard players set temp Temp 8
execute if entity @s[predicate=exigence:effects/speed9] run scoreboard players set temp Temp 9

scoreboard players set temp2 Temp 0
# Call as each ravager wihtin 32 of this player
execute at @s as @e[distance=..32,type=ravager] run function exigence:cards/kinesis/private/slow

tellraw @s [{text:" > Transfered speed to ",color:"gray"},{score:{name:"temp2",objective:"Temp"},color:"green"},{text:" Ravagers",color:"gray"}]
