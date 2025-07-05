# Update bar value of Eye trial

# 30 seconds = 600 ticks, bossbar is %100 so bossbar = ticks/6
scoreboard players operation #UpdateBarVal TickCounter = Eye TrialTimer
# minus 3 seconds from pretile time
scoreboard players operation #UpdateBarVal TickCounter -= 60 number
scoreboard players operation #UpdateBarVal TickCounter > 0 number
scoreboard players operation #UpdateBarVal TickCounter /= 6 number

execute store result storage exigence:bossbar value int 1 run scoreboard players get #UpdateBarVal TickCounter
data modify storage exigence:bossbar name set value 'trial_eye'

function exigence:bossbar/update_bar_macro with storage exigence:bossbar
