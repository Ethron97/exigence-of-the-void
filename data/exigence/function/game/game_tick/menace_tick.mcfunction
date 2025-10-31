# Resolve 1 queued menace every second
execute if score seconds.cooldown tick_counter matches 0 if score MenaceQueue DungeonRun matches 1.. run function exigence:menace/resolve_menace

# Every second, summon an eyeball (mostly here for testing)
#execute if score seconds.cooldown tick_counter matches 0 at @a[tag=ActivePlayer] run function exigence:menace/eyeball/summon_eyeball

# HEARTBEAT
#   Heartbeat counter (#baseHeartbeatDelay - (2*menace)) is the tick delay. Ranges from 24 BPM to 120 BPM
#   Max heartbeat is reached at menace 17, giving the player time to panic before they hit max menace properly.
#   The red border tint will let them know when they have fully reached max menace.
scoreboard players set #baseHeartbeatDelay tick_counter 44
scoreboard players operation #baseHeartbeatDelay tick_counter -= Menace DungeonRun
scoreboard players operation #baseHeartbeatDelay tick_counter -= Menace DungeonRun
scoreboard players operation #baseHeartbeatDelay tick_counter > #minHeartbeatDelay tick_counter
execute store result score #heartbeatModulus tick_counter run scoreboard players get game.ticks tick_counter
scoreboard players operation #heartbeatModulus tick_counter %= #baseHeartbeatDelay tick_counter
execute positioned -200 1000 -200 if score #heartbeatModulus tick_counter matches 0 if score Menace DungeonRun matches ..7 run playsound minecraft:heartbeat ambient @a ~ ~1000 ~ 1000 0.9
execute positioned -200 1000 -200 if score #heartbeatModulus tick_counter matches 0 if score Menace DungeonRun matches 8..14 run playsound minecraft:heartbeat ambient @a ~ ~1000 ~ 1000 1
execute positioned -200 1000 -200 if score #heartbeatModulus tick_counter matches 0 if score Menace DungeonRun matches 15.. run playsound minecraft:heartbeat ambient @a ~ ~1000 ~ 1000 1.1

# On heartbeat trigger, call "heartbeat sculks" on active nodes
execute if score #heartbeatModulus tick_counter matches 0 run execute as @e[type=armor_stand,tag=HeartbeatSculk] run function exigence:hazard/node/heartbeat_sculk/flip

# Update menace node cooldowns
execute as @e[type=minecraft:armor_stand,tag=MenaceNode,scores={game.node.menace.cooldown=1..}] run scoreboard players remove @s game.node.menace.cooldown 1

# Check menace nodes for nearby players
function exigence:menace/detect_menace_nodes

# MAX MENACE
execute if data storage exigence:dungeon {max_menace:1} run function exigence:menace/max_menace_tick

# EYEBALL TICK
#function exigence:menace/eyeball/eyeball_tick
