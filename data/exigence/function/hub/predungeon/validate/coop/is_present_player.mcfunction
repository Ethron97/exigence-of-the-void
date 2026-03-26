# Check if player is present in predungeon or not

## CONSTRAINTS
#   AS player

#====================================================================================================

#say validate/coop/is_present_player

scoreboard players set #player_found Temp 1

# If in predungeon, good.
execute if entity @s[tag=Predungeon] run scoreboard players set #player_found Temp 2

# Otherwise, message this player and tell them to get their butt in predungeon.
tellraw @s[tag=!Predungeon] [{text:"!!! ",bold:true,color:red},{text:"Your co-op fellows are waiting for you in the ",color:red,bold:false}\
,{text:"Predungeon",color:"dark_purple",bold:false},{text:" room!",color:red,bold:false}]
# TODO "click here to warp there now"

execute at @s run playsound minecraft:block.sculk_sensor.clicking ui @s ~ ~10 ~ 2 1.4
