# Add X to the treasure queue

## INPUT
#   STR source - "Passive", "Card", "Circulation"
#   INT amount - amount of treasure to add to queue

#================================================================================================================

# DEPRECATED






# DEBUG
#say Queue treasure
#$say $(source) $(amount)

# Add X to treasure 
$scoreboard players add TreasureQueue DungeonRun $(amount)

# Add scores
$scoreboard players add @a[tag=ActivePlayer] cr_treasureQueue$(source) $(amount)
$scoreboard players add @a[tag=ActivePlayer] t_treasureQueue$(source) $(amount)
