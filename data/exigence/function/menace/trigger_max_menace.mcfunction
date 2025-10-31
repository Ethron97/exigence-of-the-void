# Call from resolve_menace when max menace is reached

# Update storage
data modify storage exigence:dungeon max_menace set value 1

# Enable red vinette
worldborder warning distance 300000

# Playsound
playsound minecraft:block.end_portal.spawn hostile @a 0 100 0 1000 1

# Set bossbar color to red, and 100%
bossbar set exigence:bossbar color red
bossbar set exigence:bossbar value 100

bossbar set exigence:last_card name {text:"!!! DANGER !!!",color:"red"}

# Disable interactables
execute as @e[type=minecraft:armor_stand,tag=BerryNode] run function exigence:botany/node/berry_bush_inactive
execute as @e[type=minecraft:armor_stand,tag=BellNode] run function exigence:bell/node/deactivate
execute as @e[type=minecraft:armor_stand,tag=AltarNode] run function exigence:altar/node/remove_interaction

# Increase ravager follow range
execute as @e[type=minecraft:ravager] run attribute @s follow_range base set 200

# Let's not disable beacons.. so you can still win
#execute as @e[type=minecraft:armor_stand,tag=BeaconNode] run function exigence:beacon/node/remove_interaction

# Disable opening new vault doors
kill @e[type=minecraft:item_display,tag=VaultHandle]
kill @e[type=minecraft:interaction,tag=VaultHandle]

# Allow ravagers up certain areas
## Cherry tree cave
setblock -342 14 -253 minecraft:air
setblock -356 7 -215 minecraft:cyan_terracotta

## Canyon wall above fountain house roofs
setblock -355 15 -177 minecraft:air

## Broken library sculk stack for roof access
fill -335 10 -238 -335 12 -238 sculk

## Staircase red house roof access
setblock -323 16 -239 sculk

# Increase scores
scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.cr.max_menace_reached 1

# Clear all spellbound cards, since they can't play them at max menace anyways.
execute as @a[tag=ActivePlayer] run function exigence:player/clear/all_spellbound {type:'hotbar',index:0}
