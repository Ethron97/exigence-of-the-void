# Summon armorstand to transmit locator bar

## CONSTRAINTS
#   AS/AT item

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3) Summon waypoint from item

# Generate new transmitor id
scoreboard players add #sequence game.entity.waypoint_id 1

# Summon armorstand
#   Tags:["Item","Waypoint"]
summon minecraft:armor_stand ~ ~ ~ {Tags:["Item","Waypoint","NewWaypoint","ETICK"],CustomName:{text:"ArmorStand | Waypoint:Item"}\
,NoGravity:true,NoBasePlate:true,Invulnerable:true,Invisible:true}

# Have armorstand mount item
ride @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] mount @s

# Assign transitor id to armorstand
scoreboard players operation @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] game.entity.waypoint_id = #sequence game.entity.waypoint_id

# Assign transmitor id to self
scoreboard players operation @s game.entity.waypoint_id = #sequence game.entity.waypoint_id

# Copy object level
scoreboard players operation @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] game.entity.object_level = @s game.entity.object_level

# Initialize style (temp)
waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] style set minecraft:default
waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] color dark_gray

# Set waypoint style based on item tag
#   Echo shard
execute if entity @s[tag=EchoShard] run tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add EchoWaypoint
execute if entity @s[tag=EchoShard] run waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] color dark_aqua
execute if entity @s[tag=EchoShard] run waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] style set exigence:echo_shard
execute if entity @s[tag=EchoShard,scores={game.entity.object_level=10}] run waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] color aqua
#   Level key
execute if entity @s[tag=LevelKey] run tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add LevelKeyWaypoint
execute if entity @s[tag=Level1Key] run tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add Level1Key
execute if entity @s[tag=Level2Key] run tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add Level2Key
execute if entity @s[tag=Level3Key] run tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add Level3Key
execute if entity @s[tag=Level1Key] run waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] style set exigence:level_1_key
execute if entity @s[tag=Level2Key] run waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] style set exigence:level_2_key
execute if entity @s[tag=Level3Key] run waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] style set exigence:level_3_key
#   Vault key
execute if entity @s[tag=VaultKey] run tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add VaultKeyWaypoint
execute if entity @s[tag=VaultKey] run waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] style set exigence:vault_key

#   Ardor flame
execute if entity @s[tag=Ardor] run tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add ArdorWaypoint
execute if entity @s[tag=Ardor] run waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] style set exigence:ardor

# Dropped item
execute if entity @s[tag=DroppedItem] run tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] add DroppedItem
execute if entity @s[tag=DroppedItem] run waypoint modify @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] color green
execute if entity @s[tag=DroppedItem] run attribute @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] minecraft:waypoint_transmit_range base set 1000

# If echo shard, max transmission range now (and update)
execute if entity @s[tag=EchoShard] run attribute @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] minecraft:waypoint_transmit_range base set 1000
function exigence:game/other/waypoint/update_waypoint
# Else exact transmission info will be determined by e tick (by detection level)
execute unless entity @s[tag=EchoShard] run tag @s add DetectionRequired

# Remove local tag
tag @n[type=minecraft:armor_stand,tag=NewWaypoint,distance=..1] remove NewWaypoint