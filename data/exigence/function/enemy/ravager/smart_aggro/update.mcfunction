# Update state based on aggroing

## CONSTRAINTS
#   AS ravager

#====================================================================================================

# FAILED EXPERIEMENT.
# Even with a 5 second delay, all it does is make the DAMAGED entity forget the target, but other nearbyu ravagers
# WILL STILL AGGRO the player from the hidden reinforcement mechanic when the main ravager is teleported back.

#====================================================================================================

execute if score toggle.enemy debug matches 1 if score debug.level debug matches 3.. run say (D3 Enemy) Update smart aggro

scoreboard players remove @s game.ravager.aggro_status 1

execute if score @s game.ravager.aggro_status matches 90 run function exigence:enemy/ravager/smart_aggro/damage

execute if score @s game.ravager.aggro_status matches 1 run function exigence:enemy/ravager/smart_aggro/tp_return with entity @s data.custom_data