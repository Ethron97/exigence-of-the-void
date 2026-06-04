# Summon armorstand to transmit locator bar

## CONSTRAINTS
#   AT location

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3) Summon waypoint CART

# Generate new transmitor id
#scoreboard players add #sequence game.entity.waypoint_id 1

# Summon armorstand
#   No ETICK at start; Gets added once a player picks up the map.
summon minecraft:armor_stand ~ ~ ~ {Tags:["Cart","Waypoint","NewWaypoint"],CustomName:{text:"ArmorStand | Waypoint:Cart"}\
,NoGravity:true,NoBasePlate:true,Invulnerable:true,Invisible:true}

# Assign transitor id to armorstand
#scoreboard players operation @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] game.entity.waypoint_id = #sequence game.entity.waypoint_id

# Set object level (all carts are on level 2)
scoreboard players set @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] game.entity.object_level 2

# Initialize style / color
waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] style set exigence:cart_cache
waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] color dark_gray

# Transmission range starts at 0 (until a player picks up the map)
attribute @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] minecraft:waypoint_transmit_range base set 0

# Remove local tag
tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] remove NewWaypoint