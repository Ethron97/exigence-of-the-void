# Summon armorstand to transmit locator bar

## CONSTRAINTS
#   AS variance node
#   AT location

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3) Summon waypoint CART

# Generate new transmitor id
#scoreboard players add #sequence game.entity.waypoint_id 1

# Summon armorstand
#   YES ETICK at start; Still want to remove the waypoint when pots are looted, even if map isn't picked up.
summon minecraft:armor_stand ~ ~ ~ {Tags:["Cart","Waypoint","NewWaypoint","ETICK"],CustomName:{text:"ArmorStand | Waypoint:Cart"}\
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

# If from card, start with Active tag so it shows up objective bossbar
execute if entity @s[tag=CartCacheFromCard] run tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add ObjectiveBossbar

# Remove local tag
tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] remove NewWaypoint