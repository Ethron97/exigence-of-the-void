# Add X to the treasure queue

## INPUT
#   STR source - "passive", "card", "circulation"
#   INT amount - amount of treasure to add to queue

#================================================================================================================

# DEPRECATED






# DEBUG
#say Queue treasure
#$say $(source) $(amount)

# Add X to treasure 
$scoreboard players add TreasureQueue DungeonRun $(amount)

# Add scores
$scoreboard players add @a[tag=ActivePlayer] profile.data.treasure.cr.treasure_queue_$(source) $(amount)

