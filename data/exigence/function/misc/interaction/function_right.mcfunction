# Called by interaction if this has been right clicked

## CONSTRAINTS
#   AS interaction entity right clicked on
#   Must be a FunctionInteraction item display

#=============================================================================================================

# DEBUG
#say function right

# Tag the player who interacted
execute on target run tag @s add Interacting
execute on target run scoreboard players operation #compare shop.player.looking_at_idid = @s shop.player.looking_at_idid

# Call macro using the IDID of the itemdisplay that the player is looking at
execute at @s as @e[distance=..20,type=minecraft:item_display] if score @s IDID = #compare shop.player.looking_at_idid run function exigence:misc/interaction/call_function_right with entity @s item.components."minecraft:custom_data"

# Remove local tags
execute on target run tag @s remove Interacting
