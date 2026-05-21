# Called on game_on
#   Assume all existing are killed on game reset before re-calling this
# Creates invisible mannequins, one for each player, for the purpose of previewing where you will be teleporting

## CONSTRAINTS
#   AS player
#   IN minecraft:overworld

#====================================================================================================

# DEBUG
execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Setting up item preview display

# Summon reflection
execute if score @s game.player.player_number matches 1 \
run summon minecraft:mannequin 534.5 0.0 486.5 {Tags:["NewTeleportPreview","TeleportPreview","PlayerBound","ETICK"],Rotation:[90,0],immovable:true,Invulnerable:true}
execute if score @s game.player.player_number matches 2 \
run summon minecraft:mannequin 534.5 0.0 487.5 {Tags:["NewTeleportPreview","TeleportPreview","PlayerBound","ETICK"],Rotation:[90,0],immovable:true,Invulnerable:true}
execute if score @s game.player.player_number matches 3 \
run summon minecraft:mannequin 534.5 0.0 488.5 {Tags:["NewTeleportPreview","TeleportPreview","PlayerBound","ETICK"],Rotation:[90,0],immovable:true,Invulnerable:true}
execute if score @s game.player.player_number matches 4 \
run summon minecraft:mannequin 534.5 0.0 489.5 {Tags:["NewTeleportPreview","TeleportPreview","PlayerBound","ETICK"],Rotation:[90,0],immovable:true,Invulnerable:true}

# Give permanent glow and invis
effect give @e[x=534,y=0,z=486,dx=0,dy=0,dz=3,type=minecraft:mannequin,tag=NewTeleportPreview] invisibility infinite 0 true
effect give @e[x=534,y=0,z=486,dx=0,dy=0,dz=3,type=minecraft:mannequin,tag=NewTeleportPreview] glowing infinite 0 true

# Copy player head to profile
function exigence:player/get/player_head_data
data modify entity @e[x=534,y=0,z=486,dx=0,dy=0,dz=3,type=minecraft:mannequin,tag=NewTeleportPreview,limit=1] profile set from storage exigence:temp player_head.components."minecraft:profile"

# Copy player number
scoreboard players operation @e[x=534,y=0,z=486,dx=0,dy=0,dz=3,type=minecraft:mannequin,tag=NewTeleportPreview] game.entity.player_number = @s game.player.player_number

# Remove local tag
tag @e[x=534,y=0,z=486,dx=0,dy=0,dz=3,type=minecraft:mannequin,tag=NewTeleportPreview] remove NewTeleportPreview

# Team
#execute as @e[type=minecraft:block_display,tag=NewItemPreview] run team join Yellow @s
