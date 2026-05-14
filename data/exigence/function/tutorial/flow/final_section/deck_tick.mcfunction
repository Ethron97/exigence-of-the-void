# called by tutorial/tick when player is in the final section

#====================================================================================================

# CardDrawCooldown controls when cards get added to the draw queue
scoreboard players remove tut.card_draw_cooldown hub.tutorial 1
# Update bossbar value
function exigence:bossbar/tutorial_deck/update_bar

execute unless score tut.card_draw_cooldown hub.tutorial matches ..0 run return 1
#----------------------------------------------------------------------------------------------------

scoreboard players set tut.card_draw_cooldown hub.tutorial 600
tellraw @a[x=12,y=97,z=-80,dx=230,dy=100,dz=250,tag=Tutorial,limit=1] [{text:"[",color:"white"},{text:"Deck empty - Drawing Fatigue",color:"gray"},{text:"]",color:"white"},{text:" + Menace",color:"dark_purple"}]
execute at @a[x=12,y=97,z=-80,dx=230,dy=100,dz=250,tag=Tutorial,limit=1] run playsound entity.allay.item_taken weather @a ~ ~1000 ~ 1000 1

scoreboard players operation tut.menace hub.tutorial += tut.fatigue hub.tutorial
scoreboard players add tut.fatigue hub.tutorial 1
