# Spawn endermite with enough hitpoints to die in ~30 seconds

## CONSTRAINTS
#   AT EchoNode (VoidCache)

#==========================================================================================================

# Summon entity
summon endermite ~ ~1 ~ {Tags:["VoidMite","NewMite"],PersistenceRequired:1b,Invulnerable:1b}

# Endermite data
execute as @e[distance=..2,type=endermite,tag=NewMite] run function exigence:cards/void_cache/private/endermite_data

# Sound/particle
particle dragon_breath ~ ~2 ~ 0.3 1 0.3 0.1 30
