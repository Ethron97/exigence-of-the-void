# Disable buttons (because trial is in use)

#====================================================================================================

execute in exigence:hub positioned 16.5 184.5 -8.0 as @e[type=minecraft:block_display,tag=Flow,distance=..3] \
run data modify entity @s block_state set value {Name:"minecraft:redstone_block"}
