# Reset advancement
advancement revoke @s only exigence:listener/pickup/coin

# TUTORIAL
clear @s[tag=Tutorial] minecraft:large_amethyst_bud
execute as @s[tag=Tutorial] run function exigence:player/give/coin
execute as @s[tag=Tutorial] in exigence:tutorial run function exigence:tutorial/flow/step

# Return if the game is not active
execute unless entity @s[tag=ActivePlayer] unless data storage exigence:dungeon {is_active:1} run return 1

scoreboard players set #stacksize game.treasure.picked_up_coin_handle 1
# Get number of coins if it was a stack
execute if items entity @s inventory.* minecraft:large_amethyst_bud[custom_model_data={"strings":["coin2"]}] run scoreboard players set #stacksize game.treasure.picked_up_coin_handle 2
execute if items entity @s inventory.* minecraft:large_amethyst_bud[custom_model_data={"strings":["coin3"]}] run scoreboard players set #stacksize game.treasure.picked_up_coin_handle 3
execute if items entity @s inventory.* minecraft:large_amethyst_bud[custom_model_data={"strings":["coin4"]}] run scoreboard players set #stacksize game.treasure.picked_up_coin_handle 4
execute if items entity @s hotbar.* minecraft:large_amethyst_bud[custom_model_data={"strings":["coin2"]}] run scoreboard players set #stacksize game.treasure.picked_up_coin_handle 2
execute if items entity @s hotbar.* minecraft:large_amethyst_bud[custom_model_data={"strings":["coin3"]}] run scoreboard players set #stacksize game.treasure.picked_up_coin_handle 3
execute if items entity @s hotbar.* minecraft:large_amethyst_bud[custom_model_data={"strings":["coin4"]}] run scoreboard players set #stacksize game.treasure.picked_up_coin_handle 4
# Offhand check not necessary since there should be nothing for this to stack with

# Delete the item from their inventory
#   Check if is bonus coin
execute store result score #Bonus Temp if data entity @s {Inventory:[{components:{"minecraft:custom_data":{bonus_coin:true}}}]}

# Increase scores
execute if score #Bonus Temp matches 1 if score @s game.player.active_level matches 1 run scoreboard players operation @s profile.data.treasure.cr.coins_bonus_picked_up_L1 += #stacksize game.treasure.picked_up_coin_handle
execute if score #Bonus Temp matches 1 if score @s game.player.active_level matches 2 run scoreboard players operation @s profile.data.treasure.cr.coins_bonus_picked_up_L2 += #stacksize game.treasure.picked_up_coin_handle
execute if score #Bonus Temp matches 1 if score @s game.player.active_level matches 3 run scoreboard players operation @s profile.data.treasure.cr.coins_bonus_picked_up_L3 += #stacksize game.treasure.picked_up_coin_handle
execute if score #Bonus Temp matches 1 if score @s game.player.active_level matches 4 run scoreboard players operation @s profile.data.treasure.cr.coins_bonus_picked_up_L4 += #stacksize game.treasure.picked_up_coin_handle

# Increase source scores
function exigence:advancements/listener/pickup/coin/_source_scores

# Give coins
execute if score #stacksize game.treasure.picked_up_coin_handle matches 1.. run function exigence:player/pickup/coin
execute if score #stacksize game.treasure.picked_up_coin_handle matches 2.. run function exigence:player/pickup/coin
execute if score #stacksize game.treasure.picked_up_coin_handle matches 3.. run function exigence:player/pickup/coin
execute if score #stacksize game.treasure.picked_up_coin_handle matches 4.. run function exigence:player/pickup/coin

# Clear picked-up item
clear @s minecraft:large_amethyst_bud 1
