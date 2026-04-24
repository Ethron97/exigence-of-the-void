# Detects all keys for active doorways. Gets called from game_tick.mcfunction

# Ambient glow particles around door handles
execute as @e[type=minecraft:item_display,tag=VaultHandle] at @s if score seconds.cooldown tick_counter matches 15 run particle minecraft:glow ^ ^ ^-0.5 0.2 0.2 0.2 0 1
execute as @e[type=minecraft:item_display,tag=DoorHandle] at @s if score seconds.cooldown tick_counter matches 15 run particle minecraft:glow ^ ^ ^-0.5 0.2 0.2 0.2 0 1

#execute if score game.difficulty game.state matches 2.. run function exigence:door/level/mirror_mines/detect_key
#execute if score game.difficulty game.state matches 3.. run function exigence:door/level/temple_of_fervor/detect_key
#execute if score game.difficulty game.state matches 4.. run function exigence:door/level/ardors_bane/detect_key

# Redistribute ravagers that get too close to door nodes
execute at @e[type=minecraft:armor_stand,tag=DoorNode,tag=Open] as @e[type=minecraft:ravager,distance=..2] run function exigence:enemy/ravager/redistribute
