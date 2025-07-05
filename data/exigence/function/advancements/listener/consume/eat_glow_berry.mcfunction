# Called by advancement

# Revoke to reset
advancement revoke @s only exigence:listener/consume/eat_glow_berry

# Return if game is not active
execute if data storage exigence:dungeon {is_active:0} run return 1

# Trigger...
#say Eat glow berry
function exigence:player/effects/add_effect_time {effect:"glimmer",duration:400}
