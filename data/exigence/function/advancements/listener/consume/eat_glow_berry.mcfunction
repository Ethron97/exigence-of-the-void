# Called by advancement

# Revoke to reset
advancement revoke @s only exigence:listener/consume/eat_glow_berry

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

# Trigger...
#say Eat glow berry
function exigence:player/effects/add_effect_time {effect:"glimmer",duration:400}
