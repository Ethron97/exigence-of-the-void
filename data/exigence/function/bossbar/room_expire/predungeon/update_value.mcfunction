# Update the value of this bossbar

## CONSTRAINTS
#   AS room node

#====================================================================================================

# Update bar macro
scoreboard players operation #bossbar Temp = @s hub.room.max_timer
scoreboard players operation #bossbar Temp -= @s hub.room.current_timer
scoreboard players operation #bossbar Temp /= 20 number

# Set bossbar
execute store result storage exigence:bossbar value int 1.66 run scoreboard players get #bossbar Temp
data modify storage exigence:bossbar name set value 'expire_predungeon'
function exigence:bossbar/update_bar_macro with storage exigence:bossbar

# Update name
bossbar set exigence:expire_predungeon name [{text:"This room will forcibly close in ",color:"red"},{score:{name:"#bossbar",objective:"Temp"},color:"gold"},{text:" seconds",color:"red"}]
