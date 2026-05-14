# Called by final_section/tick
#   Responsible for the tutorial heartbeat in the final section

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================

# HEARTBEAT
#   Heartbeat counter (#baseHeartbeatDelay - (2*menace)) is the tick delay. Ranges from 24 BPM to 120 BPM
#   Max heartbeat is reached at menace 17, giving the player time to panic before they hit max menace properly.
#   The red border tint will let them know when they have fully reached max menace.
scoreboard players set #baseHeartbeatDelay Tutorial 44
scoreboard players operation #baseHeartbeatDelay Tutorial -= tut.menace hub.tutorial
scoreboard players operation #baseHeartbeatDelay Tutorial -= tut.menace hub.tutorial
scoreboard players operation #baseHeartbeatDelay Tutorial > #minHeartbeatDelay tick_counter
execute store result score #heartbeatModulus Tutorial run scoreboard players get tut.ticks hub.tutorial
scoreboard players operation #heartbeatModulus Tutorial %= #baseHeartbeatDelay Tutorial
execute at @a[x=12,y=97,z=-80,dx=230,dy=100,dz=250,tag=Tutorial,limit=1] if score #heartbeatModulus Tutorial matches 0 if score tut.menace hub.tutorial matches ..7 run playsound minecraft:heartbeat ambient @a ~ ~1000 ~ 1000 0.9
execute at @a[x=12,y=97,z=-80,dx=230,dy=100,dz=250,tag=Tutorial,limit=1] if score #heartbeatModulus Tutorial matches 0 if score tut.menace hub.tutorial matches 8..14 run playsound minecraft:heartbeat ambient @a ~ ~1000 ~ 1000 1
execute at @a[x=12,y=97,z=-80,dx=230,dy=100,dz=250,tag=Tutorial,limit=1] if score #heartbeatModulus Tutorial matches 0 if score tut.menace hub.tutorial matches 15.. run playsound minecraft:heartbeat ambient @a ~ ~1000 ~ 1000 1.1
