# For playing trials out side of the game with a single function

## CONSTRAINTS
#   AS player to trial

## INPUT
#   STR trial ('bolt',etc)
#   INT vault_code (1-6)
#   STR type = 'Trial' or 'Crucible' CASE SENSETIVE

#============================================================================================================

# If game is active, return
execute if data storage exigence:dungeon {is_active:1} run say The game is active, go play it
execute if data storage exigence:dungeon {is_active:1} run return 1

# Set scores
scoreboard players set @s dead 0
$scoreboard players set @s game.player.vault_code $(vault_code)

# Gamemode
gamemode adventure @s

# Tag
tag @s add ActivePlayer
tag @s add TrialTrial
$tag @s add $(type)

# Call begin function
$function exigence:door/vault/$(trial)/trial/begin
