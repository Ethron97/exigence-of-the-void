# Resets the invite display

## CONSTRAINTS
#   AS invitor display

#=============================================================================================================

say Set reste

tag @s remove Pending
data modify entity @s item.components."minecraft:custom_model_data".strings set value ["coop_invite"]
