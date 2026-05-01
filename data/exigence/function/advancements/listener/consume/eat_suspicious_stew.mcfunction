# Called by advancement

# Revoke to reset
advancement revoke @s only exigence:listener/consume/eat_suspicious_stew

# Clear bowl
clear @s bowl

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

# trigger item
function exigence:player/use_item/chorus_fruit/trigger
