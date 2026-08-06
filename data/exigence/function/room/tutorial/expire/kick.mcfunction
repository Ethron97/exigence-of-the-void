# Kick this player

## CONSTRAINTS
#   AS player

## OUTPUT
#   SCORE #player_found_expire Temp 1

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Kick player (TUTORIAL EXPIRE)

# Set output
scoreboard players set #player_found_expire Temp 1

# Custom kick message
tellraw @s [{text:"[",color:"gray"},{text:"!",color:"red"},{text:"]",color:"gray"},{text:" You were \
kicked because you exceeded the room time limit and other people are waiting to get in.",color:"red"}]

# Call kick
function exigence:tutorial/access/kick

# Playsound
execute at @s run playsound minecraft:entity.player.teleport player @s ~ ~ ~
execute at @s run playsound minecraft:block.iron_door.close player @s ~ ~ ~