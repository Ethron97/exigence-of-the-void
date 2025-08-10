# Called by advancement

# Revoke to reset
advancement revoke @s only exigence:listener/consume/eat_honey_bottle

# Return if game is not active
execute unless entity @s[tag=ActivePlayer] unless data storage exigence:dungeon {is_active:1} run return 1

# Trigger...
#say Eat honey bottle
function exigence:player/attributes/health_boost/increase_health {boost:2}
