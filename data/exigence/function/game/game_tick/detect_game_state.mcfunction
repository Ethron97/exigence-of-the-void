# Updates anything relavent to win/loss
# Called from game_tick AFTER player tick

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

## LOSS CHECK
# All players are dead (loss)
execute if score game.dead_players game.state >= game.player_count game.state run return run function exigence:game/game_loss
#----------------------------------------------------------------------------------------------------

# Spectate
#   Cancel old spectate else player glitches or something
#execute as @a[scores={dead=2},tag=ActivePlayer] at @s run spectate @p[scores={dead=0},tag=ActivePlayer]

## WIN CHECK
# If all active players have Won tag, game win
execute store result score #temp Temp if entity @a[tag=ActivePlayer,tag=Won]
#   If coop, check if portal is open
execute if score game.player_count game.state matches 2.. if score game.escape_portal game.state matches 1 \
if score #temp Temp = game.player_count game.state run function exigence:game/game_win

# If four beacons are lit, campaign is over
execute if score game.beacons_lit game.state matches 4 run function exigence:game/game_win_campaign
