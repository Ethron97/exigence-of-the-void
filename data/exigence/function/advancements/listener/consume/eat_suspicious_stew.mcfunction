# Called by advancement

# Revoke to reset
advancement revoke @s only exigence:listener/consume/eat_suspicious_stew

# Return if game is not active
execute if data storage exigence:dungeon {is_active:0} run return 1

# trigger item
#say Eat rotten flesh
function exigence:player/use_item/chorus_fruit/trigger
