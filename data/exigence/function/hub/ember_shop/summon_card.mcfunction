# ONLY USED FOR ADMIN

# Because the old ember shop was using this function

## CONSTRAINTS
#   AT location

## INPUT
#   STR card_name

#====================================================================================================

#   SCORE #spellbinding
scoreboard players set #spellbinding Temp 0
#   SCORE mod.spellbook game.modifiers
scoreboard players set mod.spellbook game.modifiers 0

$function exigence:cards/summon_card {card_name:$(card_name)}