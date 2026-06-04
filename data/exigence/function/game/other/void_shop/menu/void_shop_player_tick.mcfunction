# Called by shop_menu_tick

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 5.. run say (D5) Item Shop tick player

scoreboard players operation #compare game.player.player_number = @s game.player.player_number

# TP interaction here
execute anchored eyes positioned ^ ^-0.5 ^ run function exigence:player/utility/interaction/tp_here

# Mark interaction
execute as @e[type=minecraft:interaction,tag=PlayerInteraction,distance=..8] \
if score @s game.entity.player_number = #compare game.player.player_number run tag @s add CurrentCheckingInteraction

# Detect which item_display(s) the player is looking at
scoreboard players operation #old_idid shop.player.looking_at_idid = @s shop.player.looking_at_idid
scoreboard players set @s shop.player.looking_at_idid 0
function exigence:game/other/void_shop/menu/display/get_looking

# Reset interaction size if player are not looking, but was last tick
execute if score #old_idid shop.player.looking_at_idid matches 1.. if score @s shop.player.looking_at_idid matches 0 run data merge entity @n[type=minecraft:interaction,tag=CurrentCheckingInteraction,distance=..3] {width:0.01,height:0.01}

# Remove local tag
tag @n[type=minecraft:interaction,tag=CurrentCheckingInteraction,distance=..8] remove CurrentCheckingInteraction

#====================================================================================================

# Money menu tick
function exigence:menu/money_menus/update_holding_state

# Refresh currency amounts
function exigence:game/other/void_shop/menu/refresh_currency_player
