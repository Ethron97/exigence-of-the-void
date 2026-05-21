# Call from resolve_menace when max menace is reached

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================
execute unless dimension minecraft:overworld run return run say Trigger max menace called from not overworld?
#----------------------------------------------------------------------------------------------------

execute if score toggle.menace debug matches 1 if score debug.level debug matches 3.. run say (D3) Max menace reached

# Update storage
scoreboard players set game.max_menace game.state 1

# Enable red vinette
worldborder warning distance 300000

# Playsound
playsound minecraft:block.end_portal.spawn hostile @a[tag=ActivePlayer] 0 100 0 1000 1

# Set bossbar color to red, and 100%
bossbar set exigence:bossbar color red
bossbar set exigence:bossbar value 100
bossbar set exigence:last_card name {text:"!!! DANGER !!!",color:"red"}

# Disable interactables
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BerryNode] run function exigence:botany/node/berry_bush_inactive
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BellNode] at @s run function exigence:bell/node/deactivate
#execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=AltarNode] at @s run function exigence:altar/node/remove_interaction
# Since altars are multi-stage (and we can't visually indicate its disabled), just remove particles so players can still try and click to get message
tag @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:interaction,tag=AltarInteract,tag=ETICK] remove ETICK

# Disable opening new vault doors
kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item_display,tag=VaultHandle]
kill @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:interaction,tag=VaultHandle]

# Increase scores
scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.cr.max_menace_reached 1

# Clear all spellbound cards, since they can't play them at max menace anyways.
execute as @a[tag=ActivePlayer] run function exigence:player/clear/all_spellbound

#====================================================================================================
## Allow ravagers up certain areas
# Cherry tree cave
setblock -342 14 -253 minecraft:air
setblock -356 7 -215 minecraft:cyan_terracotta

# Canyon wall above fountain house roofs
setblock -355 15 -177 minecraft:air

# Broken library sculk stack for roof access
fill -335 10 -238 -335 12 -238 sculk

# Staircase red house roof access
setblock -323 16 -239 sculk