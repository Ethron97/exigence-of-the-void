# Called on game_on
#   Assume all existing are killed on game reset before re-calling this
# Creates interaction for any menu related interactions in the game

## CONSTRAINTS
#   AS player
#   IN minecraft:overworld

#====================================================================================================

# DEBUG
execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Setting up player game interaction

# Summon reflection
execute if score @s game.player.player_number matches 1 \
run summon minecraft:interaction 519.5 0.0 486.5 {Tags:["NewPlayerInteraction","PlayerInteraction","PlayerBound","FunctionInteraction"],response:true,width:1,height:1}
execute if score @s game.player.player_number matches 2 \
run summon minecraft:interaction 519.5 0.0 487.5 {Tags:["NewPlayerInteraction","PlayerInteraction","PlayerBound","FunctionInteraction"],response:true,width:1,height:1}
execute if score @s game.player.player_number matches 3 \
run summon minecraft:interaction 519.5 0.0 488.5 {Tags:["NewPlayerInteraction","PlayerInteraction","PlayerBound","FunctionInteraction"],response:true,width:1,height:1}
execute if score @s game.player.player_number matches 4 \
run summon minecraft:interaction 519.5 0.0 489.5 {Tags:["NewPlayerInteraction","PlayerInteraction","PlayerBound","FunctionInteraction"],response:true,width:1,height:1}

# Copy player number
scoreboard players operation @e[x=519,y=0,z=486,dx=0,dy=0,dz=3,type=minecraft:interaction,tag=NewPlayerInteraction] game.entity.player_number = @s game.player.player_number

# Remove local tag
tag @e[x=519,y=0,z=486,dx=0,dy=0,dz=3,type=minecraft:interaction,tag=NewPlayerInteraction] remove NewPlayerInteraction
