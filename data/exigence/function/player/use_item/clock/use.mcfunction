# Called by use_item when player right clicks with a clock

## CONSTRAINTS
#   AS active player

#====================================================================================================

# DEBUG
execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Use clock

# Clear 
scoreboard players set #remove Temp 1

# If inside a vault, return
execute if score @s game.player.vault_code matches 1..6 run playsound minecraft:entity.item.break player @a ~ ~ ~ 1 1
execute if score @s game.player.vault_code matches 1..6 run return run tellraw @s [{text:"The magic of the arena interferes with the device",color:"red"}]
#----------------------------------------------------------------------------------------------------
# The following only runs if successful

# Playsound (teleported from)
execute at @s run playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:item.trident.thunder player @s ~ ~1000 ~ 1000 1

# Add local tag
tag @s add Clocking

# Get player number to lookup
scoreboard players operation #compare game.player.player_number = @s game.player.player_number

# Get smallest clock id
scoreboard players set #tp_to game.item.clock_marker.id 999999
execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=ClockMarker] if score @s game.entity.player_number = #compare game.player.player_number run scoreboard players operation #tp_to game.item.clock_marker.id < @s game.item.clock_marker.id

# Tp player to them
execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=ClockMarker] if score @s game.entity.player_number = #compare game.player.player_number if score @s game.item.clock_marker.id = #tp_to game.item.clock_marker.id at @s run tp @a[tag=Clocking] ~ ~ ~ ~ ~

# Give a couple seconds of inivisibilty and slow falling to be nice
#effect give @s slow_falling 1 0 true
#function exigence:player/effects/add_effect_time {effect:"invisibility",duration:60}

# Remove local tag
tag @s remove Clocking

# Play teleport sound (teleported to)
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1
