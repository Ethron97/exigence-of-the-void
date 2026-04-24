# Add scores if starting hazard node setup from setup (base amount)

## CONSTRAINTS
#   AS HazardNode

#====================================================================================================

execute if score @s node.property.object_level matches 1 run scoreboard players add @a[tag=ActivePlayer] profile.data.hazard.cr.hazard_setup_L1 1
execute if score @s node.property.object_level matches 2 run scoreboard players add @a[tag=ActivePlayer] profile.data.hazard.cr.hazard_setup_L2 1
execute if score @s node.property.object_level matches 3 run scoreboard players add @a[tag=ActivePlayer] profile.data.hazard.cr.hazard_setup_L3 1
execute if score @s node.property.object_level matches 4 run scoreboard players add @a[tag=ActivePlayer] profile.data.hazard.cr.hazard_setup_L4 1
