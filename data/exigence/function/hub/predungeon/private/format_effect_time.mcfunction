# Takes seconds, outputs minutes and seconds in data
# {effect:}

# Get minutes
$scoreboard players operation $(effect)M FormatTime = $(effect)Seconds DeckAnalysis
$scoreboard players operation $(effect)M FormatTime /= 60 number

# Get seconds
$scoreboard players operation $(effect)S FormatTime = $(effect)Seconds DeckAnalysis
$scoreboard players operation $(effect)S FormatTime %= 60 number

# Store in data
$execute store result storage exigence:deck_analysis $(effect)M int 1 run scoreboard players get $(effect)M FormatTime
$execute store result storage exigence:deck_analysis $(effect)S int 1 run scoreboard players get $(effect)S FormatTime