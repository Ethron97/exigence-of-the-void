# Called from detect_game_state

## CONSTRAINTS
#   AS player who is by the exit

#====================================================================================================

# If at exit but don't have enough echo fragments, message
execute if score .echos_required game.dungeon.echo matches 2.. if score @s game.player.echo_fragments matches 1.. if score game.all_echos_found game.state matches 0 run title @s actionbar {text:"You must collect all the Echo Fragments to escape!",color:"red"}
execute if score .echos_required game.dungeon.echo matches 1 if score game.all_echos_found game.state matches 0 run title @s actionbar {text:"You must collect the Echo Shard to escape!",color:"red"}

# If at the exit with enough fragments, escape
execute if score @s game.player.echo_fragments matches 1.. if score game.all_echos_found game.state matches 1 run return run function exigence:player/game/escape
#----------------------------------------------------------------------------------------------------

# If coop and someone else already escpaed (escape_portal:1), escape
execute if score game.player_count game.state matches 2.. if score game.escape_portal game.state matches 1 run return run function exigence:player/game/escape
#----------------------------------------------------------------------------------------------------