# Typically called on game reset

## CONSTRAINTS
#   AS door node

#====================================================================================================

#fill -381 131 -92 -389 138 -92 minecraft:light_blue_stained_glass_pane

# Prevent ravagers from camping the door
#fill -383 139 -79 -387 139 -79 barrier

fill -383 132 -90 -387 136 -90 barrier replace air
fill -383 136 -89 -387 132 -89 barrier

tag @s remove ETICK
