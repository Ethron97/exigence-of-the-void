# Kill the facehugger in this room

## CONSTRAINTS
#   AS profile selector node

#=============================================================================================================

scoreboard players operation #compare hub.entity.profile_selector_id = @s hub.profile_selector_id
execute as @n[distance=..32,type=interaction,tag=ProfileSelectorInteraction] if score @s hub.entity.profile_selector_id = #compare hub.entity.profile_selector_id run kill @s
