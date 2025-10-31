say [6 Aqua: +15 seconds Far Step (allows you to teleport)]

# Consume resources
function exigence:resources/try_consume with storage exigence:resources

# Return if consume failed
execute if score #LastConsumeResult game.resources matches 0 run return 0

# Give Far Step effect (night vision)
function exigence:player/effects/add_effect_time_card {effect:"farstep",duration:300}
