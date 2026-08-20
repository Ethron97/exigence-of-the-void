# Called when player uses a wind charge

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

# Reset
scoreboard players set @s use.wind_charge 0

# If they have feather modifier:
execute unless score @s game.player.mod.feather matches 1 run return 0
#----------------------------------------------------------------------------------------------------
attribute @s minecraft:gravity modifier add exigence:feather -0.5 add_multiplied_base
scoreboard players set @s game.player.feather_gravity 3
