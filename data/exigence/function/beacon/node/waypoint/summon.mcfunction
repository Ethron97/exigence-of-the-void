# Summon armorstand to transmit locator bar

## CONSTRAINTS
#   AS/AT beacon node

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3) Summon waypoint BEACON

# Generate new transmitor id
#scoreboard players add #sequence game.entity.waypoint_id 1

# Summon armorstand
#   No ETICK at start; Gets added once a player picks up an ardor
summon minecraft:armor_stand ~ ~ ~ {Tags:["Beacon","Waypoint","NewWaypoint"],CustomName:{text:"ArmorStand | Waypoint:Beacon"}\
,NoGravity:true,NoBasePlate:true,Invulnerable:true,Invisible:true}

# Assign transmitor id to armorstand
#scoreboard players operation @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] game.entity.waypoint_id = #sequence game.entity.waypoint_id

# Set object level
scoreboard players operation @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] game.entity.object_level = @s node.property.object_level

# Initialize style / color
waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] style set exigence:beacon
waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] color dark_gray

# Transmission range starts at 0
attribute @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] minecraft:waypoint_transmit_range base set 0

# Remove local tag
tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] remove NewWaypoint