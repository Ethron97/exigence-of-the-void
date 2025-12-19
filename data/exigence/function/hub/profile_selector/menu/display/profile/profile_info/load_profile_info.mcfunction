# Deselect other, if eixsts, then select this

## CONSTRAINTS
#   AS/AT profile display

## INPUT
#   data

#=============================================================================================================

# Summon background
execute positioned ~ ~1.5 ~ run function exigence:hub/profile_selector/menu/display/profile/profile_info/profile_info_background with entity @s item.components."minecraft:custom_data"

summon minecraft:text_display ~ ~1.08 ~0.03 {billboard:"fixed",alignment:"center",Tags:["ProfileDetails","NewDisplay","Main"],background:1\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}\
,text:[{text:""},{text:"\nDifficulty:",color:"#DAD2BC"},{text:"",color:"yellow"},{text:"\n\nRuns: ",color:"#DAD2BC"}\
,{text:"",color:"white"},{text:"",color:"white"},{text:"",color:"white"},{text:"\n\nTime Played:",color:"#DAD2BC"},{text:"\n",color:"white"}]}

summon minecraft:text_display ~ ~1.08 ~0.03 {billboard:"fixed",alignment:"center",Tags:["ProfileDetails","NewDisplay","Time"],background:1\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}\
,text:[{text:""}]}

#=============================================================================================================
## DIFFICULTY
execute store result score #temp Temp run data get entity @s item.components."minecraft:custom_data".difficulty
execute if score #temp Temp matches 1 run data modify entity @n[distance=..5,type=text_display,tag=NewDisplay,tag=Main] text.extra[1].text set value "\nRadiant"
execute if score #temp Temp matches 1 run data modify entity @n[distance=..5,type=text_display,tag=NewDisplay,tag=Main] text.extra[1].color set value "yellow"

execute if score #temp Temp matches 2 run data modify entity @n[distance=..5,type=text_display,tag=NewDisplay,tag=Main] text.extra[1].text set value "\nAncient"
execute if score #temp Temp matches 2 run data modify entity @n[distance=..5,type=text_display,tag=NewDisplay,tag=Main] text.extra[1].color set value "gold"

execute if score #temp Temp matches 3 run data modify entity @n[distance=..5,type=text_display,tag=NewDisplay,tag=Main] text.extra[1].text set value "\nAscendant"
execute if score #temp Temp matches 3 run data modify entity @n[distance=..5,type=text_display,tag=NewDisplay,tag=Main] text.extra[1].color set value "red"

#=============================================================================================================
## RUNS
#   TODO if exigence, runs/100
$execute in exigence:profile_data positioned 8 128 8 as @n[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.profile_id=$(profile_id)}] run scoreboard players operation #temp2 Temp = @s profile.data.winloss.attempts_total
data modify entity @n[distance=..5,type=text_display,tag=NewDisplay,tag=Main] text.extra[3] set value {score:{name:"#temp2",objective:"Temp"},color:white}
execute if score #temp Temp matches 1.. run data modify entity @n[distance=..5,type=text_display,tag=NewDisplay,tag=Main] text.extra[4] set value {text:"/",color:"#DAD2BC"}
execute if score #temp Temp matches 1.. run data modify entity @n[distance=..5,type=text_display,tag=NewDisplay,tag=Main] text.extra[5] set value {text:"100",color:"dark_purple"}

#=============================================================================================================
## PLAY TIME
$execute in exigence:profile_data positioned 8 128 8 as @n[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.profile_id=$(profile_id)}] run scoreboard players operation in.ticks tick_convert = @s profile.data.gametime.t.ticks_playtime
function exigence:misc/general/convert_tick_to_time

data modify entity @n[distance=..5,type=text_display,tag=NewDisplay,tag=Time] text set value \
[{text:"",color:"white",bold:false}\
,{"score":{"name":"out.h","objective":"tick_convert"},color:"white"},{text:"h ",italic:false,bold:false,color:"#DAD2BC"}\
,{"score":{"name":"out.m","objective":"tick_convert"},color:"white"},{text:"m ",italic:false,bold:false,color:"#DAD2BC"}\
,{"score":{"name":"out.s","objective":"tick_convert"},color:"white"},{text:"s ",italic:false,bold:false,color:"#DAD2BC"}]

#=============================================================================================================
# Give matching scoreboard value
scoreboard players operation @n[distance=..5,type=#exigence:display,tag=NewDisplay] IDID = @s IDID
$scoreboard players set @n[distance=..5,type=#exigence:display,tag=NewDisplay] hub.entity.profile_selector_id $(profile_selector_id)
#execute store result score @n[distance=..5,type=text_display,tag=NewDisplay] hub.entity.profile_selector_id run data get entity @s item.components."minecraft:custom_data".profile_selector_id

tag @n[distance=..5,type=#exigence:display,tag=NewDisplay] remove NewDisplay
