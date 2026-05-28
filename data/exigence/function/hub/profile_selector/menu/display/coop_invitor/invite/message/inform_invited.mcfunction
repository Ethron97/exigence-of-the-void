# Inform player they have been invited to a coop profile

## CONSTRAINTS
#   AS player invited
#   AT player inviting

## INPUT
#   #creating_difficulty Temp

#====================================================================================================

execute if score #creating_difficulty Temp matches 1 run tellraw @s [{text:"\nYou have been invited by ",color:"green"}\
,{selector:"@p[tag=SendingInvite,distance=..0.1]",color:"gold"},{text:" to join a ",color:"green"},{text:"[",color:"gray"}\
,{sprite:"exigence:item/profile_selector/difficulty_radiant",atlas:"items",color:"white",hover_event:{action:"show_text",value:[{text:"Difficulty: ",color:"gray"},{text:"Radiant",color:"yellow"},{text:"\nEnemies are 20% slower",color:"white",italic:true}]}}\
,{text:"]",color:"gray"},{text:" co-co profile!",color:"green"}]

execute if score #creating_difficulty Temp matches 2 run tellraw @s [{text:"\nYou have been invited by ",color:"green"}\
,{selector:"@p[tag=SendingInvite,distance=..0.1]",color:"gold"},{text:" to join a ",color:"green"},{text:"[",color:"gray"}\
,{sprite:"exigence:item/profile_selector/difficulty_ancient",atlas:"items",color:"white",hover_event:{action:"show_text",value:[{text:"Difficulty: ",color:"gray"},{text:"Ancient",color:"gold"},{text:"\nStandard difficulty",color:"white",italic:true}]}}\
,{text:"]",color:"gray"},{text:" co-co profile!",color:"green"}]

execute if score #creating_difficulty Temp matches 3 run tellraw @s [{text:"\nYou have been invited by ",color:"green"}\
,{selector:"@p[tag=SendingInvite,distance=..0.1]",color:"gold"},{text:" to join a ",color:"green"},{text:"[",color:"gray"}\
,{sprite:"exigence:item/profile_selector/difficulty_ascendant",atlas:"items",color:"white",hover_event:{action:"show_text",value:[{text:"Difficulty: ",color:"gray"},{text:"Ascendant",color:"red"},{text:"\n+1 Ravagers on each level",color:"white",italic:true}]}}\
,{text:"]",color:"gray"},{text:" co-co profile!",color:"green"}]

# TODO exigent

tellraw @s [{text:"Click:    ",color:gray},{text:"[ACCEPT]",italic:false,bold:false,color:"green","click_event": {"action":"run_command","command":"/trigger AcceptCoopInvite"}},"    ",{text:"[DECLINE]",italic: false,color: "red","click_event": {"action":"run_command","command":"/trigger DeclineCoopInvite"}}]
tellraw @s [{text:""}]