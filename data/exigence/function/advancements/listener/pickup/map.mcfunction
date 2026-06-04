# Reset advancement
advancement revoke @s only exigence:listener/pickup/map

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3) Pickup map game

# Clear item
clear @s minecraft:map 1

# Reveal carts
execute at @s run function exigence:variance/node/cart_cache/player_picked_up_map
