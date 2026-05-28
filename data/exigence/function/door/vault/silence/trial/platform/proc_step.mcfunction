# Move in direction of previous tag

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Proc step

# Move platform
execute as @e[type=minecraft:marker,tag=SilencePlatform,distance=..24] at @s run function exigence:door/vault/silence/trial/platform/step

# Reset timer
execute unless entity @s[tag=Crucible] if score @s trial.timer matches ..200 run scoreboard players set @s trial.timer.cooldown 20
execute unless entity @s[tag=Crucible] if score @s trial.timer matches 201..400 run scoreboard players set @s trial.timer.cooldown 16
execute unless entity @s[tag=Crucible] if score @s trial.timer matches 400.. run scoreboard players set @s trial.timer.cooldown 12

execute if entity @s[tag=Crucible] if score @s trial.timer matches ..200 run scoreboard players set @s trial.timer.cooldown 14
execute if entity @s[tag=Crucible] if score @s trial.timer matches 201..400 run scoreboard players set @s trial.timer.cooldown 11
execute if entity @s[tag=Crucible] if score @s trial.timer matches 400.. run scoreboard players set @s trial.timer.cooldown 9
