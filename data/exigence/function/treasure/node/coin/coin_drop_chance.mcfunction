# Calculate drop chance of treasure for a node

## CONSTRAINTS
#   AS treasure node

#==========================================================================================================

# Reset score
scoreboard players set @s Random 0

# If LevelLimitedTreasure, limit treasure to +-1 level from any active player (or just on active levels, if value ==2)
execute if data storage exigence:dungeon_settings {level_limit_treasure:1} if function exigence:treasure/node/level_limit_check_a run return 1
execute if data storage exigence:dungeon_settings {level_limit_treasure:2} if function exigence:treasure/node/level_limit_check_b run return 1

# Proc drop chance
execute if data storage exigence:dungeon_settings {stacked_coins:0} run function exigence:treasure/node/coin/private/no_stack_chance
execute if data storage exigence:dungeon_settings {stacked_coins:1} run function exigence:treasure/node/coin/private/stack_chance

# Drop coin
#   If coming from a card, DOUBLE for treasure distribution testing
execute if data storage exigence:treasure {resolving:'passive'} if score @s Random matches 1 run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/node/coin/summon_coin"}
execute unless data storage exigence:treasure {resolving:'passive'} if score @s Random matches 1..2 run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/node/coin/summon_coin"}
