# Update the big confirm checkmark whenever a player joins or leave a pending coop profile

## CONSTRAINTS
#   AS confirm display

## INPUT
#   SCORE #filled_slots, gets populated by invite/accept or invite/cancel prior to this function

#=============================================================================================================

say Update confirm button

tag @s remove CanConfirm

# Is valid?
# TODO, dynamic checking based on max slots allowed
execute if score #filled_slots Temp matches 1..3 run tag @s add CanConfirm

# Button color
execute if entity @s[tag=CanConfirm] run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["coop_confirm_green"]
execute if entity @s[tag=!CanConfirm] run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["coop_confirm_red"]