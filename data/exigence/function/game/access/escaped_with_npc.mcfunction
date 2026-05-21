# Handles player escaping from the dungeon on an individual level

## CONSTRAINTS
#   AS Player (tag=Carrying)

#====================================================================================================

execute if score debug.level debug matches 3.. run say (D3) I escaped while carrying an NPC

# Give appropriate advancement if rescued NPC
execute if score npc.supplier game.dialogue matches 5.. as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'rescue_supplier'}
execute if score npc.scientist game.dialogue matches 8.. as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'rescue_scientist'}
execute if score npc.petitioner game.dialogue matches 7.. as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'rescue_petitioner'}

# Teleport the npc up and kill them
execute as @e[type=villager,tag=NPC,tag=Game] run function exigence:misc/entity/unload_entity

tag @s remove Carrying

effect clear @s slowness
