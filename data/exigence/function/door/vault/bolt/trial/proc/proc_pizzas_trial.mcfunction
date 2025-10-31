# Called from Tick when pizza timer reaches 0
#   Responsible for calling 1 or more pizzas depending on the current Trial time, then reseting the Pizza timer

#========================================================================================================

# The longer into the trial, the higher odds of multiple pizzas and the shorter cooldown between them

# Always one pizza
function exigence:door/vault/bolt/trial/pizza/new_pizza

# Chance for second pizza
scoreboard players set #random Random 0
execute store result score #random Random if score Bolt TrialTimer matches ..200 run random value 1..4
execute store result score #random Random if score Bolt TrialTimer matches 201..400 run random value 1..3
execute store result score #random Random if score Bolt TrialTimer matches 400.. run random value 1..2
execute if score #random Random matches 1 run function exigence:door/vault/bolt/trial/pizza/new_pizza

# Chance for third pizza
scoreboard players set #random Random 0
execute store result score #random Random if score Bolt TrialTimer matches ..200 run random value 1..6
execute store result score #random Random if score Bolt TrialTimer matches 201..400 run random value 1..5
execute store result score #random Random if score Bolt TrialTimer matches 400.. run random value 1..4
execute if score #random Random matches 1 run function exigence:door/vault/bolt/trial/pizza/new_pizza

# Chance for fourth pizza
#scoreboard players set #random Random 0
#execute store result score #random Random if score Bolt TrialTimer matches ..200 run random value 1..20
#execute store result score #random Random if score Bolt TrialTimer matches 201..400 run random value 1..12
#execute store result score #random Random if score Bolt TrialTimer matches 400.. run random value 1..8
#execute if score #random Random matches 1 run function exigence:door/vault/bolt/trial/pizza/new_pizza

# Reset timer
execute store result score Pizza TrialTimer if score Bolt TrialTimer matches ..200 run random value 12..60
execute store result score Pizza TrialTimer if score Bolt TrialTimer matches 201..400 run random value 12..40
execute store result score Pizza TrialTimer if score Bolt TrialTimer matches 400.. run random value 10..30
