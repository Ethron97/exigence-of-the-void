# Called from test_match on success

## CONSTRAINTS
#   AT mirror-ish area ( -476.53 62.00 -188.46 )

#====================================================================================================

say (D3) All match

playsound minecraft:block.glass.break block @a ~ ~ ~ 2 1

execute as @r[tag=ActivePlayer] run function exigence:profile/profile_node/story/grant {story:'match_bookshelf'}

# TP villager and remove reflection tag
tp @e[type=minecraft:villager,tag=NPC_Scientist,tag=Reflection,distance=..30] -479.5 61.00 -196.5
tag @e[type=minecraft:villager,tag=NPC_Scientist,tag=Reflection,distance=..30] remove Reflection