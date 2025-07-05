# called by drop_slot and drop_slot_specific if the item needs tags/team re-added

## CONSTRAINTS
#   AS item prediate "exigence:important"

#=======================================================================================================

#say Dropped important

# Prevent despawn
data merge entity @s {Age:-32768}
tag @s add PreventItemDespawn

# Join team for glow
#execute if items entity @s contents minecraft:trial_key run team join Treasure @s
#execute if items entity @s contents #exigence:echo run team join Ember @s
#execute if items entity @s contents minecraft:nether_star run team join Ember @s
team join Green @s

# Set to glowing
data modify entity @s Glowing set value true
