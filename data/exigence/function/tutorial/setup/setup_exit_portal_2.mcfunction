# Called by setup_exit_portal

## CONSTRAINTS
#   AS exit portal marker

#======================================================================================================

tag @s remove NewTutorialExitNode

# Initialize sound cooldown (so they don't immediately start hearing sounds at game start)
scoreboard players add @s AmbientNoiseCooldown 300

## LOCATION SPECIFIC EFFECTS (need to happen after it got positioned)
# Summon block displays
#execute at @s run summon block_display ~ ~ ~ {teleport_duration:1,Glowing:false,Tags:["TutorialExitPortalDisplay"],Rotation:[0.f,0.f],block_state:{Name:"minecraft:nether_portal",Properties:{}},transformation:[-0.0000f,0.0000f,-0.0100f,0.0000f,0.0000f,4.0000f,0.0000f,0.0000f,2.0000f,0.0000f,-0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
#execute at @s run summon block_display ~ ~ ~ {teleport_duration:1,Glowing:false,Tags:["TutorialExitPortalDisplay"],Rotation:[90.f,0.f],block_state:{Name:"minecraft:nether_portal",Properties:{}},transformation:[-0.0000f,0.0000f,-0.0100f,0.0000f,0.0000f,4.0000f,0.0000f,0.0000f,2.0000f,0.0000f,-0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute at @s run summon block_display ~ ~ ~ {teleport_duration:1,Glowing:false,Tags:["TutorialExitPortalDisplay"],Rotation:[0.f,0.f],block_state:{Name:"minecraft:nether_portal",Properties:{}},transformation:[2.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,4.0000f,0.0000f,0.0000f,0.0000f,0.0000f,8.0000f,-4.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute at @s run summon block_display ~ ~ ~ {teleport_duration:1,Glowing:false,Tags:["TutorialExitPortalDisplay"],Rotation:[90.f,0.f],block_state:{Name:"minecraft:nether_portal",Properties:{}},transformation:[2.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,4.0000f,0.0000f,0.0000f,0.0000f,0.0000f,8.0000f,-4.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

# Join team for color
execute at @s as @e[distance=..5,type=block_display,tag=TutorialExitPortalDisplay] run team join LightPurple @s

# Set light above portal (gets cleared on gamereset)
execute at @s run setblock ~ ~1 ~ minecraft:light
