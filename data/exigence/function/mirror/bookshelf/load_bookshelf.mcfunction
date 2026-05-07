# Load THE bookshelf

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

execute if score toggle.bookshelf debug matches 1 if score debug.level debug matches 3.. run say (D3) Load main bookshelf / matcher

# Load bookshelf from storage
execute in exigence:profile_data at @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=ActiveChest,limit=1] run function exigence:profile/profile_node/load/load_bookshelf

# Initialize match
execute if entity @a[tag=Predungeon,advancements={exigence:story/match_bookshelf=false}] run function exigence:mirror/bookshelf/test_match

# If player has matched bookshelf, set mirror to broken
execute if entity @a[tag=Predungeon,advancements={exigence:story/match_bookshelf=true}] run clone -473 37 -185 -464 43 -185 -482 61 -193
