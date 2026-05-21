# Called by game clock every second to update player's values if they meet the criteria

## CONSTRAINTS
#   AS player

#====================================================================================================

# If player has speed II > 12 seconds, return
#   12 seconds because if it's less than 12, it would continually flash for the player which is annoying.
execute if score @s game.player.effects.speed2 matches 240.. run return 1
#----------------------------------------------------------------------------------------------------

# Compare hazard score to threshhold based on player level
execute if score @s game.player.active_level matches 1 if score hazard.level_1 game.dungeon.hazard matches 7.. run function exigence:player/effects/speed/set_effect_time {level:2,duration:240}
execute if score @s game.player.active_level matches 2 if score hazard.level_2 game.dungeon.hazard matches 7.. run function exigence:player/effects/speed/set_effect_time {level:2,duration:240}
execute if score @s game.player.active_level matches 3 if score hazard.level_3 game.dungeon.hazard matches 7.. run function exigence:player/effects/speed/set_effect_time {level:2,duration:240}
execute if score @s game.player.active_level matches 4 if score hazard.level_4 game.dungeon.hazard matches 7.. run function exigence:player/effects/speed/set_effect_time {level:2,duration:240}
