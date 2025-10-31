# Reset advancement
advancement revoke @s only exigence:listener/pickup/ember_echo_big

#say pickup ember echo big

# TUTORIAL
clear @s[tag=Tutorial] minecraft:campfire
execute as @s[tag=Tutorial] run function exigence:player/give/ember
execute as @s[tag=Tutorial] run scoreboard players add @s profile.data.ember.cr.embers_echo_picked_up 10


# Remove the advancement early (thereby cancelling the rest of this function) if the game is not active
execute unless entity @s[tag=ActivePlayer] unless data storage exigence:dungeon {is_active:1} run return 1

# Delete the pickup item from their inventory
clear @s minecraft:campfire 1

# Increase scores
scoreboard players add @s profile.data.ember.cr.embers_echo_picked_up 10
execute if score @s game.player.active_level matches 1 run scoreboard players add @s profile.data.ember.cr.embers_echo_picked_up_L1 10
execute if score @s game.player.active_level matches 2 run scoreboard players add @s profile.data.ember.cr.embers_echo_picked_up_L2 10
execute if score @s game.player.active_level matches 3 run scoreboard players add @s profile.data.ember.cr.embers_echo_picked_up_L3 10
execute if score @s game.player.active_level matches 4 run scoreboard players add @s profile.data.ember.cr.embers_echo_picked_up_L4 10

# Add ember to their inventory
function exigence:player/give/ember
function exigence:player/give/ember
function exigence:player/give/ember
function exigence:player/give/ember
function exigence:player/give/ember

function exigence:player/give/ember
function exigence:player/give/ember
function exigence:player/give/ember
function exigence:player/give/ember
function exigence:player/give/ember
