# Update the bar to countdown until the next card draw
# 30 seconds = 600 ticks, bossbar is %100 so bossbar = ticks/6
scoreboard players operation #UpdateBarVal Tutorial = CardDrawCooldown Tutorial
scoreboard players operation #UpdateBarVal Tutorial /= 6 number

execute store result storage exigence:bossbar value int 1 run scoreboard players get #UpdateBarVal Tutorial
data modify storage exigence:bossbar name set value 'tutorial_deck'

function exigence:bossbar/update_bar_macro with storage exigence:bossbar
