# Called by use_item when player right clicks with a clock

## CONSTRAINTS
#   AS active player

#==================================================================================

# DEBUG
#say Use clock

# Playsound
execute at @s run playsound minecraft:item.trident.thunder ambient @a ~ ~1000 ~ 1000 1

# Clear 
scoreboard players set #remove Temp 1

# If inside a vault, return
execute if score @s VaultCode matches 1..6 run tellraw @s [{text:"This item cannot be used during a Trial",color:"red"}]
execute if score @s VaultCode matches 1..6 run return 1
#=========================================================================================================
# The following only runs if successful

# Add local tag
tag @s add Clocking

# Get player id to lookup
scoreboard players operation #compare PlayerID = @s PlayerID

# Get smallest clock id
scoreboard players set #tp_to ClockID 999999
execute as @e[type=minecraft:marker,tag=ClockMarker] if score @s PlayerID = #compare PlayerID run scoreboard players operation #tp_to ClockID < @s ClockID

# Tp player to them
execute as @e[type=minecraft:marker,tag=ClockMarker] if score @s PlayerID = #compare PlayerID if score @s ClockID = #tp_to ClockID at @s run tp @a[tag=Clocking] ~ ~ ~

# Give a couple seconds of inivisibilty and slow falling to be nice
effect give @s slow_falling 1 0 true
function exigence:player/effects/add_effect_time {effect:"invisibility",duration:60}

# Remove local tag
tag @a[tag=Clocking] remove Clocking

# Play teleport sound
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1
