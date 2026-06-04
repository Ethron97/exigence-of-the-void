# called by player_alive tick every second
#   s_tick = second tick

## CONSTRAINTS
#   AS player
#       with game.player.mod.sun_plate score 4

#====================================================================================================

# If player took both real damage AND absorb
#   AND player does not currently have absorption
# THEN trigger totem of undying teleport
execute if score @s game.player.damage_taken matches 1.. if score @s game.player.damage_absorbed matches 1.. at @s \
if entity @e[type=#exigence:enemy,distance=..5] run function exigence:menu/item_display/void_shop_display/items/totem_of_undying/teleport

#execute if score @s game.player.damage_taken matches 1.. if score @s game.player.damage_absorbed matches 1.. \
unless entity @s[predicate=exigence:effects/absorption] run say I broke my heart!