# Disable buttons (because trial is in use)

#====================================================================================================

execute in exigence:hub positioned 16.5 184.5 -8.0 as @e[type=minecraft:block_display,tag=Trial,tag=Flow,distance=..3] \
run data modify entity @s block_state set value {Name:"minecraft:end_stone_bricks"}

execute in exigence:hub positioned 16.5 184.5 -8.0 as @e[type=minecraft:block_display,tag=Crucible,tag=Flow,distance=..3] \
run data modify entity @s block_state set value {Name:"minecraft:purpur_block"}

execute in exigence:hub positioned 16.5 184.5 -8.0 as @e[type=minecraft:block_display,tag=Endless,tag=Flow,distance=..3] \
run data modify entity @s block_state set value {Name:"minecraft:prismarine_bricks"}