# Disable buttons (because trial is in use)

#====================================================================================================

execute in exigence:hub positioned -15.5 184.5 -9.0 as @e[type=minecraft:block_display,tag=Trial,tag=Silence,distance=..3] \
run data modify entity @s block_state set value {Name:"minecraft:end_stone_bricks"}

execute in exigence:hub positioned -15.5 184.5 -9.0 as @e[type=minecraft:block_display,tag=Crucible,tag=Silence,distance=..3] \
run data modify entity @s block_state set value {Name:"minecraft:purpur_block"}

execute in exigence:hub positioned -15.5 184.5 -9.0 as @e[type=minecraft:block_display,tag=Endless,tag=Silence,distance=..3] \
run data modify entity @s block_state set value {Name:"minecraft:prismarine_bricks"}