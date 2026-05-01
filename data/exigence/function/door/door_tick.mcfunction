# Detects all keys for active doorways. Gets called from game_tick.mcfunction

# Ambient glow particles around door handles
execute as @e[type=minecraft:item_display,tag=VaultHandle] at @s if score seconds.cooldown tick_counter matches 15 run particle minecraft:glow ^ ^ ^-0.5 0.2 0.2 0.2 0 1
execute as @e[type=minecraft:item_display,tag=DoorHandle] at @s if score seconds.cooldown tick_counter matches 15 run particle minecraft:glow ^ ^ ^-0.5 0.2 0.2 0.2 0 1
