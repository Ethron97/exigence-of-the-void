# Kill the facehugger in this room

## CONSTRAINTS
#   AS profile selector node

#====================================================================================================

scoreboard players operation #compare hub.entity.profile_selector_id = @s hub.profile_selector_id
execute as @n[type=interaction,tag=ProfileSelectorInteraction,distance=..32] if score @s hub.entity.profile_selector_id = #compare hub.entity.profile_selector_id run kill @s
