# Update the bar to countdown until the next card draw
# 30 seconds = 600 ticks, bossbar is %100 so bossbar = ticks/6
scoreboard players operation #UpdateBarVal tick_counter = card.draw.cooldown tick_counter
scoreboard players operation #UpdateBarVal tick_counter *= 100 number
scoreboard players operation #UpdateBarVal tick_counter /= card.draw.cooldown_max tick_counter

execute store result storage exigence:bossbar value int 1 run scoreboard players get #UpdateBarVal tick_counter
data modify storage exigence:bossbar name set value 'bossbar'

function exigence:bossbar/update_bar_macro with storage exigence:bossbar
