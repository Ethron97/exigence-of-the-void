# Call this function when echo shard is picked up

## CONSTRAINTS
#   AS player who picked up echo

# Play wither spawn sound because it's dramatic
execute at @s run playsound minecraft:entity.wither.spawn neutral @a ~ ~1000 ~ 1000 0.8

# Add three menace to the queue
data modify storage exigence:menace amount set value 3
data modify storage exigence:menace from set value 'Other'
function exigence:menace/trigger/from_ with storage exigence:menace

# Summon three eyeballs nearby
#execute at @s run function exigence:menace/eyeball/summon_eyeball
#execute at @s run function exigence:menace/eyeball/summon_eyeball
#execute at @s run function exigence:menace/eyeball/summon_eyeball

# Get ID of the nearest chosen node (the one we just picked up from) and clear that compass id from all players
execute at @s as @e[type=minecraft:armor_stand,tag=ChosenEchoNode,sort=nearest,limit=1] store result storage exigence:compass echo_id int 1 run scoreboard players get @s EchoID
execute as @a[tag=ActivePlayer] run function exigence:player/clear/echo_compass with storage exigence:compass
# Remove lightblock from above nearest echo node
execute at @s at @e[type=minecraft:armor_stand,tag=ChosenEchoNode,sort=nearest,limit=1] run setblock ~ ~1 ~ air


# Add echo shard to their inventory
#   If there are multiple echos, fragment instead
execute if score EchosRequired DungeonRun matches 2.. as @s run function exigence:player/give/echo_fragment
execute if score EchosRequired DungeonRun matches 1 as @s run function exigence:game/found_all_echos

# Increase the player's t_echosPickedUp (total) score by 1
scoreboard players add @s t_echosPickedUp 1
execute if score @s ActiveLevel matches 1 run scoreboard players add @s t_echosPickedUpL1 1
execute if score @s ActiveLevel matches 2 run scoreboard players add @s t_echosPickedUpL2 1
execute if score @s ActiveLevel matches 3 run scoreboard players add @s t_echosPickedUpL3 1
execute if score @s ActiveLevel matches 4 run scoreboard players add @s t_echosPickedUpL4 1

# Increase the player's cr_echosPickedUp (current run) score by 1
scoreboard players add @s cr_echosPickedUp 1
execute if score @s ActiveLevel matches 1 run scoreboard players add @s cr_echosPickedUpL1 1
execute if score @s ActiveLevel matches 2 run scoreboard players add @s cr_echosPickedUpL2 1
execute if score @s ActiveLevel matches 3 run scoreboard players add @s cr_echosPickedUpL3 1
execute if score @s ActiveLevel matches 4 run scoreboard players add @s cr_echosPickedUpL4 1

# Generate 1 Red (adrenaline)
function exigence:resources/try_generate {green:0,red:1,aqua:0}

# Generate one hazard on all levels
execute if score Difficulty DungeonRun matches 1.. run function exigence:hazard/proc_hazard {level:1,amount:1,type:"Other"}
execute if score Difficulty DungeonRun matches 2.. run function exigence:hazard/proc_hazard {level:2,amount:1,type:"Other"}
execute if score Difficulty DungeonRun matches 3.. run function exigence:hazard/proc_hazard {level:3,amount:1,type:"Other"}
execute if score Difficulty DungeonRun matches 4.. run function exigence:hazard/proc_hazard {level:4,amount:1,type:"Other"}


# Triumph
function exigence:cards/triumph

# Enable these:
# t_echosCollected (victories)
# t_echosLost (losses where echo had been found)

# Remove local tag
tag @s remove FoundEcho
