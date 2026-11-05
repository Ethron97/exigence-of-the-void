# Disable buttons (because trial is in use)

#====================================================================================================

execute in exigence:hub positioned -15.5 184.5 -8.0 as @e[type=minecraft:block_display,tag=Eye,distance=..3] \
run data modify entity @s block_state set value {Name:"minecraft:redstone_block"}
