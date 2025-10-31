# Called by player_effect_tick

## CONSTRAINTS
#   AS player who just drank potion

#=======================================================================================================

say Drinked potion

# Cleanup
scoreboard players set @s game.player.used.potion 0
clear @s glass_bottle

# Store player id
scoreboard players operation #compare profile.node.player_id = @s career.player_id

# Get player node from player id
execute as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s profile.node.player_id = #compare profile.node.player_id run tag @s add SelectedPlayerNode

# Get potion item name from player node (offhand first so mainhand is prioritized)
execute as @e[type=minecraft:armor_stand,tag=PlayerNode,tag=SelectedPlayerNode] run data modify storage exigence:player_effects potion_name set from entity @s equipment.offhand.components."minecraft:custom_data".item_name
execute as @e[type=minecraft:armor_stand,tag=PlayerNode,tag=SelectedPlayerNode] run data modify storage exigence:player_effects potion_name set from entity @s equipment.mainhand.components."minecraft:custom_data".item_name

# Setup function
scoreboard players set et.FromPotion game.effect_temp 1

# Call switch on hardcoded effect
execute if data storage exigence:player_effects {potion_name:"potion_health_a"} run function exigence:player/effects/set_effect_time_health {amplifier:0,duration:1200}
execute if data storage exigence:player_effects {potion_name:"potion_health_b"} run function exigence:player/effects/set_effect_time_health {amplifier:1,duration:1200}
execute if data storage exigence:player_effects {potion_name:"potion_health_c"} run function exigence:player/effects/set_effect_time_health {amplifier:2,duration:1200}
execute if data storage exigence:player_effects {potion_name:"potion_health_d"} run function exigence:player/effects/set_effect_time_health {amplifier:3,duration:1200}
execute if data storage exigence:player_effects {potion_name:"potion_health_e"} run function exigence:player/effects/set_effect_time_health {amplifier:4,duration:1200}
execute if data storage exigence:player_effects {potion_name:"potion_health_f"} run function exigence:player/effects/set_effect_time_health {amplifier:5,duration:1200}
execute if data storage exigence:player_effects {potion_name:"potion_health_g"} run function exigence:player/effects/set_effect_time_health {amplifier:6,duration:1200}

execute if data storage exigence:player_effects {potion_name:"potion_speed_1_a"} run function exigence:player/effects/speed/set_effect_time {level:1,duration:1200}
execute if data storage exigence:player_effects {potion_name:"potion_speed_1_b"} run function exigence:player/effects/speed/set_effect_time {level:1,duration:2400}
execute if data storage exigence:player_effects {potion_name:"potion_speed_1_c"} run function exigence:player/effects/speed/set_effect_time {level:1,duration:3600}
execute if data storage exigence:player_effects {potion_name:"potion_speed_1_d"} run function exigence:player/effects/speed/set_effect_time {level:1,duration:4800}
execute if data storage exigence:player_effects {potion_name:"potion_speed_1_e"} run function exigence:player/effects/speed/set_effect_time {level:1,duration:6000}
execute if data storage exigence:player_effects {potion_name:"potion_speed_1_f"} run function exigence:player/effects/speed/set_effect_time {level:1,duration:7200}

execute if data storage exigence:player_effects {potion_name:"potion_speed_2"} run function exigence:player/effects/speed/set_effect_time {level:2,duration:1200}
execute if data storage exigence:player_effects {potion_name:"potion_speed_3"} run function exigence:player/effects/speed/set_effect_time {level:3,duration:1200}
execute if data storage exigence:player_effects {potion_name:"potion_speed_4"} run function exigence:player/effects/speed/set_effect_time {level:4,duration:1200}

execute if data storage exigence:player_effects {potion_name:"potion_invis_a"} run function exigence:player/effects/set_effect_time {effect:'invisibility',duration:600}
execute if data storage exigence:player_effects {potion_name:"potion_invis_b"} run function exigence:player/effects/set_effect_time {effect:'invisibility',duration:1200}

execute if data storage exigence:player_effects {potion_name:"potion_jump_2_a"} run function exigence:player/effects/set_effect_time {effect:'jump',duration:200}
execute if data storage exigence:player_effects {potion_name:"potion_jump_2_b"} run function exigence:player/effects/set_effect_time {effect:'jump',duration:400}
execute if data storage exigence:player_effects {potion_name:"potion_jump_2_c"} run function exigence:player/effects/set_effect_time {effect:'jump',duration:600}
execute if data storage exigence:player_effects {potion_name:"potion_jump_2_d"} run function exigence:player/effects/set_effect_time {effect:'jump',duration:900}

execute if data storage exigence:player_effects {potion_name:"potion_jump_4"} run function exigence:player/effects/set_effect_time {effect:'jump4',duration:200}
execute if data storage exigence:player_effects {potion_name:"potion_jump_6"} run function exigence:player/effects/set_effect_time {effect:'jump6',duration:200}
execute if data storage exigence:player_effects {potion_name:"potion_jump_8"} run function exigence:player/effects/set_effect_time {effect:'jump8',duration:200}

scoreboard players set et.FromPotion game.effect_temp 0

# Remove local tag
tag @e[type=minecraft:armor_stand,tag=PlayerNode,tag=SelectedPlayerNode] remove SelectedPlayerNode
