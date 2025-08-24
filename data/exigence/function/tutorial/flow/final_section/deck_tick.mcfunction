# called by tutorial/tick when player is in the final section

#=============================================================================================================

# CardDrawCooldown controls when cards get added to the draw queue
scoreboard players remove CardDrawCooldown Tutorial 1
# Update bossbar value
function exigence:bossbar/tutorial_deck/update_bar

execute unless score CardDrawCooldown Tutorial matches ..0 run return 1
#=============================================================================================================

scoreboard players set CardDrawCooldown Tutorial 600
tellraw @a[distance=..1000,tag=Tutorial] [{text:"[",color:"white"},{text:"Deck empty - Drawing Fatigue",color:"gray"},{text:"]",color:"white"},{text:" + Menace",color:"dark_purple"}]
execute at @a[distance=..1000,tag=Tutorial] run playsound entity.allay.item_taken weather @a ~ ~1000 ~ 1000 1

scoreboard players operation Menace Tutorial += Fatigue Tutorial
scoreboard players add Fatigue Tutorial 1
