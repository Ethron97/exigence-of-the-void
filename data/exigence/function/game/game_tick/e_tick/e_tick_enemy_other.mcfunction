# Tick on all enemies (other than wardens and ravagers)

## CONSTRAINTS
#   AS/AT enemy

#====================================================================================================

execute if score @s game.enemy.stun_timer matches 1.. run function exigence:cards/synaptic_shock/private/stun_tick

# Return if not second
execute unless score seconds.cooldown tick_counter matches 11 run return 0
#----------------------------------------------------------------------------------------------------

# If endermite:
execute if entity @s[type=minecraft:endermite] run scoreboard players remove @s game.endermite.timer 1
execute if entity @s[type=minecraft:endermite,scores={game.endermite.timer=..0}] run kill @s
