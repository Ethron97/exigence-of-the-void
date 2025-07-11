# Resolve 1 queued menace every second
execute if score SecondsCooldown TickCounter matches 0 if score MenaceQueue DungeonRun matches 1.. run function exigence:menace/resolve_menace

# Every second, summon an eyeball (mostly here for testing)
#execute if score SecondsCooldown TickCounter matches 0 at @a[tag=ActivePlayer] run function exigence:menace/eyeball/summon_eyeball

# HEARTBEAT
#   Heartbeat counter (baseHeartbeatDelay - (2*menace)) is the tick delay. Ranges from 24 BPM to 120 BPM
#   Max heartbeat is reached at menace 17, giving the player time to panic before they hit max menace properly.
#   The red border tint will let them know when they have fully reached max menace.
scoreboard players set baseHeartbeatDelay TickCounter 44
scoreboard players operation baseHeartbeatDelay TickCounter -= Menace DungeonRun
scoreboard players operation baseHeartbeatDelay TickCounter -= Menace DungeonRun
scoreboard players operation baseHeartbeatDelay TickCounter > #minHeartbeatDelay TickCounter
execute store result score heartbeatModulus TickCounter run scoreboard players get cr_gameTicks TickCounter
scoreboard players operation heartbeatModulus TickCounter %= baseHeartbeatDelay TickCounter
execute at @e[type=minecraft:armor_stand,tag=GlobalSound] if score heartbeatModulus TickCounter matches 0 if score Menace DungeonRun matches ..7 run playsound minecraft:heartbeat ambient @a ~ ~1000 ~ 1000 0.9
execute at @e[type=minecraft:armor_stand,tag=GlobalSound] if score heartbeatModulus TickCounter matches 0 if score Menace DungeonRun matches 8..14 run playsound minecraft:heartbeat ambient @a ~ ~1000 ~ 1000 1
execute at @e[type=minecraft:armor_stand,tag=GlobalSound] if score heartbeatModulus TickCounter matches 0 if score Menace DungeonRun matches 15.. run playsound minecraft:heartbeat ambient @a ~ ~1000 ~ 1000 1.1

# On heartbeat trigger, call "heartbeat sculks" on active nodes
execute if score heartbeatModulus TickCounter matches 0 run execute as @e[type=armor_stand,tag=HeartbeatSculk] run function exigence:hazard/node/heartbeat_sculk/flip

# Update menace node cooldowns
execute as @e[type=minecraft:armor_stand,tag=MenaceNode,scores={MenaceNodeCooldown=1..}] run scoreboard players remove @s MenaceNodeCooldown 1

# Check menace nodes for nearby players
function exigence:menace/detect_menace_nodes

# MAX MENACE
execute if data storage exigence:dungeon {max_menace:1} run function exigence:menace/max_menace_tick

# EYEBALL TICK
#function exigence:menace/eyeball/eyeball_tick
