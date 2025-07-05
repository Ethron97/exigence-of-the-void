# Makes sure the player has hit the respawn button before running game_reset

# DEPCRECATED

# If waiting for respawn is 1 and @e entity exists (only detects living entities), then respawned
execute as @a[tag=ActivePlayer] run execute if entity @e[type=minecraft:player,tag=ActivePlayer] if data storage exigence:dungeon {waiting_for_respawn:1} run function exigence:game/game_loss