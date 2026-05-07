# Handle post-processing

## CONSTRAINTS
#   AS card

#====================================================================================================

# Play all INSTANT cards
execute as @s[tag=Instant,tag=!PlayDuringSetup] run function exigence:deck/process/private/post_process_card_instant

# Add ReturnCard to all non-void cards
#   Only cards added to the deck at the very start will ever get returned, so we can load new cards freely during the run without worrying about it.
tag @s[tag=!IsVoid] add ReturnCard

# If void debug on, return void cards
execute if score toggle.void debug matches 1 run tag @s[tag=IsVoid] add ReturnCard

# Update card count
execute as @s[tag=Card,tag=!Played,tag=!Spellbound] run scoreboard players add .cards game.dungeon 1

# Update process count stats
function exigence:deck/process/update_processed_stats