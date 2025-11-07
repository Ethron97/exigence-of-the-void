# Set the invite display to be pending

## CONSTRAINTS
#   AS invitor display

#=============================================================================================================

say Set pending

tag @s add Pending
data modify entity @s item.components."minecraft:custom_model_data".strings set value ["coop_invite_pending"]
