# Reset advancement
advancement revoke @s only exigence:listener/pickup/coin

# TUTORIAL
clear @s[tag=Tutorial] minecraft:large_amethyst_bud
execute as @s[tag=Tutorial] run function exigence:player/give/coin
execute as @s[tag=Tutorial] in exigence:tutorial run function exigence:tutorial/flow/step

# Return if the game is not active
execute unless entity @s[tag=ActivePlayer] unless data storage exigence:dungeon {is_active:1} run return 1

scoreboard players set #stacksize cr_coinsPickedUp 1
# Get number of coins if it was a stack
execute if items entity @s inventory.* minecraft:large_amethyst_bud[custom_model_data={"strings":["coin2"]}] run scoreboard players set #stacksize cr_coinsPickedUp 2
execute if items entity @s inventory.* minecraft:large_amethyst_bud[custom_model_data={"strings":["coin3"]}] run scoreboard players set #stacksize cr_coinsPickedUp 3
execute if items entity @s inventory.* minecraft:large_amethyst_bud[custom_model_data={"strings":["coin4"]}] run scoreboard players set #stacksize cr_coinsPickedUp 4
execute if items entity @s hotbar.* minecraft:large_amethyst_bud[custom_model_data={"strings":["coin2"]}] run scoreboard players set #stacksize cr_coinsPickedUp 2
execute if items entity @s hotbar.* minecraft:large_amethyst_bud[custom_model_data={"strings":["coin3"]}] run scoreboard players set #stacksize cr_coinsPickedUp 3
execute if items entity @s hotbar.* minecraft:large_amethyst_bud[custom_model_data={"strings":["coin4"]}] run scoreboard players set #stacksize cr_coinsPickedUp 4
# Offhand check not necessary since there should be nothing for this to stack with

# Delete the item from their inventory
#   Check if is bonus coin
execute store result score #Bonus Temp if data entity @s {Inventory:[{components:{"minecraft:custom_data":{bonus_coin:true}}}]}

# Increase scores
execute if score #Bonus Temp matches 0 if score @s ActiveLevel matches 1 run scoreboard players operation @s cr_coinsPickedUpL1 += #stacksize cr_coinsPickedUp
execute if score #Bonus Temp matches 0 if score @s ActiveLevel matches 2 run scoreboard players operation @s cr_coinsPickedUpL2 += #stacksize cr_coinsPickedUp
execute if score #Bonus Temp matches 0 if score @s ActiveLevel matches 3 run scoreboard players operation @s cr_coinsPickedUpL3 += #stacksize cr_coinsPickedUp
execute if score #Bonus Temp matches 0 if score @s ActiveLevel matches 4 run scoreboard players operation @s cr_coinsPickedUpL4 += #stacksize cr_coinsPickedUp
execute if score #Bonus Temp matches 0 if score @s ActiveLevel matches 1 run scoreboard players operation @s t_coinsPickedUpL1 += #stacksize cr_coinsPickedUp
execute if score #Bonus Temp matches 0 if score @s ActiveLevel matches 2 run scoreboard players operation @s t_coinsPickedUpL2 += #stacksize cr_coinsPickedUp
execute if score #Bonus Temp matches 0 if score @s ActiveLevel matches 3 run scoreboard players operation @s t_coinsPickedUpL3 += #stacksize cr_coinsPickedUp
execute if score #Bonus Temp matches 0 if score @s ActiveLevel matches 4 run scoreboard players operation @s t_coinsPickedUpL4 += #stacksize cr_coinsPickedUp

execute if score #Bonus Temp matches 1 if score @s ActiveLevel matches 1 run scoreboard players operation @s cr_coinsBonusPickedUpL1 += #stacksize cr_coinsPickedUp
execute if score #Bonus Temp matches 1 if score @s ActiveLevel matches 2 run scoreboard players operation @s cr_coinsBonusPickedUpL2 += #stacksize cr_coinsPickedUp
execute if score #Bonus Temp matches 1 if score @s ActiveLevel matches 3 run scoreboard players operation @s cr_coinsBonusPickedUpL3 += #stacksize cr_coinsPickedUp
execute if score #Bonus Temp matches 1 if score @s ActiveLevel matches 4 run scoreboard players operation @s cr_coinsBonusPickedUpL4 += #stacksize cr_coinsPickedUp
execute if score #Bonus Temp matches 1 if score @s ActiveLevel matches 1 run scoreboard players operation @s t_coinsBonusPickedUpL1 += #stacksize cr_coinsPickedUp
execute if score #Bonus Temp matches 1 if score @s ActiveLevel matches 2 run scoreboard players operation @s t_coinsBonusPickedUpL2 += #stacksize cr_coinsPickedUp
execute if score #Bonus Temp matches 1 if score @s ActiveLevel matches 3 run scoreboard players operation @s t_coinsBonusPickedUpL3 += #stacksize cr_coinsPickedUp
execute if score #Bonus Temp matches 1 if score @s ActiveLevel matches 4 run scoreboard players operation @s t_coinsBonusPickedUpL4 += #stacksize cr_coinsPickedUp

# Increase source scores
function exigence:advancements/listener/pickup/coin/_source_scores

# Give coins
execute if score #stacksize cr_coinsPickedUp matches 1.. run function exigence:player/pickup/coin
execute if score #stacksize cr_coinsPickedUp matches 2.. run function exigence:player/pickup/coin
execute if score #stacksize cr_coinsPickedUp matches 3.. run function exigence:player/pickup/coin
execute if score #stacksize cr_coinsPickedUp matches 4.. run function exigence:player/pickup/coin

# Clear picked-up item
clear @s minecraft:large_amethyst_bud 1
