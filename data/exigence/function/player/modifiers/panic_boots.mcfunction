# Trigger from pickup/coin advancement listener if the player is wearing gold boots

# Playsound
execute if score @s mod_PanicBoots matches 1..2 run playsound minecraft:entity.breeze.deflect neutral @s ~ ~10000 ~ 999999 1
execute if score @s mod_PanicBoots matches 3..4 run playsound minecraft:entity.breeze.deflect neutral @s ~ ~10000 ~ 999999 1.2
execute if score @s mod_PanicBoots matches 5.. run playsound minecraft:entity.breeze.deflect neutral @s ~ ~10000 ~ 999999 1.4
execute if score @s mod_PanicBoots matches 6 run playsound minecraft:entity.breeze.deflect neutral @s ~ ~10000 ~ 999999 1.8

# Give speed based on loot boots
execute if score @s mod_PanicBoots matches 1 run function exigence:player/effects/speed/add_effect_time {level:2,duration:80}
execute if score @s mod_PanicBoots matches 2 run function exigence:player/effects/speed/add_effect_time {level:2,duration:120}
execute if score @s mod_PanicBoots matches 3 run function exigence:player/effects/speed/add_effect_time {level:2,duration:160}
execute if score @s mod_PanicBoots matches 4 run function exigence:player/effects/speed/add_effect_time {level:2,duration:160}
execute if score @s mod_PanicBoots matches 4 run function exigence:player/effects/add_effect_time {effect:"jump",duration:40}
execute if score @s mod_PanicBoots matches 5 run function exigence:player/effects/speed/add_effect_time {level:2,duration:160}
execute if score @s mod_PanicBoots matches 5 run function exigence:player/effects/add_effect_time {effect:"jump",duration:80}
execute if score @s mod_PanicBoots matches 6 run function exigence:player/effects/speed/add_effect_time {level:2,duration:200}
execute if score @s mod_PanicBoots matches 6 run function exigence:player/effects/add_effect_time {effect:"jump",duration:200}

# Play particles
execute if score @s mod_PanicBoots matches 1 at @s run particle minecraft:entity_effect{color:[0.2f,1.0f,0.5f,1.0f]} ~ ~0.2 ~ 0.6 0.3 0.6 1 3
execute if score @s mod_PanicBoots matches 2 at @s run particle minecraft:entity_effect{color:[0.2f,1.0f,0.5f,1.0f]} ~ ~0.2 ~ 0.6 0.3 0.6 1 7
execute if score @s mod_PanicBoots matches 3 at @s run particle minecraft:entity_effect{color:[0.2f,1.0f,0.5f,1.0f]} ~ ~0.2 ~ 0.6 0.3 0.6 1 10
execute if score @s mod_PanicBoots matches 4 at @s run particle minecraft:entity_effect{color:[0.2f,1.0f,0.5f,1.0f]} ~ ~0.2 ~ 0.6 0.3 0.6 1 20
execute if score @s mod_PanicBoots matches 5 at @s run particle minecraft:entity_effect{color:[0.2f,1.0f,0.5f,1.0f]} ~ ~0.2 ~ 0.6 0.3 0.6 1 30
execute if score @s mod_PanicBoots matches 6 at @s run particle minecraft:entity_effect{color:[0.2f,1.0f,0.5f,1.0f]} ~ ~0.2 ~ 0.6 0.3 0.6 1 60
