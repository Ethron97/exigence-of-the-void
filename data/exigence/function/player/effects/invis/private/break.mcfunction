# Removes invisibility and rejoins player team
# INTERFACE Should only be called from one of the sub-functions, as those handle the player message

## CONSTRAINTS
#   AS player (on Enemy team)

#====================================================================================================

# Generic part of the message
tellraw @s [{text:"[!]",color:"red"},{text:" You are no longer invisible!",color:"gray"}]

# Clear invis
scoreboard players set @s game.player.effects.invisibility 0
effect clear @s invisibility

# Playsound
execute at @s run playsound minecraft:entity.elder_guardian.curse hostile @s ~ ~1000 ~ 1000 1

# Team join player
team join Player @s
