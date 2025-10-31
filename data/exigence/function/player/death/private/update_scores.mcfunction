# Updates death-related scores based on source of death

## CONSTRAINTS
#   AS player

#======================================================================================================

# Check if player was killed by entity
scoreboard players set #temp Temp 0
scoreboard players operation #temp Temp += @s game.player.killed_by.blaze
scoreboard players operation #temp Temp += @s game.player.killed_by.creaking
scoreboard players operation #temp Temp += @s game.player.killed_by.endermite
scoreboard players operation #temp Temp += @s game.player.killed_by.ravager
scoreboard players operation #temp Temp += @s game.player.killed_by.vex
scoreboard players operation #temp Temp += @s game.player.killed_by.warden
scoreboard players operation #temp Temp += @s game.player.killed_by.witch
scoreboard players operation #temp Temp += @s game.player.killed_by.wither_skeleton
# if #temp Temp > 0, killed by entity

# Add score from entity deaths
scoreboard players operation @s profile.data.enemy.cr.killed_by_blaze += @s game.player.killed_by.blaze
scoreboard players operation @s profile.data.enemy.cr.killed_by_creaking += @s game.player.killed_by.creaking
scoreboard players operation @s profile.data.enemy.cr.killed_by_endermite += @s game.player.killed_by.endermite
scoreboard players operation @s profile.data.enemy.cr.killed_by_ravager += @s game.player.killed_by.ravager
scoreboard players operation @s profile.data.enemy.cr.killed_by_vex += @s game.player.killed_by.vex
scoreboard players operation @s profile.data.enemy.cr.killed_by_warden += @s game.player.killed_by.warden
scoreboard players operation @s profile.data.enemy.cr.killed_by_witch += @s game.player.killed_by.witch
scoreboard players operation @s profile.data.enemy.cr.killed_by_wither_skeleton += @s game.player.killed_by.wither_skeleton

# If not killed by entity, killed by dungeon
execute if score #temp Temp matches 0 run scoreboard players add @s profile.data.enemy.cr.killed_by_dungeon 1

# Reset scores to track again later
scoreboard players set @s game.player.killed_by.blaze 0
scoreboard players set @s game.player.killed_by.ravager 0
scoreboard players set @s game.player.killed_by.creaking 0
scoreboard players set @s game.player.killed_by.endermite 0
scoreboard players set @s game.player.killed_by.vex 0
scoreboard players set @s game.player.killed_by.warden 0
scoreboard players set @s game.player.killed_by.witch 0
scoreboard players set @s game.player.killed_by.wither_skeleton 0
