# Called by game clock every second to update player's values if they meet the criteria

## CONSTRAINTS
#   AS player

#=================================================================================================================

# If player has speed II > 12 seconds, return
execute if score @s effect_speed2 matches 240.. run return 1

# Compare hazard score to threshhold based on player level
execute if score @s ActiveLevel matches 1 if score @s cr_hazardL1 matches 7.. run function exigence:player/effects/speed/set_effect_time {level:2,duration:240}
execute if score @s ActiveLevel matches 2 if score @s cr_hazardL2 matches 7.. run function exigence:player/effects/speed/set_effect_time {level:2,duration:240}
execute if score @s ActiveLevel matches 3 if score @s cr_hazardL3 matches 7.. run function exigence:player/effects/speed/set_effect_time {level:2,duration:240}
execute if score @s ActiveLevel matches 4 if score @s cr_hazardL4 matches 7.. run function exigence:player/effects/speed/set_effect_time {level:2,duration:240}
