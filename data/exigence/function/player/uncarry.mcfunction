# Called by player carrying NPC to uncarry
#   Called in COOP on player death

## CONSTRAINTS
#   AS player carrying NPC

#====================================================================================================

# Kill Villager (after tping up so it doesn't look weird)
execute as @e[type=minecraft:villager,tag=Carried] run function exigence:misc/entity/unload_entity

tellraw @s {text:"The NPC returns to hiding",color:"gray"}

# Inform coop
tellraw @a[tag=ActivePlayer,tag=!Carrying] [{selector:"@a[tag=Carrying]",color:"dark_aqua"},{text:" dropped their NPC",color:"red"}]

tag @s remove Carrying