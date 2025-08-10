# Called by advancement

# Revoke to reset
advancement revoke @s only exigence:listener/consume/eat_carrot

# Return if game is not active
execute unless entity @s[tag=ActivePlayer] unless data storage exigence:dungeon {is_active:1} run return 1

# Trigger...
#say Eat carrot
function exigence:player/effects/add_effect_time {effect:"beastsense",duration:600}
