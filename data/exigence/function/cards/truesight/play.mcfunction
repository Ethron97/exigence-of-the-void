say 4 Aqua: For each of the following (Glimmer, Flicker, Beastsense), gain +X seconds where X is how many seconds you have had that effect this game. This time cannot be modified.

# Does not get modified by heighten or armor.

function exigence:resources/try_consume with storage exigence:resources

# Call sub-function as each glowing item
execute if score LastConsumeResult Resources matches 1 run function exigence:cards/truesight/private/trigger
