# Common functions to dying from other sources
#   IE game kick and then logging in

#====================================================================================================

# Damage armor
function exigence:player/utility/armor/damage_all

#====================================================================================================
## SCORES

# Increase locational deaths
execute if score @s game.player.active_level matches 1 run scoreboard players add @s profile.data.winloss.cr.deaths_L1 1
execute if score @s game.player.active_level matches 2 run scoreboard players add @s profile.data.winloss.cr.deaths_L2 1
execute if score @s game.player.active_level matches 3 run scoreboard players add @s profile.data.winloss.cr.deaths_L3 1
execute if score @s game.player.active_level matches 4 run scoreboard players add @s profile.data.winloss.cr.deaths_L4 1
#execute if score @s game.player.active_level matches 5 run scoreboard players add @s profile.data.winloss.cr.deaths_L5 1

# Increase difficulty deaths
execute if score game.difficulty game.state matches 1 run scoreboard players add @s profile.data.winloss.cr.deaths_D1 1
execute if score game.difficulty game.state matches 2 run scoreboard players add @s profile.data.winloss.cr.deaths_D2 1
execute if score game.difficulty game.state matches 3 run scoreboard players add @s profile.data.winloss.cr.deaths_D3 1
execute if score game.difficulty game.state matches 4 run scoreboard players add @s profile.data.winloss.cr.deaths_D4 1
execute if score game.difficulty game.state matches 5 run scoreboard players add @s profile.data.winloss.cr.deaths_D5 1
execute if score game.difficulty game.state matches 6 run scoreboard players add @s profile.data.winloss.cr.deaths_D6 1

# Update killed_by scores
function exigence:player/death/private/update_scores

scoreboard players add @s profile.data.winloss.cr.deaths 1


