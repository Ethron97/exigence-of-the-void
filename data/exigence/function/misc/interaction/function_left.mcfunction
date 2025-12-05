# Called by interaction if this has been left clicked

## CONSTRAINTS
#   AS interaction entity left clicked on
#   Must be a FunctionInteraction item display

#=============================================================================================================

# DEBUG
#say function left

# Tag the player who interacted
execute on attacker run tag @s add Interacting
execute on attacker run scoreboard players operation #compare shop.player.looking_at_idid = @s shop.player.looking_at_idid

# Check cooldown
execute on target unless function exigence:misc/interaction/check_cooldown run return fail

# Call macro using the IDID of the itemdisplay that the player is looking at
execute at @s as @e[distance=..20,type=minecraft:item_display] if score @s IDID = #compare shop.player.looking_at_idid run function exigence:misc/interaction/call_function_left with entity @s item.components."minecraft:custom_data"

# Remove local tags
execute on attacker run tag @s remove Interacting
