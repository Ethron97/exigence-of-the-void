# Reset advancement
advancement revoke @s only exigence:listener/pickup/ember_echo

#say pickup ember echo

# TUTORIAL
clear @a[tag=Tutorial] minecraft:campfire
execute as @a[tag=Tutorial] run function exigence:player/give/ember
execute as @a[tag=Tutorial] run scoreboard players add @s cr_embersEchoPickedUp 1

# Remove the advancement early (thereby cancelling the rest of this function) if the game is not active
execute if data storage exigence:dungeon {is_active:0} run return 1

# Delete the pickup item from their inventory
clear @s minecraft:campfire 1

# Increase scores
scoreboard players add @s t_embersEchoPickedUp 1
scoreboard players add @s cr_embersEchoPickedUp 1
execute if score @s ActiveLevel matches 1 run scoreboard players add @s t_embersEchoPickedUpL1 1
execute if score @s ActiveLevel matches 1 run scoreboard players add @s cr_embersEchoPickedUpL1 1
execute if score @s ActiveLevel matches 2 run scoreboard players add @s t_embersEchoPickedUpL2 1
execute if score @s ActiveLevel matches 2 run scoreboard players add @s cr_embersEchoPickedUpL2 1
execute if score @s ActiveLevel matches 3 run scoreboard players add @s t_embersEchoPickedUpL3 1
execute if score @s ActiveLevel matches 3 run scoreboard players add @s cr_embersEchoPickedUpL3 1
execute if score @s ActiveLevel matches 4 run scoreboard players add @s t_embersEchoPickedUpL4 1
execute if score @s ActiveLevel matches 4 run scoreboard players add @s cr_embersEchoPickedUpL4 1

# Add ember to their inventory
function exigence:player/give/ember
