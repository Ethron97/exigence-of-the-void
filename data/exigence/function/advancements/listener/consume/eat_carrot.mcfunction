# Called by advancement

# Revoke to reset
advancement revoke @s only exigence:listener/consume/eat_carrot

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

# Trigger...
#say Eat carrot
function exigence:player/effects/add_effect_time {effect:"beastsense",duration:600}
