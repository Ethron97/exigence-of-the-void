# Updates anything relavent to win/loss
# Called from game_tick AFTER player tick

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

## LOSS CHECK
# All players are dead (loss), and portal is NOT open
#execute if score game.dead_players game.state >= game.player_count game.state run return run function exigence:game/game_loss
execute if score game.escape_portal game.state matches 0 unless entity @a[tag=ActivePlayer,scores={dead=0}] run return run function exigence:game/game_loss
#----------------------------------------------------------------------------------------------------

## WIN CHECK
#   If escaped players + dead players = player count, win
execute store result score #temp Temp if entity @a[tag=ActivePlayer,tag=Won]
execute store result score #temp2 Temp if entity @a[tag=ActivePlayer,scores={dead=2}]
scoreboard players operation #temp Temp += #temp2 Temp
#   If coop, check if portal is open
execute if score #temp Temp = game.player_count game.state run function exigence:game/game_win

# If four beacons are lit, campaign is over
#   Normal win if beacons have already been lit
#   Nevermind, no reason not to let them exalt again if they want to
#execute if score game.beacons_lit game.state matches 4 if score game.beacons_lit game.dungeon.setup matches 1 run function exigence:game/game_win
#execute if score game.beacons_lit game.state matches 4 if score game.beacons_lit game.dungeon.setup matches 0 run function exigence:game/game_win_campaign
#execute if score game.beacons_lit game.state matches 4 run function exigence:game/game_win_campaign
#   1 2 3 4 4 4
execute if score game.beacons_lit game.state matches 6 run function exigence:game/game_win_campaign
