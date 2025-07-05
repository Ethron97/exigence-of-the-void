# Called by .increase_health

## CONSTRAINTS
#   AS Player

## INPUT
#   amount - amount we are increasing it by
#   new_total - the total boost player will be at

#=========================================================================================================

$attribute @s max_health modifier add exigence:health_boost_$(new_total) $(amount) add_value
