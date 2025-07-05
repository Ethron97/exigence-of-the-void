# Local tag required for a loop
scoreboard players add @e[type=minecraft:armor_stand,tag=BeaconLightLoop] NodeState 1

# Execute next animation step
execute as @e[type=minecraft:armor_stand,tag=BeaconLightLoop] at @s run function exigence:beacon/node/light_beacon

# Iterate
execute as @e[type=minecraft:armor_stand,tag=BeaconLightLoop] if score @s NodeState matches ..10 run schedule function exigence:beacon/node/light_beacon_loop 2t
# Track beacon got lit
execute as @e[type=minecraft:armor_stand,tag=BeaconLightLoop] if score @s NodeState matches 11.. run function exigence:beacon/node/track_beacon_lit
# Remove local tag
execute as @e[type=minecraft:armor_stand,tag=BeaconLightLoop] if score @s NodeState matches 11.. run tag @s remove BeaconLightLoop
