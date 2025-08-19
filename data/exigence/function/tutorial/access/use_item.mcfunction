# Called by game_tick when player is detected with CarrotOnStick score

## CONSTRAINTS
#   AS Player

#======================================================================================================

# DEBUG
#say Use Item

# Reset score
scoreboard players set @s CarrotOnStick 0

# Store slot for secondary functions
execute unless items entity @s weapon.mainhand carrot_on_a_stick if items entity @s weapon.offhand carrot_on_a_stick run scoreboard players set #slot Temp 1
execute if items entity @s weapon.mainhand carrot_on_a_stick run scoreboard players set #slot Temp 2

# Call sub-function based on which hand(s) the player has a carrot on stick in
execute unless items entity @s weapon.mainhand carrot_on_a_stick if items entity @s weapon.offhand carrot_on_a_stick run function exigence:tutorial/access/use_item_hand {slot:'mainhand'}
execute if items entity @s weapon.mainhand carrot_on_a_stick run function exigence:tutorial/access/use_item_hand {slot:'mainhand'}
