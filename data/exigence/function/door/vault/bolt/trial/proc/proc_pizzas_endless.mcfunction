# Called from Tick when pizza timer reaches 0
#   Responsible for calling 1 or more pizzas depending on the current Trial time, then reseting the Pizza timer

## CONSTRAINTS
#   AS/AT trial node (bolt)

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Proc pizzas (endless)

# The longer into the trial, the higher odds of multiple pizzas and the shorter cooldown between them

# Always one pizza
function exigence:door/vault/bolt/trial/pizza/new_pizza

# Chance for second pizza
scoreboard players set #random Random 0
execute store result score #random Random if score @s trial.timer matches ..200 run random value 1..4
execute store result score #random Random if score @s trial.timer matches 201..400 run random value 1..3
execute store result score #random Random if score @s trial.timer matches 400.. run random value 1..2
execute if score #random Random matches 1 run function exigence:door/vault/bolt/trial/pizza/new_pizza

# Chance for third pizza
scoreboard players set #random Random 0
execute store result score #random Random if score @s trial.timer matches ..200 run random value 1..6
execute store result score #random Random if score @s trial.timer matches 201..400 run random value 1..5
execute store result score #random Random if score @s trial.timer matches 400.. run random value 1..4
execute if score #random Random matches 1 run function exigence:door/vault/bolt/trial/pizza/new_pizza

# Chance for fourth pizza
scoreboard players set #random Random 0
execute store result score #random Random if score @s trial.timer matches ..200 run random value 1..14
execute store result score #random Random if score @s trial.timer matches 201..400 run random value 1..11
execute store result score #random Random if score @s trial.timer matches 400.. run random value 1..7
execute if score #random Random matches 1 run function exigence:door/vault/bolt/trial/pizza/new_pizza

# Chance for fifth pizza
scoreboard players set #random Random 0
execute store result score #random Random run random value 1..7
execute if score @s trial.timer matches 600.. if score #random Random matches 1 run function exigence:door/vault/bolt/trial/pizza/new_pizza


# Reset timer
## SWITCH
execute store result score @s trial.timer.cooldown if score @s trial.timer matches ..200 run return run random value 12..55
execute store result score @s trial.timer.cooldown if score @s trial.timer matches 201..400 run return run random value 10..36
execute store result score @s trial.timer.cooldown if score @s trial.timer matches 400.. run return run random value 8..27
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 500..600 run return run random value 8..26
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 600..700 run return run random value 8..25
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 700..800 run return run random value 8..24
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 800..900 run return run random value 8..23
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 900.. run return run random value 8..22
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1000..1100 run return run random value 8..21
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1100..1200 run return run random value 8..20
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1200..1200 run return run random value 8..19
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1300..1200 run return run random value 8..18
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1400..1200 run return run random value 8..17
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1500..1200 run return run random value 8..16
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1600..1200 run return run random value 8..15
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1700..1200 run return run random value 8..14
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1800..1200 run return run random value 8..13
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1900..1200 run return run random value 8..12
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 2000..1200 run return run random value 8..11
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1100..1200 run return run random value 8..10
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1100..1200 run return run random value 7..9
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1100..1200 run return run random value 6..8
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1100..1200 run return run random value 5..7
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1100..1200 run return run random value 4..6
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1100..1200 run return run random value 3..5
#execute store result score @s trial.timer.cooldown if score @s trial.timer matches 1100..1200 run return run random value 2..4
