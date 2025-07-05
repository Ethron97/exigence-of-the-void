say summon player node

summon minecraft:armor_stand ~ ~ ~ {Tags:["NewNode"],NoBasePlate:1b,NoGravity:1b,ShowArms:1b}
execute align x align y align z run tp @e[type=minecraft:armor_stand,tag=NewNode] ~.5 ~ ~.5

# Give tag
execute as @e[type=minecraft:armor_stand,tag=NewNode] run tag @s add PlayerNode

# Assign new #highest score
execute as @e[type=minecraft:armor_stand,tag=NewNode] run scoreboard players operation @s PlayerID = #highest PlayerID

# Remove local tag
tag @e[type=minecraft:armor_stand,tag=NewNode] remove NewNode