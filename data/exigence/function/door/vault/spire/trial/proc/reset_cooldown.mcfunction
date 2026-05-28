# Reset proc cooldown, and modify based on trial timer

## CONSTRAINTS
#   AS/AT trial node, spire

#====================================================================================================

# Set internval based on trial time
#   Interval must be divisible by 4
#   OLD VALUES (from before we moved the starting platform up to the top)
#execute unless entity @s[tag=Crucible] if score @s trial.timer matches ..180 run scoreboard players set #interval trial.timer 60
#execute unless entity @s[tag=Crucible] if score @s trial.timer matches 181..360 run scoreboard players set #interval trial.timer 44
#execute unless entity @s[tag=Crucible] if score @s trial.timer matches 361..440 run scoreboard players set #interval trial.timer 32
#execute unless entity @s[tag=Crucible] if score @s trial.timer matches 441.. run scoreboard players set #interval trial.timer 24

#execute if entity @s[tag=Crucible] if score @s trial.timer matches ..180 run scoreboard players set #interval trial.timer 52
#execute if entity @s[tag=Crucible] if score @s trial.timer matches 181..360 run scoreboard players set #interval trial.timer 40
#execute if entity @s[tag=Crucible] if score @s trial.timer matches 361..440 run scoreboard players set #interval trial.timer 24
#execute if entity @s[tag=Crucible] if score @s trial.timer matches 441.. run scoreboard players set #interval trial.timer 20

execute unless entity @s[tag=Crucible] if score @s trial.timer matches ..180 run scoreboard players set #interval trial.timer 52
execute unless entity @s[tag=Crucible] if score @s trial.timer matches 181..360 run scoreboard players set #interval trial.timer 40
execute unless entity @s[tag=Crucible] if score @s trial.timer matches 361..440 run scoreboard players set #interval trial.timer 32
execute unless entity @s[tag=Crucible] if score @s trial.timer matches 441.. run scoreboard players set #interval trial.timer 24

execute if entity @s[tag=Crucible] if score @s trial.timer matches ..180 run scoreboard players set #interval trial.timer 36
execute if entity @s[tag=Crucible] if score @s trial.timer matches 181..360 run scoreboard players set #interval trial.timer 28
execute if entity @s[tag=Crucible] if score @s trial.timer matches 401..600 run scoreboard players set #interval trial.timer 20
execute if entity @s[tag=Crucible] if score @s trial.timer matches 601.. run scoreboard players set #interval trial.timer 16

# Set cooldown equal to interval
scoreboard players operation @s trial.timer.cooldown = #interval trial.timer

# Set partition equal to interval/4
scoreboard players operation #partition trial.timer = #interval trial.timer
scoreboard players operation #partition trial.timer /= 4 number
