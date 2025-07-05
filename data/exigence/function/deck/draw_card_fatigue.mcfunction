tellraw @a [{text:"[",color:"white"},{text:"Deck empty - Drawing Fatigue",color:"gray"},{text:"]",color:"white"},{text:" + Menace",color:"dark_purple"}]

function exigence:cards/fatigue/play

# Update "Last played" data
data modify storage exigence:last_card text set value [{text:"Fatigue",color:"gray"}]

function exigence:cards/add_sidebar_display_fatigue

# Play thunder sound for sound queue
execute at @a[tag=ActivePlayer] run playsound entity.allay.item_taken weather @a ~ ~1000 ~ 1000 1
