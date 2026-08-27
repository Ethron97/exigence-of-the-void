# Update the bar to countdown until next max menace effect

scoreboard players operation #UpdateBarVal tick_counter = effect.cooldown game.dungeon.menace

# Scale from 0-60 to 0-100
execute store result storage exigence:bossbar value int 1.6666 run scoreboard players get #UpdateBarVal tick_counter
data modify storage exigence:bossbar name set value 'bossbar'

function exigence:bossbar/update_bar_macro with storage exigence:bossbar

# Update name
bossbar set exigence:bossbar name [{text:"!!! DANGER !!! ",color:"red"},{text:"Next effect in ",color:"gray"}\
,{score:{name:"effect.cooldown",objective:"game.dungeon.menace"},color:"red"},{text:" seconds",color:'gray'}]
