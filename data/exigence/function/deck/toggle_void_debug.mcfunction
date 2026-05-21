# Used to toggle whether void cards get destroyed or not

#====================================================================================================

execute if score toggle.void debug matches 1 run scoreboard players set #temp debug 0
execute if score toggle.void debug matches 0 run scoreboard players set #temp debug 1

# Callout new debug value
execute if score toggle.void debug matches 1 run say Turning void debug off
execute if score toggle.void debug matches 0 run say Turning void on

# Update actual value
scoreboard players operation toggle.void debug = #temp debug

# Reminder in Predungeon so I don't forget
#execute if score toggle.void debug matches 1 run setblock -261 17 -75 minecraft:bamboo_sign[rotation=0]{front_text:{has_glowing_text:1b,color:"red",messages:["","VOID DEBUG","ON",""]}}
#execute if score toggle.void debug matches 0 run setblock -261 17 -75 minecraft:air

execute if score toggle.void debug matches 1 in exigence:hub run setblock 3 211 109 bamboo_wall_sign[facing=north]{front_text:{has_glowing_text:1b,color:"red",messages:["","VOID DEBUG","ON",""]}}
execute if score toggle.void debug matches 0 in exigence:hub run setblock 3 211 109 air

# Change echowintracking
execute if score toggle.void debug matches 1 run scoreboard players set Ethron97 career.settings.echo_win_tracking 0
execute if score toggle.void debug matches 0 run scoreboard players set Ethron97 career.settings.echo_win_tracking 1
