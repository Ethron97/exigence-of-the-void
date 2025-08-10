say Deathed

# Reset cr_deaths
scoreboard players set @a cr_deaths 0

# Reset tutorial
function exigence:tutorial_old/reset

clear @a[tag=Tutorial] #exigence:win_clear
clear @a[tag=Tutorial] #exigence:loss_clear

# set step to previous multiple of 100
scoreboard players operation Step Tutorial = Fallback Tutorial

# Reload load
function exigence:tutorial_old/load

bossbar set exigence:tutorial name {text:"Follow the compass",color:"green",italic:false}
bossbar set exigence:tutorial value 0