# Called from detect_game_state

## CONSTRAINTS
#   AS player who is by the exit

#==============================================================================================

# If at exit but don't have enough echo fragments, message
execute if score EchosRequired DungeonRun matches 2.. if score @s game.player.echo_fragments matches 1.. if data storage exigence:dungeon {all_echos_found:0} run title @s actionbar {text:"You must collect all the Echo Fragments to escape!",color:"red"}
execute if score EchosRequired DungeonRun matches 1 if data storage exigence:dungeon {all_echos_found:0} run title @s actionbar {text:"You must collect the Echo Shard to escape!",color:"red"}

# If at the exit with enough fragments, escape
execute if score @s game.player.echo_fragments matches 1.. if data storage exigence:dungeon {all_echos_found:1} run function exigence:player/game/escape

# If coop and someone else already escpaed (escape_portal:1), escape
execute if data storage exigence:dungeon {is_coop:1} if data storage exigence:dungeon {escape_portal:1} run function exigence:player/game/escape
