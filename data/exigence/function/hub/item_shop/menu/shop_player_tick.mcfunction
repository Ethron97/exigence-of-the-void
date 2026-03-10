# Called by shop_menu_tick

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

#say Item Shop tick player

scoreboard players operation #compare career.player_id = @s career.player_id

# Mark interaction
execute as @e[distance=..8,type=interaction,tag=ItemShopInteraction] \
if score @s hub.entity.player_id = #compare career.player_id run tag @s add CurrentCheckingInteraction
#   TODO emergency check if interaction is not within 8

# Teleport your interaction to player
execute anchored eyes positioned ^ ^-0.5 ^ as @n[distance=..8,type=interaction,tag=CurrentCheckingInteraction] run tp @s ~ ~ ~

# Detect which item_display(s) the player is looking at
scoreboard players set @s shop.player.looking_at_idid 0
function exigence:hub/item_shop/menu/display/get_looking

# Reset interaction size if player are not looking
execute as @s[scores={shop.player.looking_at_idid=0}] run data merge entity @n[distance=..3,type=interaction,tag=CurrentCheckingInteraction] {width:0.01,height:0.01}

# Remove local tag
tag @n[distance=..8,type=interaction,tag=CurrentCheckingInteraction] remove CurrentCheckingInteraction

#====================================================================================================

# Money menu tick
function exigence:menu/money_menus/update_holding_state

# Refresh currency amounts
function exigence:hub/item_shop/private/refresh_currency_player

# Refresh consumable item amounts
execute if score seconds.cooldown tick_counter matches 17 run function exigence:player/utility/calculate_item_limit