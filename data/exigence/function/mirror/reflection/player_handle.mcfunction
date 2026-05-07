# Handles relfection updates for a given player

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

# DEBUG
execute if score toggle.mirror debug matches 1 if score debug.level debug matches 5.. run say (D5) player handle

# If there is not close to any mirrors, return
execute unless entity @e[type=minecraft:armor_stand,tag=MirrorNode,distance=..30] run return fail
#----------------------------------------------------------------------------------------------------

## GET MIRROR
# Reset active tag
tag @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active,distance=..30] remove Active

# Nominate all nearby mirror nodes
execute as @e[type=minecraft:armor_stand,tag=MirrorNode,distance=..30] run tag @s add Nominate

# Get active mirror
#   Narrows down to one where the player actuall is, using predicates
function exigence:mirror/reflection/get_active_mirror

# If no active mirror and player WAS NOT already reflecting, just return
# If there is no active mirror and player WAS already reflecting, hide reflection and return
execute unless entity @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active,distance=..30] run return run function exigence:mirror/reflection/private/no_active_mirror_found
#----------------------------------------------------------------------------------------------------

## REFLECT
# Add local tag
tag @s add Reflecting

scoreboard players operation #compare game.entity.profile_id = @s profile.player.profile_id

# If player was NOT CurrentlyReflecting, set them now to reflecting (also makes sure their shadow is close)
execute if entity @s[tag=!CurrentlyReflecting] at @n[type=minecraft:armor_stand,tag=MirrorNode,tag=Active,distance=..30] run function exigence:mirror/reflection/private/start_reflecting

# Store player information
function exigence:mirror/reflection/private/get_player_info

# Store num to lookup reflection
scoreboard players operation #compare game.player.player_number = @s game.player.player_number

## UPDATE REFLECTIONS
# Call mirror tick resolve unless by the Villager mirror
execute as @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active,distance=..30] at @s run function exigence:mirror/reflection/mirror_tick_resolve

# Call special function if near the Villager mirror
#   Instead of a unique function, just use the other function and then teleport the villager to the Reflection (prioritize lowest player_number?)
#execute if entity @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active,tag=Villager] at @a[tag=ActivePlayer,advancements={exigence:story/match_bookshelf=false}] run function exigence:mirror/reflection/mirror_tick_resolve_villager

# Remove local tag
tag @s remove Reflecting