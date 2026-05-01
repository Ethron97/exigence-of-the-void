# Ensures that the necessary mirror entities exist for this player

## CONSTRAINTS
#   AS player
#   Assumes old entities have been removed

#====================================================================================================

# Summon reflection
execute if score @s game.player.player_number matches 1 \
run summon armor_stand 534.5 0.0 502.5 {Tags:["Reflection","NewMirrorEntity","MirrorEntity"],NoGravity:true,Invisible:true,NoBasePlate:true,ShowArms:true,Rotation:[90,0]}
execute if score @s game.player.player_number matches 2 \
run summon armor_stand 534.5 0.0 503.5 {Tags:["Reflection","NewMirrorEntity","MirrorEntity"],NoGravity:true,Invisible:true,NoBasePlate:true,ShowArms:true,Rotation:[90,0]}
execute if score @s game.player.player_number matches 3 \
run summon armor_stand 534.5 0.0 504.5 {Tags:["Reflection","NewMirrorEntity","MirrorEntity"],NoGravity:true,Invisible:true,NoBasePlate:true,ShowArms:true,Rotation:[90,0]}
execute if score @s game.player.player_number matches 4 \
run summon armor_stand 534.5 0.0 505.5 {Tags:["Reflection","NewMirrorEntity","MirrorEntity"],NoGravity:true,Invisible:true,NoBasePlate:true,ShowArms:true,Rotation:[90,0]}

# Copy player number
scoreboard players operation @e[x=534,y=0,z=502,dx=0,dy=0,dz=3,type=minecraft:armor_stand,tag=NewMirrorEntity] game.entity.player_number = @s game.player.player_number

# Copy player head
function exigence:player/get/player_head_data
data modify entity @e[x=534,y=0,z=502,dx=0,dy=0,dz=3,type=minecraft:armor_stand,tag=NewMirrorEntity,limit=1] equipment.head set from storage exigence:temp player_head

# Copy from head to custom data so we can-reload easily
data modify entity @e[x=534,y=0,z=502,dx=0,dy=0,dz=3,type=minecraft:armor_stand,tag=NewMirrorEntity,limit=1] data.custom_data.player_head set from storage exigence:temp player_head

# Remove local tag
tag @e[x=534,y=0,z=502,dx=0,dy=0,dz=3,type=minecraft:armor_stand,tag=NewMirrorEntity] remove NewMirrorEntity
