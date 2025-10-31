# Handles relfection updates for a given player

## CONSTRAINTS
#   AS player

#==================================================================================================

# DEBUG
#say player handle

scoreboard players operation #compare game.entity.profile_id = @s profile.profile_id

## GET MIRROR
# Reset active tag
execute as @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active] run tag @s remove Active
execute as @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Nominate] run tag @s remove Nominate

# Nominate nearest mirrornode to be active
execute at @s run execute as @e[distance=..30,type=minecraft:armor_stand,tag=MirrorNode] run tag @s add Nominate

# If there is no nomination (not close to any mirrors) return
execute unless entity @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Nominate] run return 1

# Get active mirror
#   Narrows down to one using predicates
function exigence:mirror/reflection/get_active_mirror





## PREP MIRROR ENTITIES
# Get this player's Reflection, Rotation, and RotationReflection
# Reset tags
tag @e[type=minecraft:armor_stand,tag=MirrorEntity] remove Active

# Get mirror entities that match this player's
execute as @e[type=minecraft:armor_stand,tag=MirrorEntity] if score @s game.entity.profile_id = #compare game.entity.profile_id run tag @s add Active

# If there is no active mirror, hide reflection and return
execute unless entity @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active] run data modify entity @e[type=minecraft:armor_stand,tag=Reflection,tag=Active,limit=1] equipment set value {}
execute unless entity @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active] run return 1

# If rotation armorstands are not near the active mirrornode, move them
execute as @e[type=minecraft:armor_stand,tag=Active,tag=Rotation] at @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active] if entity @s[distance=2..] run tp @s ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=Active,tag=RotationReflection] at @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active] if entity @s[distance=2..] run tp @s ~ ~ ~



## UPDATE REFLECTIONS
# Call mirror tick resolve unless by the Villager mirror
execute unless entity @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active,tag=Villager] run function exigence:mirror/reflection/mirror_tick_resolve
# Call special function if near the Villager mirror
execute if entity @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active,tag=Villager] at @a[tag=ActivePlayer,advancements={exigence:story/match_bookshelf=false}] run function exigence:mirror/reflection/mirror_tick_resolve_villager

# Ensure scientist npc is always facing nearest player
execute as @e[type=minecraft:villager,tag=NPC_Scientist,tag=!Reflection,tag=!Carried] at @s anchored eyes facing entity @p[tag=ActivePlayer] eyes run tp @s ~ ~ ~ ~ ~
