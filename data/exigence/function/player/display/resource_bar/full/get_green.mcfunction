# Subfunction called from ./update

## CONSTRAINTS
#   AS player

#=============================================================================================================

# Green
data modify storage exigence:resource_hud green_1 set value {text:""}
data modify storage exigence:resource_hud green_2 set value {text:""}
data modify storage exigence:resource_hud green_3 set value {text:""}
data modify storage exigence:resource_hud green_4 set value {text:""}
data modify storage exigence:resource_hud green_5 set value {text:""}
data modify storage exigence:resource_hud green_6 set value {text:""}
data modify storage exigence:resource_hud green_7 set value {text:""}
data modify storage exigence:resource_hud green_8 set value {text:""}
data modify storage exigence:resource_hud green_9 set value {text:""}
data modify storage exigence:resource_hud green_10 set value {text:""}

# Mostly for debug
data modify storage exigence:resource_hud green_ set value {text:""}
execute if score Green Resources > MaxGreen Resources run data modify storage exigence:resource_hud green_ set value {text:"+",color:"dark_gray"}

# Returns spaced at the most likely break points for max resource to avoid running unncessary functions each tick
execute if score MaxGreen Resources matches 1.. if score Green Resources matches 1.. run data modify storage exigence:resource_hud green_1 set value {text:"❂",color:"dark_green"}
execute if score MaxGreen Resources matches 1.. if score Green Resources matches 0 run data modify storage exigence:resource_hud green_1 set value {text:"❂",color:"dark_gray"}

execute if score MaxGreen Resources matches 2.. if score Green Resources matches 2.. run data modify storage exigence:resource_hud green_2 set value {text:"❂",color:"dark_green"}
execute if score MaxGreen Resources matches 2.. if score Green Resources matches ..1 run data modify storage exigence:resource_hud green_2 set value {text:"❂",color:"dark_gray"}
execute if score MaxGreen Resources matches ..2 run return 0
execute if score MaxGreen Resources matches 3.. if score Green Resources matches 3.. run data modify storage exigence:resource_hud green_3 set value {text:"❂",color:"dark_green"}
execute if score MaxGreen Resources matches 3.. if score Green Resources matches ..2 run data modify storage exigence:resource_hud green_3 set value {text:"❂",color:"dark_gray"}
execute if score MaxGreen Resources matches ..3 run return 0
execute if score MaxGreen Resources matches 4.. if score Green Resources matches 4.. run data modify storage exigence:resource_hud green_4 set value {text:"❂",color:"dark_green"}
execute if score MaxGreen Resources matches 4.. if score Green Resources matches ..3 run data modify storage exigence:resource_hud green_4 set value {text:"❂",color:"dark_gray"}

execute if score MaxGreen Resources matches 5.. if score Green Resources matches 5.. run data modify storage exigence:resource_hud green_5 set value {text:"❂",color:"dark_green"}
execute if score MaxGreen Resources matches 5.. if score Green Resources matches ..4 run data modify storage exigence:resource_hud green_5 set value {text:"❂",color:"dark_gray"}
execute if score MaxGreen Resources matches ..5 run return 0
execute if score MaxGreen Resources matches 6.. if score Green Resources matches 6.. run data modify storage exigence:resource_hud green_6 set value {text:"❂",color:"dark_green"}
execute if score MaxGreen Resources matches 6.. if score Green Resources matches ..5 run data modify storage exigence:resource_hud green_6 set value {text:"❂",color:"dark_gray"}

execute if score MaxGreen Resources matches 7.. if score Green Resources matches 7.. run data modify storage exigence:resource_hud green_7 set value {text:"❂",color:"dark_green"}
execute if score MaxGreen Resources matches 7.. if score Green Resources matches ..6 run data modify storage exigence:resource_hud green_7 set value {text:"❂",color:"dark_gray"}

execute if score MaxGreen Resources matches 8.. if score Green Resources matches 8.. run data modify storage exigence:resource_hud green_8 set value {text:"❂",color:"dark_green"}
execute if score MaxGreen Resources matches 8.. if score Green Resources matches ..7 run data modify storage exigence:resource_hud green_8 set value {text:"❂",color:"dark_gray"}

execute if score MaxGreen Resources matches 9.. if score Green Resources matches 9.. run data modify storage exigence:resource_hud green_9 set value {text:"❂",color:"dark_green"}
execute if score MaxGreen Resources matches 9.. if score Green Resources matches ..8 run data modify storage exigence:resource_hud green_9 set value {text:"❂",color:"dark_gray"}

execute if score MaxGreen Resources matches 10.. if score Green Resources matches 10.. run data modify storage exigence:resource_hud green_10 set value {text:"❂",color:"dark_green"}
execute if score MaxGreen Resources matches 10.. if score Green Resources matches ..9 run data modify storage exigence:resource_hud green_10 set value {text:"❂",color:"dark_gray"}
