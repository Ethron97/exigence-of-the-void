# Check if player has currency (just warn)

## CONSTRAINTS
#   AS player

#====================================================================================================

# Clear currency
execute store result score #temp Temp run clear @s #exigence:currency 0

# Compare
execute if score #temp Temp matches 0 run return 0
#----------------------------------------------------------------------------------------------------

# Message this player
tellraw @s [{text:"!!! Warning: ",color:"yellow"},{text:"You are receiving this warning because you have Currency item(s) in your inventory.",color:"gray"}]
# TODO setting to disable this warning, in a tellraw. (Because there are times the player may WANT to bring currency).

execute at @s run playsound minecraft:block.sculk_sensor.clicking ui @s ~ ~10 ~ 2 1.5
