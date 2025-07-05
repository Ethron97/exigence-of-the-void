# Used to toggle whether void cards get destroyed or not

execute if data storage exigence:debug {void:1} run data modify storage temp debug set value 0
execute if data storage exigence:debug {void:0} run data modify storage temp debug set value 1

# Callout new debug value
execute if data storage exigence:debug {void:1} run say Turning void debug off
execute if data storage exigence:debug {void:0} run say Turning void on

# Update actual value
data modify storage exigence:debug void set from storage temp debug

# Reminder in Predungeon so I don't forget
execute if data storage exigence:debug {void:1} run setblock -261 17 -75 minecraft:bamboo_sign[rotation=0]{front_text:{has_glowing_text:1b,color:"red",messages:["","VOID DEBUG","ON",""]}}
execute if data storage exigence:debug {void:0} run setblock -261 17 -75 minecraft:air

# Change echowintracking
execute if data storage exigence:debug {void:1} run scoreboard players set Ethron97 s_disableEchoWinTracking 1
execute if data storage exigence:debug {void:0} run scoreboard players set Ethron97 s_disableEchoWinTracking 0
