say [Card effect here]

# Functionality

# Manage resources
function exigence:resources/try_consume with storage exigence:resources
execute if score #LastConsumeResult game.resources matches 1 run say hi

# Add effect
function exigence:player/effects/add_effect_time_card {effect:"",duration:600}

# Queue score
function exigence:treasure/queue/add_to_queue {source:"test",amount:3}

# Ascend card, add ascend tag
tag @s add Ascend