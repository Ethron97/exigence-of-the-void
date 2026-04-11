# Called by shop_menu_tick

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

#say (D3) Item Shop tick player

scoreboard players operation #compare career.player_id = @s career.player_id

# Mark interaction
execute as @e[type=minecraft:interaction,tag=ItemShopInteraction,distance=..8] \
if score @s hub.entity.player_id = #compare career.player_id run tag @s add CurrentCheckingInteraction
#   TODO emergency check if interaction is not within 8

# Teleport your interaction to player
execute anchored eyes positioned ^ ^-0.5 ^ as @n[type=minecraft:interaction,tag=CurrentCheckingInteraction,distance=..8] run tp @s ~ ~ ~

# Detect which item_display(s) the player is looking at
scoreboard players operation #old_idid shop.player.looking_at_idid = @s shop.player.looking_at_idid
scoreboard players set @s shop.player.looking_at_idid 0
function exigence:hub/item_shop/menu/display/get_looking

# Reset interaction size if player are not looking, but was last tick
execute if score #old_idid shop.player.looking_at_idid matches 1.. if score @s shop.player.looking_at_idid matches 0 run data merge entity @n[type=minecraft:interaction,tag=CurrentCheckingInteraction,distance=..3] {width:0.01,height:0.01}

# Remove local tag
tag @n[type=minecraft:interaction,tag=CurrentCheckingInteraction,distance=..8] remove CurrentCheckingInteraction

#====================================================================================================

# Money menu tick
function exigence:menu/money_menus/update_holding_state

# Refresh currency amounts
function exigence:hub/item_shop/private/refresh_currency_player

# Refresh consumable item amounts
execute if score seconds.cooldown tick_counter matches 17 run function exigence:player/utility/calculate_item_limit