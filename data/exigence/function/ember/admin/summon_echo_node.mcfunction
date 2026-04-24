# Summon node base
execute at @s as @s run function exigence:game/admin/new_marker

# Assign tag
execute as @e[type=minecraft:marker,tag=NewNode] run tag @s add EchoNode
execute as @e[type=minecraft:marker,tag=NewNode] run tag @s add EmberNode

# Give custom name
execute as @e[type=minecraft:marker,tag=NewNode] run data modify entity @s CustomName set value {text:"Marker | EchoNode",color:"blue",italic:false}

# Manully set these later. For now, default base ember drop is 1.
execute as @e[type=minecraft:marker,tag=NewNode] run scoreboard players set @s node.echo.base_ember_drop 1

# Initialize scoreboards
$execute as @e[type=minecraft:marker,tag=NewNode] run scoreboard players set @s node.property.echo.difficulty $(ed)
execute as @e[type=minecraft:marker,tag=NewNode] run scoreboard players set @s node.ember.embers_to_drop 0
execute as @e[type=minecraft:marker,tag=NewNode] run scoreboard players set @s node.data.echo.times_chosen 0
execute as @e[type=minecraft:marker,tag=NewNode] run scoreboard players set @s node.data.echo.times_won 0

# Assign team
execute as @e[type=minecraft:marker,tag=NewNode] run team join Echo @s

# If debug, glow
execute if data storage exigence:debug {echo:1} as @e[type=minecraft:marker,tag=NewNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}
execute if data storage exigence:debug {echo:1} as @e[type=minecraft:marker,tag=NewNode] run function exigence:ember/private/summon_echo_difficulty_display

# Remove "NewNode" tag
tag @e[type=minecraft:marker,tag=NewNode] remove NewNode