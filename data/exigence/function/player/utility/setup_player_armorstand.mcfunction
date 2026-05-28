# Called on game_on
#   Assume all existing are killed on game reset before re-calling this
# Creates armorstand for the purpose of storing held items in ram

## CONSTRAINTS
#   AS player
#   IN minecraft:overworld

#====================================================================================================

# DEBUG
execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Setting up player armorstand

# Summon reflection
execute if score @s game.player.player_number matches 1 \
run summon minecraft:armor_stand 519.5 0.0 502.5 {Tags:["NewPlayerArmorstand","PlayerArmorstand","PlayerBound"],Rotation:[90,0],Invulnerable:true,ShowArms:true}
execute if score @s game.player.player_number matches 2 \
run summon minecraft:armor_stand 519.5 0.0 503.5 {Tags:["NewPlayerArmorstand","PlayerArmorstand","PlayerBound"],Rotation:[90,0],Invulnerable:true,ShowArms:true}
execute if score @s game.player.player_number matches 3 \
run summon minecraft:armor_stand 519.5 0.0 504.5 {Tags:["NewPlayerArmorstand","PlayerArmorstand","PlayerBound"],Rotation:[90,0],Invulnerable:true,ShowArms:true}
execute if score @s game.player.player_number matches 4 \
run summon minecraft:armor_stand 519.5 0.0 505.5 {Tags:["NewPlayerArmorstand","PlayerArmorstand","PlayerBound"],Rotation:[90,0],Invulnerable:true,ShowArms:true}

# Copy player number
scoreboard players operation @e[x=519,y=0,z=502,dx=0,dy=0,dz=3,type=minecraft:armor_stand,tag=NewPlayerArmorstand] game.entity.player_number = @s game.player.player_number

# Remove local tag
tag @e[x=519,y=0,z=502,dx=0,dy=0,dz=3,type=minecraft:armor_stand,tag=NewPlayerArmorstand] remove NewPlayerArmorstand
