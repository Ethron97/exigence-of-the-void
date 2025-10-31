# Reset advancement
advancement revoke @s only exigence:listener/pickup/ember

#say pickup ember

# TUTORIAL
clear @s[tag=Tutorial] minecraft:soul_campfire
execute as @s[tag=Tutorial] run function exigence:player/give/ember
execute as @s[tag=Tutorial] run scoreboard players add @s profile.data.ember.cr.embers_picked_up 1
execute as @s[tag=Tutorial] in exigence:tutorial run function exigence:tutorial/flow/step

# Remove the advancement early (thereby cancelling the rest of this function) if the game is not active
execute unless entity @s[tag=ActivePlayer] unless data storage exigence:dungeon {is_active:1} run return 1

# Get number of embers if it was a stack
scoreboard players set #stacksize Temp 1
execute if items entity @s inventory.* minecraft:soul_campfire[custom_model_data={"strings":["ember2"]}] run scoreboard players set #stacksize Temp 2
execute if items entity @s inventory.* minecraft:soul_campfire[custom_model_data={"strings":["ember3"]}] run scoreboard players set #stacksize Temp 3
execute if items entity @s inventory.* minecraft:soul_campfire[custom_model_data={"strings":["ember4"]}] run scoreboard players set #stacksize Temp 4
execute if items entity @s hotbar.* minecraft:soul_campfire[custom_model_data={"strings":["ember2"]}] run scoreboard players set #stacksize Temp 2
execute if items entity @s hotbar.* minecraft:soul_campfire[custom_model_data={"strings":["ember3"]}] run scoreboard players set #stacksize Temp 3
execute if items entity @s hotbar.* minecraft:soul_campfire[custom_model_data={"strings":["ember4"]}] run scoreboard players set #stacksize Temp 4
# Offhand check not necessary since there should be nothing for this to stack with

# Delete the pickup item from their inventory
clear @s minecraft:soul_campfire 1

# Add ember to their inventory
execute if score #stacksize Temp matches 1.. run function exigence:player/give/ember
execute if score #stacksize Temp matches 2.. run function exigence:player/give/ember
execute if score #stacksize Temp matches 3.. run function exigence:player/give/ember
execute if score #stacksize Temp matches 4.. run function exigence:player/give/ember

# Increase scores
scoreboard players operation @s profile.data.ember.cr.embers_picked_up += #stacksize Temp
execute if score @s game.player.active_level matches 1 run scoreboard players operation @s profile.data.ember.cr.embers_picked_up_L1 += #stacksize Temp
execute if score @s game.player.active_level matches 2 run scoreboard players operation @s profile.data.ember.cr.embers_picked_up_L2 += #stacksize Temp
execute if score @s game.player.active_level matches 3 run scoreboard players operation @s profile.data.ember.cr.embers_picked_up_L3 += #stacksize Temp
execute if score @s game.player.active_level matches 4 run scoreboard players operation @s profile.data.ember.cr.embers_picked_up_L4 += #stacksize Temp
