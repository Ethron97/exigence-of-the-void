# Reset advancement
advancement revoke @s only exigence:listener/pickup/research

# TUTORIAL
clear @a[tag=Tutorial] minecraft:burn_pottery_sherd
execute as @a[tag=Tutorial] run function exigence:player/give/fragment
execute as @a[tag=Tutorial] run scoreboard players add @s cr_researchPickedUp 1

# Return if the game is not active
execute if data storage exigence:dungeon {is_active:0} run return 1

# Add score based on source
scoreboard players set #is_pot Temp 0
execute if items entity @s hotbar.* minecraft:burn_pottery_sherd[custom_data={pot:'true'}] run scoreboard players set #is_pot Temp 1
execute if items entity @s inventory.* minecraft:burn_pottery_sherd[custom_data={pot:'true'}] run scoreboard players set #is_pot Temp 1

execute if score #is_pot Temp matches 0 run scoreboard players add @s t_researchPickedUp 1
execute if score #is_pot Temp matches 0 run scoreboard players add @s cr_researchPickedUp 1
execute if score #is_pot Temp matches 1 run scoreboard players add @s t_researchPotPickedUp 1
execute if score #is_pot Temp matches 1 run scoreboard players add @s cr_researchPotPickedUp 1

# Delete the music disc from their inventory
clear @s minecraft:burn_pottery_sherd 1

# Call function to handle the rest of the event
execute as @s run function exigence:player/give/fragment

#say research
