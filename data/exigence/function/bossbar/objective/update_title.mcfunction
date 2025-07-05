# Show title based on step in the process

# If all echos have been picked up, objective is Return to start regardless of difficulty
execute if data storage exigence:dungeon {all_echos_found:1} run function exigence:bossbar/objective/private/echos_found
execute if data storage exigence:dungeon {all_echos_found:1} run return 1

# Default to "Find the Echo" if applicable
execute if score EchosRequired DungeonRun matches 1 run bossbar set exigence:objective name [{text:"Find the Echo",color:"blue"}]
execute if score EchosRequired DungeonRun matches 2.. run bossbar set exigence:objective name [{text:"Find all Echos",color:"blue"}]

# Default to "find the beacons" if applicable
execute if score Difficulty DungeonRun matches 5 run bossbar set exigence:objective name [{text:"Light all beacons",color:"aqua"}]

# Override based on most relavent objective
#   Call sub-function based on active level to reduce tick checks
execute if score ActiveLevel DungeonRun matches 1 run function exigence:bossbar/objective/private/1
execute if score ActiveLevel DungeonRun matches 2 run function exigence:bossbar/objective/private/2
execute if score ActiveLevel DungeonRun matches 3 run function exigence:bossbar/objective/private/3
execute if score ActiveLevel DungeonRun matches 4 run function exigence:bossbar/objective/private/4
