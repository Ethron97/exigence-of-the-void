# Handle villager special reflection

#====================================================================================================

# Clear tag from all reflection entities in the mirror
tag @e[x=-482,y=61,z=-192,dx=9,dy=5,dz=5,type=minecraft:mannequin,tag=Reflection,tag=VillagerReflection] remove VillagerReflection

# Assign tag to the lowest player_number reflection in the area
scoreboard players set #temp Temp 4
execute as @e[x=-482,y=61,z=-192,dx=9,dy=5,dz=5,type=minecraft:mannequin,tag=Reflection] run scoreboard players operation #temp Temp < @s game.entity.player_number
execute as @e[x=-482,y=61,z=-192,dx=9,dy=5,dz=5,type=minecraft:mannequin,tag=Reflection] if score @s game.entity.player_number = #temp Temp run tag @s add VillagerReflection

# Clear head slot and teleport villager
execute as @e[x=-482,y=61,z=-192,dx=9,dy=5,dz=5,type=minecraft:mannequin,tag=Reflection,tag=VillagerReflection] run function exigence:mirror/reflection/private/clear_reflection_equipment
execute as @e[x=-482,y=61,z=-192,dx=9,dy=5,dz=5,type=minecraft:mannequin,tag=Reflection,tag=VillagerReflection] at @s run tp @n[type=minecraft:villager,tag=NPC_Scientist,tag=Reflection,distance=..30] ~ ~ ~ ~ ~