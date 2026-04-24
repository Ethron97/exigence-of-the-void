# Show title based on step in the process

# If all echos have been picked up, objective is Return to start regardless of difficulty
execute if score game.all_echos_found game.state matches 1 run return run function exigence:bossbar/objective/private/echos_found
#----------------------------------------------------------------------------------------------------

# Default to "Find the Echo" if applicable
execute if score .echos_required game.dungeon.echo matches 1 run bossbar set exigence:objective name [{text:"Find the Echo",color:"blue"}]
execute if score .echos_required game.dungeon.echo matches 2.. run bossbar set exigence:objective name [{text:"Find all Echos",color:"blue"}]

# Default to "find the beacons" if applicable
execute if score game.difficulty game.state matches 5 run bossbar set exigence:objective name [{text:"Light all beacons",color:"aqua"}]

# Override based on most relavent objective
#   Call sub-function based on active level to reduce tick checks
## SWITCH
execute if score game.active_level game.state matches 1 run return run function exigence:bossbar/objective/private/1
execute if score game.active_level game.state matches 2 run return run function exigence:bossbar/objective/private/2
execute if score game.active_level game.state matches 3 run return run function exigence:bossbar/objective/private/3
execute if score game.active_level game.state matches 4 run return run function exigence:bossbar/objective/private/4
