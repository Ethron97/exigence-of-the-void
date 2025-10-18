# Updates anything relavent to win/loss

## LOSS CHECK
# All players are dead (loss)
#   Activate waiting_for_respawn listener (detect_player_respawned)
#   But still end the game as soon as the player dies so that cards don't draw, etc
#execute unless entity @a[tag=ActivePlayer,scores={dead=0}] run data modify storage exigence:dungeon waiting_for_respawn set value 1
execute unless entity @a[tag=ActivePlayer,scores={dead=0}] if entity @a[tag=ActivePlayer,scores={dead=2}] run function exigence:game/game_loss

# If game is no longer active, return
execute unless entity @s[tag=ActivePlayer] unless data storage exigence:dungeon {is_active:1} run return 1

# Spectate
#   Cancel old spectate else player glitches or something
execute as @a[tag=ActivePlayer,scores={dead=2}] at @s run spectate @p[tag=ActivePlayer,scores={dead=0}]
#execute as @a[tag=ActivePlayer,scores={dead=2}] at @s unless entity @a[tag=ActivePlayer,scores={dead=0},distance=0] run say Away!
#execute as @a[tag=ActivePlayer,scores={dead=2}] at @s unless entity @a[tag=ActivePlayer,scores={dead=0},distance=0] run spectate
#execute as @a[tag=ActivePlayer,scores={dead=2}] at @s unless entity @a[tag=ActivePlayer,scores={dead=0},distance=0] run spectate @p[tag=ActivePlayer,scores={dead=0}]

# Call death command
execute as @a[tag=ActivePlayer,scores={dead=1}] run function exigence:player/death/died

# Refresh score to track who has echos
execute as @a[tag=ActivePlayer] store result score @s EchoFragments run clear @s #exigence:echo 0

## WIN CHECK
# The player is at the start/exit with an Echo shard in their inventory (victory)
execute as @a[tag=ActivePlayer,scores={dead=0}] at @s if entity @e[distance=..2,type=minecraft:armor_stand,tag=ExitNode] run function exigence:game/exit/exit_portal/exit_check

# If portal is open, escape dead players
execute if data storage exigence:dungeon {escape_portal:1} as @a[tag=ActivePlayer,scores={dead=2},tag=!Won] run function exigence:player/game/escape

# If all active players have Won tag, game win
execute if data storage exigence:dungeon {escape_portal:1} unless entity @a[tag=ActivePlayer,tag=!Won] run function exigence:game/game_win

# If four beacons are lit, campaign is over
execute if score BeaconsLit DungeonRun matches 4 run function exigence:game/game_win_campaign
