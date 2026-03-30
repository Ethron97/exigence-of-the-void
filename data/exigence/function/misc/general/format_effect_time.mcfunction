# Takes seconds, outputs minutes and seconds in data
# {effect:}

## INPUT
#   STR effect
#   STORAGE deck.analysis

## OUTPUT
#   SCORE <effect>.M format_time
#   SCORE <effect>.S format_time
#   STORAGE <effect>.M format_time
#   STORAGE <effect>.S format_time

#====================================================================================================

#$say format effect time $(effect)

# Get minutes
$scoreboard players operation $(effect).M format_time = e.$(effect)Seconds deck.analysis
$scoreboard players operation $(effect).M format_time /= 60 number

# Get seconds
$scoreboard players operation $(effect).S format_time = e.$(effect)Seconds deck.analysis
$scoreboard players operation $(effect).S format_time %= 60 number

# Store in data
$execute store result storage exigence:deck_analysis $(effect).M int 1 run scoreboard players get $(effect).M format_time
$execute store result storage exigence:deck_analysis $(effect).S int 1 run scoreboard players get $(effect).S format_time