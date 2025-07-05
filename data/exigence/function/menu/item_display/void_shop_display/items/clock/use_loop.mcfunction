## DEPCREATED

# Called by clock.use

# Iterate over previous clocknodes until there isn't one, going down clockid one at a time

# Tag target
execute as @e[type=marker,tag=ClockMarker] if score @s ClockID = #tp_to ClockID run tag @s add NextMarker

# If no target, return
execute unless entity @e[type=marker,tag=ClockMarker,tag=NextMarker] run return 1

# TP player
execute at @e[type=marker,tag=ClockMarker,tag=NextMarker] run tp @a[tag=ActivePlayer] ~ ~ ~

# Remove local tag
tag @e[type=marker,tag=ClockMarker,tag=NextMarker] remove NextMarker

# Playsound
execute at @a[tag=ActivePlayer] run playsound minecraft:entity.enderman.teleport ambient @a ~ ~1000 ~ 1000 1.2

# Decrease tp to
scoreboard players remove #tp_to ClockID 1

# iterate
schedule function exigence:menu/item_display/void_shop_display/items/clock/use_loop 3t
