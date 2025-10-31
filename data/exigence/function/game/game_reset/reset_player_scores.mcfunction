# Reset player scoreboards

## CONSTRAINTS
#   AS Player

#=============================================================================================================

execute as @s run function exigence:player/effects/reset_active_effects

## ENEMY
scoreboard players set @s game.player.killed_by.blaze 0
scoreboard players set @s game.player.killed_by.ravager 0
scoreboard players set @s game.player.killed_by.warden 0
scoreboard players set @s game.player.killed_by.witch 0
scoreboard players set @s game.player.killed_by.wither_skeleton 0
scoreboard players set @s game.player.killed_by.creaking 0
scoreboard players set @s game.player.killed_by.endermite 0
scoreboard players set @s game.player.killed_by.vex 0

## SOUNDS
scoreboard players set @s game.player.sound_ping.echo_cooldown 100
scoreboard players set @s game.player.sound_ping.flame_cooldown 100
scoreboard players set @s game.player.sound_ping.key_cooldown 100
scoreboard players set @s game.player.sound_ping.vault_key_cooldown 100

scoreboard players set @s game.player.sound_ping.echo_distance 10
scoreboard players set @s game.player.sound_ping.flame_distance 10
scoreboard players set @s game.player.sound_ping.key_distance 10
scoreboard players set @s game.player.sound_ping.vault_key_distance 10

