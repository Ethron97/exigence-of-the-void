# Trigger from pickup/coin advancement listener if the player is wearing gold boots

## CONSTRAINTS
#   AS player
#   IF mod_LootBoots > 0

#=============================================================================================================

# Give speed based on loot boots
execute if score @s mod_LootBoots matches 1 run function exigence:player/effects/speed/add_effect_time {level:1,duration:100}
execute if score @s mod_LootBoots matches 2 run function exigence:player/effects/speed/add_effect_time {level:1,duration:160}
execute if score @s mod_LootBoots matches 3 run function exigence:player/effects/speed/add_effect_time {level:1,duration:200}
execute if score @s mod_LootBoots matches 4 run function exigence:player/effects/speed/add_effect_time {level:1,duration:300}
execute if score @s mod_LootBoots matches 5 run function exigence:player/effects/speed/add_effect_time {level:2,duration:180}
execute if score @s mod_LootBoots matches 6 run function exigence:player/effects/speed/add_effect_time {level:2,duration:300}

# Play particles
execute if score @s mod_LootBoots matches 1 at @s run particle minecraft:entity_effect{color:[0.5f,1.0f,1.0f,1.0f]} ~ ~0.2 ~ 0.6 0.3 0.6 1 3
execute if score @s mod_LootBoots matches 2 at @s run particle minecraft:entity_effect{color:[0.5f,1.0f,1.0f,1.0f]} ~ ~0.2 ~ 0.6 0.3 0.6 1 7
execute if score @s mod_LootBoots matches 3 at @s run particle minecraft:entity_effect{color:[0.5f,1.0f,1.0f,1.0f]} ~ ~0.2 ~ 0.6 0.3 0.6 1 10
execute if score @s mod_LootBoots matches 4 at @s run particle minecraft:entity_effect{color:[0.5f,1.0f,1.0f,1.0f]} ~ ~0.2 ~ 0.6 0.3 0.6 1 20
execute if score @s mod_LootBoots matches 5 at @s run particle minecraft:entity_effect{color:[0.5f,1.0f,1.0f,1.0f]} ~ ~0.2 ~ 0.6 0.3 0.6 1 30
execute if score @s mod_LootBoots matches 6 at @s run particle minecraft:entity_effect{color:[0.5f,1.0f,1.0f,1.0f]} ~ ~0.2 ~ 0.6 0.3 0.6 1 60

# Playsound
stopsound @s neutral minecraft:entity.breeze.charge
execute if score @s mod_LootBoots matches 1..2 run playsound minecraft:entity.breeze.charge neutral @s ~ ~10000 ~ 999999 1
execute if score @s mod_LootBoots matches 3..4 run playsound minecraft:entity.breeze.charge neutral @s ~ ~10000 ~ 999999 1.2
execute if score @s mod_LootBoots matches 5.. run playsound minecraft:entity.breeze.charge neutral @s ~ ~10000 ~ 999999 1.4
execute if score @s mod_LootBoots matches 6 run playsound minecraft:entity.breeze.charge neutral @s ~ ~10000 ~ 999999 1.8
