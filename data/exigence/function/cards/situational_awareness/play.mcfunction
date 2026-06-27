#say +15s Beast Sense
function exigence:cards/announce_card

# Add effect
function exigence:player/effects/add_effect_time_card {effect:"beastsense",duration:300}

# Add ascend tag
tag @s add Ascend
