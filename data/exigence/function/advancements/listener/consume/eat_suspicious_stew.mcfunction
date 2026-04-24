# Called by advancement

# Revoke to reset
advancement revoke @s only exigence:listener/consume/eat_suspicious_stew

# Clear bowl
clear @s bowl

# Return if game is not active
execute unless entity @s[tag=ActivePlayer] unless score game.is_active game.state matches 1 run return 1
#----------------------------------------------------------------------------------------------------

# trigger item
function exigence:player/use_item/chorus_fruit/trigger
