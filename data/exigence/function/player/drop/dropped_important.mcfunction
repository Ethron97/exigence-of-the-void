# called by drop_slot and drop_slot_specific if the item needs tags/team re-added

## CONSTRAINTS
#   AS item (prediate "exigence:important")

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3) Dropped important

# Prevent despawn
data merge entity @s {Age:-32768}
tag @s add PreventItemDespawn

# Mark as dropped
tag @s add DroppedItem

# Join team for glow
#execute if items entity @s contents minecraft:trial_key run team join Treasure @s
#execute if items entity @s contents #exigence:echo run team join Ember @s
#execute if items entity @s contents minecraft:nether_star run team join Ember @s
team join Green @s

# Set to glowing
data modify entity @s Glowing set value true

# Re-add tag so that it has particles
#   Wont re-start the sound unless All Echos Found is false still, which is fine
execute if items entity @s contents #exigence:echo run tag @s add EchoShard

# Default to -1 if not on any level
scoreboard players set @s game.entity.object_level -1
# Add object level
execute if entity @s[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153] run scoreboard players set @s game.entity.object_level 1
execute if entity @s[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178] run scoreboard players set @s game.entity.object_level 2
execute if entity @s[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132] run scoreboard players set @s game.entity.object_level 3
execute if entity @s[x=-520,y=180,z=-287,dx=340,dy=200,dz=340] run scoreboard players set @s game.entity.object_level 4

# Create waypoint
execute at @s run function exigence:game/other/waypoint/summon_waypoint_from_item