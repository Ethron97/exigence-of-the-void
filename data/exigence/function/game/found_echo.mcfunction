# Call this function when echo shard is picked up

## CONSTRAINTS
#   AS player who picked up echo

## INPUT
#   SCORE #found_on_level Temp 1-4

#====================================================================================================

# Play wither spawn sound because it's dramatic
execute at @s run playsound minecraft:entity.wither.spawn neutral @a ~ ~1000 ~ 1000 0.8

# Add echo shard to their inventory
#   If there are multiple echos, fragment instead
execute if score echos.total game.dungeon.echo matches 2.. as @s run function exigence:player/give/echo_fragment
execute if score echos.total game.dungeon.echo matches 1 as @s run function exigence:game/found_all_echos

# Add three menace to the queue
data modify storage exigence:menace amount set value 3
data modify storage exigence:menace from set value 'other'
function exigence:menace/trigger/from_ with storage exigence:menace

# Summon three eyeballs nearby
#execute at @s run function exigence:menace/eyeball/summon_eyeball
#execute at @s run function exigence:menace/eyeball/summon_eyeball
#execute at @s run function exigence:menace/eyeball/summon_eyeball

# Get ID of the nearest chosen node (the one we just picked up from) and clear that compass id from all players
execute at @s as @n[type=minecraft:marker,tag=ChosenEchoNode,distance=..10] store result storage exigence:compass echo_id int 1 run scoreboard players get @s game.node.echo.id
execute as @a[tag=ActivePlayer] run function exigence:player/clear/echo_compass with storage exigence:compass
# Remove lightblock from above nearest echo node
execute at @s at @n[type=minecraft:marker,tag=ChosenEchoNode,distance=..10] run setblock ~ ~1 ~ air

# Increase the player scor(s)
scoreboard players add @s profile.data.ember.cr.echos_picked_up 1
execute if score @s game.player.active_level matches 1 run scoreboard players add @s profile.data.ember.cr.echos_picked_up_L1 1
execute if score @s game.player.active_level matches 2 run scoreboard players add @s profile.data.ember.cr.echos_picked_up_L2 1
execute if score @s game.player.active_level matches 3 run scoreboard players add @s profile.data.ember.cr.echos_picked_up_L3 1
execute if score @s game.player.active_level matches 4 run scoreboard players add @s profile.data.ember.cr.echos_picked_up_L4 1

# Generate 1 Red (adrenaline)
function exigence:resources/try_generate {green:0,red:1,aqua:0}

# Generate one hazard on all levels
execute if score game.difficulty game.state matches 1.. run function exigence:hazard/proc_hazard {level:1,amount:1,type:"other"}
execute if score game.difficulty game.state matches 2.. run function exigence:hazard/proc_hazard {level:2,amount:1,type:"other"}
execute if score game.difficulty game.state matches 3.. run function exigence:hazard/proc_hazard {level:3,amount:1,type:"other"}
execute if score game.difficulty game.state matches 4.. run function exigence:hazard/proc_hazard {level:4,amount:1,type:"other"}

# Triumph
function exigence:cards/triumph

# Open any unopened level door that is below this shard
execute if score #found_on_level Temp matches 2.. if score 1.opened game.level_doors matches 0 positioned -331.3 23.5 -257.3 run function exigence:door/level/door_1/open
execute if score #found_on_level Temp matches 3.. if score 2.opened game.level_doors matches 0 positioned -384.5 134.5 -90.28 run function exigence:door/level/door_2/open
execute if score #found_on_level Temp matches 4.. if score 3.opened game.level_doors matches 0 positioned -361.5 174.5 -84.7 run function exigence:door/level/door_3/open