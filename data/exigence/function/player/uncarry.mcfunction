# Called by player carrying NPC to uncarry
#   Called in COOP on player death

## CONSTRAINTS
#   AS player carrying NPC

#====================================================================================================

# Kill Villager (after tping up so it doesn't look weird)
execute as @e[type=minecraft:villager,tag=Carried] run function exigence:npc/game/unload_from_carrying

tellraw @s {text:"The NPC returns to hiding",color:"gray"}

tag @s remove Carrying