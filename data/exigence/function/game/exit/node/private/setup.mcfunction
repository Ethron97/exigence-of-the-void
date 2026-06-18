# Called by summon_exit_portal to handle remaining setups (to limit @es)

## CONSTRAINTS
#   AS ExitNode

#====================================================================================================

# DEBUG
execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3 Game) Setup exit node

# Remove local tag
tag @s remove NewExitNode

# Glow exit node if debug
execute if data storage exigence:dungeon {debug:1} run data merge entity @s {Glowing:1b,Invisible:0b,Marker:0b,CustomNameVisible:true}

# Initialize sound cooldown (so they don't immediately start hearing sounds at game start)
scoreboard players add @s game.entity.ambient_noise_cooldown 300

# Default object level to 1
scoreboard players set @s node.property.object_level 1

## DETERMINE EXIT LOCATION
# If difficulty 1..3, exit is on start
#execute if score game.difficulty game.state matches 1..3  run tp @s ~ ~ ~ ~ ~

# If difficulty 4, exit(s) is on a random echo node on level 2
execute if score game.difficulty game.state matches 4 run function exigence:game/exit/node/private/mirror_exit


## LOCATION SPECIFIC EFFECTS (need to happen after it got positioned)
# Summon block displays
#execute at @s run summon block_display ~ ~ ~ {teleport_duration:1,Glowing:false,Tags:["ExitPortalDisplay"],Rotation:[0.f,0.f],block_state:{Name:"minecraft:nether_portal",Properties:{}},transformation:[-0.0000f,0.0000f,-0.0100f,0.0000f,0.0000f,4.0000f,0.0000f,0.0000f,2.0000f,0.0000f,-0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
#execute at @s run summon block_display ~ ~ ~ {teleport_duration:1,Glowing:false,Tags:["ExitPortalDisplay"],Rotation:[90.f,0.f],block_state:{Name:"minecraft:nether_portal",Properties:{}},transformation:[-0.0000f,0.0000f,-0.0100f,0.0000f,0.0000f,4.0000f,0.0000f,0.0000f,2.0000f,0.0000f,-0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute at @s run summon block_display ~ ~ ~ {teleport_duration:1,Glowing:false,Tags:["ExitPortalDisplay"],Rotation:[0.f,0.f],block_state:{Name:"minecraft:nether_portal",Properties:{}},transformation:[2.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,4.0000f,0.0000f,0.0000f,0.0000f,0.0000f,8.0000f,-4.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute at @s run summon block_display ~ ~ ~ {teleport_duration:1,Glowing:false,Tags:["ExitPortalDisplay"],Rotation:[90.f,0.f],block_state:{Name:"minecraft:nether_portal",Properties:{}},transformation:[2.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,4.0000f,0.0000f,0.0000f,0.0000f,0.0000f,8.0000f,-4.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

# Join team for color
execute at @s as @e[type=minecraft:block_display,tag=ExitPortalDisplay,distance=..5] run team join LightPurple @s

# Set light above portal (gets cleared on gamereset)
execute at @s run setblock ~ ~1 ~ minecraft:light

# Summon waypoint
execute at @s run function exigence:game/exit/node/waypoint/summon
