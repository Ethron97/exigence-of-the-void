## CONSTRAINTS
#   AS player

## INPUT
#   STR scoreboard - Scoreboard objective in ticks for this player

#==================================================================================================

$scoreboard players operation $(scoreboard).S format_time = @s $(scoreboard)
$scoreboard players operation $(scoreboard).S format_time /= 20 number
$scoreboard players operation $(scoreboard).M format_time = $(scoreboard).S format_time
$scoreboard players operation $(scoreboard).M format_time /= 60 number
$scoreboard players operation $(scoreboard).H format_time = $(scoreboard).M format_time
$scoreboard players operation $(scoreboard).H format_time /= 60 number
$scoreboard players operation $(scoreboard).M format_time %= 60 number
$scoreboard players operation $(scoreboard).S format_time %= 60 number
