# Called by game clock every second to update player's values if they meet the criteria

## CONSTRAINTS
#   AS player

#=================================================================================================================

# If player has speed II > 12 seconds, return
execute if score @s game.player.effects.speed2 matches 240.. run return 1

# Compare hazard score to threshhold based on player level
execute if score @s game.player.active_level matches 1 if score @s profile.data.hazard.cr.hazard_L1 matches 7.. run function exigence:player/effects/speed/set_effect_time {level:2,duration:240}
execute if score @s game.player.active_level matches 2 if score @s profile.data.hazard.cr.hazard_L2 matches 7.. run function exigence:player/effects/speed/set_effect_time {level:2,duration:240}
execute if score @s game.player.active_level matches 3 if score @s profile.data.hazard.cr.hazard_L3 matches 7.. run function exigence:player/effects/speed/set_effect_time {level:2,duration:240}
execute if score @s game.player.active_level matches 4 if score @s profile.data.hazard.cr.hazard_L4 matches 7.. run function exigence:player/effects/speed/set_effect_time {level:2,duration:240}
