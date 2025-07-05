## CONSTRAINTS
#   AS player

## INPUT
#   STR scoreboard - Scoreboard objective in ticks for this player

#==================================================================================================

$scoreboard players operation $(scoreboard)_S FormatTime = @s $(scoreboard)
$scoreboard players operation $(scoreboard)_S FormatTime /= 20 number
$scoreboard players operation $(scoreboard)_M FormatTime = $(scoreboard)_S FormatTime
$scoreboard players operation $(scoreboard)_M FormatTime /= 60 number
$scoreboard players operation $(scoreboard)_H FormatTime = $(scoreboard)_M FormatTime
$scoreboard players operation $(scoreboard)_H FormatTime /= 60 number
$scoreboard players operation $(scoreboard)_M FormatTime %= 60 number
$scoreboard players operation $(scoreboard)_S FormatTime %= 60 number
