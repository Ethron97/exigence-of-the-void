## CONSTRAINTS
#   AT location
#   AS node

#==========================================================================================================

# DEBUG
#say Summon ember

# Summon a new item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:soul_campfire",count:1,components:{"minecraft:max_stack_size":1,"minecraft:custom_model_data":{"strings":["ember_ground"]}}},Tags:["NewEmber","Ember"]}

playsound minecraft:entity.blaze.hurt neutral @a ~ ~ ~ 2 0.8

# Save object level
scoreboard players operation #compare ObjectLevel = @s ObjectLevel

# Get stack size (if stack size modifier enabled)
scoreboard players set #stacksize Temp 1
execute if data storage exigence:dungeon_settings {stacked_embers:1} if score @s ObjectLevel matches 2 run scoreboard players set #stacksize Temp 2
execute if data storage exigence:dungeon_settings {stacked_embers:1} if score @s ObjectLevel matches 3 run scoreboard players set #stacksize Temp 3
execute if data storage exigence:dungeon_settings {stacked_embers:1} if score @s ObjectLevel matches 4 run scoreboard players set #stacksize Temp 4

# Ember data (removes NewEmber tag)
execute as @e[type=minecraft:item,tag=NewEmber] run function exigence:ember/private/summon_ember_data

# Increase scores
scoreboard players operation @a[tag=ActivePlayer] cr_embersDropped += #stacksize Temp
execute if score #compare ObjectLevel matches 1 run scoreboard players operation @a[tag=ActivePlayer] cr_embersDroppedL1 += #stacksize Temp
execute if score #compare ObjectLevel matches 1 run scoreboard players operation @a[tag=ActivePlayer] t_embersDroppedL1 += #stacksize Temp
execute if score #compare ObjectLevel matches 2 run scoreboard players operation @a[tag=ActivePlayer] cr_embersDroppedL2 += #stacksize Temp
execute if score #compare ObjectLevel matches 2 run scoreboard players operation @a[tag=ActivePlayer] t_embersDroppedL2 += #stacksize Temp
execute if score #compare ObjectLevel matches 3 run scoreboard players operation @a[tag=ActivePlayer] cr_embersDroppedL3 += #stacksize Temp
execute if score #compare ObjectLevel matches 3 run scoreboard players operation @a[tag=ActivePlayer] t_embersDroppedL3 += #stacksize Temp
execute if score #compare ObjectLevel matches 4 run scoreboard players operation @a[tag=ActivePlayer] cr_embersDroppedL4 += #stacksize Temp
execute if score #compare ObjectLevel matches 4 run scoreboard players operation @a[tag=ActivePlayer] t_embersDroppedL4 += #stacksize Temp
