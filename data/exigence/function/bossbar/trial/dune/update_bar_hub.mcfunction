# Update bar value of Dune trial

## CONSTRAINTS
#   AS trial node

#====================================================================================================

# 30 seconds = 600 ticks, bossbar is %100 so bossbar = ticks/6
scoreboard players operation #UpdateBarVal tick_counter = @s trial.timer
# minus 3 seconds from pretile time
scoreboard players operation #UpdateBarVal tick_counter -= 60 number
scoreboard players operation #UpdateBarVal tick_counter > 0 number
scoreboard players operation #UpdateBarVal tick_counter /= 6 number

execute store result storage exigence:bossbar value int 1 run scoreboard players get #UpdateBarVal tick_counter
data modify storage exigence:bossbar name set value 'hub_trial_dune'

function exigence:bossbar/update_bar_macro with storage exigence:bossbar
