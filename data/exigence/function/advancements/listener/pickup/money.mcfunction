# Reset advancement
advancement revoke @s only exigence:listener/pickup/money

# Return if the game is not active
execute if data storage exigence:dungeon {is_active:0} run return 1

# Delete the music disc from their inventory
clear @s minecraft:amethyst_cluster 1

# Call function to handle the rest of the event
execute as @s run function exigence:player/give/money
scoreboard players add @s t_moneyPickedUp 1
scoreboard players add @s cr_moneyPickedUp 1

#say pickup money