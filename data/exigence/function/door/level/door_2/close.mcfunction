# Typically called on game reset


#fill -381 131 -92 -389 138 -92 minecraft:light_blue_stained_glass_pane

# Prevent ravagers from camping the door
#fill -383 139 -79 -387 139 -79 barrier



fill -383 132 -90 -387 136 -90 barrier replace air

tag @e[type=minecraft:armor_stand,tag=DoorNode,tag=Door2] remove Open
