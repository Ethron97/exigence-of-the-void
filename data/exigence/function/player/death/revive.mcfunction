# Called when Ascend is triggered in multiplayer, if there are dead players

## CONSTRAINTS
#   AS player

#====================================================================================================== 

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3) I am reviving

# Reset dead score
scoreboard players set @s dead 0

# Decrement death check counter
scoreboard players remove game.dead_players game.state 1

# Revive location
function exigence:player/death/private/pick_revive_location

# Give slowfall 5 seconds
effect give @s slow_falling 5 0 true

# Enable seeing locator bar again
attribute @s waypoint_receive_range base set 1000

# Gamemode adventure
gamemode adventure @s

# Playsound
execute at @s run playsound minecraft:block.respawn_anchor.set_spawn ambient @a ~ ~ ~ 3 1

execute if entity @s[scores={game.player.mod.water_crystal=1}] run effect give @s dolphins_grace infinite 0 true

# Glow
effect give @s minecraft:glowing infinite 0 true

# Title
title @s subtitle {text:"Reviving",color:"green"}
title @s title ""
