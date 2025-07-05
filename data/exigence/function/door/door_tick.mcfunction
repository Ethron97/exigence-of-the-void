# Detects all keys for active doorways. Gets called from game_tick.mcfunction

# Ambient glow particles around door handles
execute as @e[type=minecraft:item_display,tag=VaultHandle] at @s if score SecondsCooldown TickCounter matches 15 run particle minecraft:glow ^ ^ ^-0.5 0.2 0.2 0.2 0 1
execute as @e[type=minecraft:item_display,tag=DoorHandle] at @s if score SecondsCooldown TickCounter matches 15 run particle minecraft:glow ^ ^ ^-0.5 0.2 0.2 0.2 0 1

#execute if score Difficulty DungeonRun matches 2.. run function exigence:door/level/mirror_mines/detect_key
#execute if score Difficulty DungeonRun matches 3.. run function exigence:door/level/temple_of_fervor/detect_key
#execute if score Difficulty DungeonRun matches 4.. run function exigence:door/level/ardors_bane/detect_key

# Redistribute ravagers that get too close to door nodes
execute at @e[type=armor_stand,tag=DoorNode,tag=Open] as @e[distance=..2,type=minecraft:ravager] run function exigence:enemy/ravager/redistribute
