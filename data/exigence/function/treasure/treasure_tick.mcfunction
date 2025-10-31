# Resolve 1 treasure queue.
#   Treasure does not drop at max menace
execute if score seconds.cooldown tick_counter matches 5 if score TreasureQueue DungeonRun matches 1.. run function exigence:treasure/try_resolve_treasure

# PASSIVE TREASURE DROPS
# Every 20 seconds
# EV: 3 * minutes in the dungeon treasure procs.
scoreboard players remove passive.treasure.cooldown tick_counter 1
execute if score passive.treasure.cooldown tick_counter matches 0 run function exigence:treasure/queue/add_to_queue {source:"passive",amount:1}
execute if score passive.treasure.cooldown tick_counter matches 0 run scoreboard players operation passive.treasure.cooldown tick_counter = #PassiveTreasureCooldownLimit tick_counter
