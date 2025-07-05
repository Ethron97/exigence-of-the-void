# Updates death-related scores based on source of death

## CONSTRAINTS
#   AS player

#======================================================================================================

# Check if player was killed by entity
scoreboard players set temp Temp 0
scoreboard players operation temp Temp += @s KilledByBlaze
scoreboard players operation temp Temp += @s KilledByRavager
scoreboard players operation temp Temp += @s KilledByWarden
scoreboard players operation temp Temp += @s KilledByWitch
scoreboard players operation temp Temp += @s KilledByWitherSkeleton
scoreboard players operation temp Temp += @s KilledByCreaking
scoreboard players operation temp Temp += @s KilledByVex
scoreboard players operation temp Temp += @s KilledByEndermite
# if temp Temp > 0, killed by entity

# Add score from entity deaths
scoreboard players operation @s cr_killedByBlaze += @s KilledByBlaze
scoreboard players operation @s cr_killedByRavager += @s KilledByRavager
scoreboard players operation @s cr_killedByWarden += @s KilledByWarden
scoreboard players operation @s cr_killedByWitch += @s KilledByWitch
scoreboard players operation @s cr_killedByWitherSkeleton += @s KilledByWitherSkeleton
scoreboard players operation @s cr_killedByCreaking += @s KilledByCreaking
scoreboard players operation @s cr_killedByVex += @s KilledByVex
scoreboard players operation @s cr_killedByEndermite += @s KilledByEndermite

scoreboard players operation @s t_killedByBlaze += @s KilledByBlaze
scoreboard players operation @s t_killedByRavager += @s KilledByRavager
scoreboard players operation @s t_killedByWarden += @s KilledByWarden
scoreboard players operation @s t_killedByWitch += @s KilledByWitch
scoreboard players operation @s t_killedByWitherSkeleton += @s KilledByWitherSkeleton
scoreboard players operation @s t_killedByCreaking += @s KilledByCreaking
scoreboard players operation @s t_killedByVex += @s KilledByVex
scoreboard players operation @s t_killedByEndermite += @s KilledByEndermite

# If not killed by entity, killed by dungeon
scoreboard players add @s t_killedByDungeon 0
execute if score temp Temp matches 0 run scoreboard players add @s cr_killedByDungeon 1
execute if score temp Temp matches 0 run scoreboard players add @s t_killedByDungeon 1

# Reset scores to track again later
scoreboard players set @s KilledByBlaze 0
scoreboard players set @s KilledByRavager 0
scoreboard players set @s KilledByWarden 0
scoreboard players set @s KilledByWitch 0
scoreboard players set @s KilledByWitherSkeleton 0
scoreboard players set @s KilledByCreaking 0
scoreboard players set @s KilledByVex 0
scoreboard players set @s KilledByEndermite 0
