# Check if player has currency (just warn)

## CONSTRAINTS
#   AS player

#====================================================================================================
say check currency
# Clear currency
execute store result score #temp Temp run clear @s #exigence:currency 0

# Compare
execute if score #temp Temp matches 0 run return 0
#----------------------------------------------------------------------------------------------------

# Give player the option to disable this warning. (Because there are times the player may WANT to bring currency).
scoreboard players enable @s DisableCurrencyWarning

# Message this player
tellraw @s [{text:"!!! Warning: ",color:"yellow"},{text:"You are receiving this warning because you have ",color:gray}\
,{text:"Currency",color:"aqua"},{text:" item(s) in your inventory. \
Click ",color:"gray"},{text:"HERE",color:"yellow",underlined:true,bold:true,click_event:{action:"run_command",command:"/trigger DisableCurrencyWarning"}}\
,{text:" to disable this warning.",color:"gray",underlined:false,bold:false}]
