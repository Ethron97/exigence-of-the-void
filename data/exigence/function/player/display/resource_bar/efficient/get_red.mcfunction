# Subfunction called from ./update

## CONSTRAINTS
#   AS player

#=============================================================================================================

# Red
data modify storage exigence:resource_hud red_1 set value ""
data modify storage exigence:resource_hud red_2 set value ""
data modify storage exigence:resource_hud red_3 set value ""
data modify storage exigence:resource_hud red_4 set value ""
data modify storage exigence:resource_hud red_5 set value ""
data modify storage exigence:resource_hud red_6 set value ""
data modify storage exigence:resource_hud red_7 set value ""
data modify storage exigence:resource_hud red_8 set value ""
data modify storage exigence:resource_hud red_9 set value ""
data modify storage exigence:resource_hud red_10 set value ""

# Mostly for debug
data modify storage exigence:resource_hud red_ set value ""
execute if score Red Resources > MaxRed Resources run data modify storage exigence:resource_hud red_ set value {text:"+",color:"dark_gray"}

# Returns spaced at the most likely break points for max resource to avoid running unncessary functions each tick
execute if score MaxRed Resources matches 1.. if score Red Resources matches 1.. run data modify storage exigence:resource_hud red_1 set value {text:"❂",color:"dark_red"}
execute if score MaxRed Resources matches 1.. if score Red Resources matches 0 run data modify storage exigence:resource_hud red_1 set value {text:".",color:"dark_gray"}

execute if score MaxRed Resources matches 2.. if score Red Resources matches 2.. run data modify storage exigence:resource_hud red_2 set value {text:"❂",color:"dark_red"}
execute if score MaxRed Resources matches 2.. if score Red Resources matches ..1 run data modify storage exigence:resource_hud red_2 set value {text:".",color:"dark_gray"}
execute if score MaxRed Resources matches ..2 run return 0
execute if score MaxRed Resources matches 3.. if score Red Resources matches 3.. run data modify storage exigence:resource_hud red_3 set value {text:"❂",color:"dark_red"}
execute if score MaxRed Resources matches 3.. if score Red Resources matches ..2 run data modify storage exigence:resource_hud red_3 set value {text:".",color:"dark_gray"}
execute if score MaxRed Resources matches ..3 run return 0
execute if score MaxRed Resources matches 4.. if score Red Resources matches 4.. run data modify storage exigence:resource_hud red_4 set value {text:"❂",color:"dark_red"}
execute if score MaxRed Resources matches 4.. if score Red Resources matches ..3 run data modify storage exigence:resource_hud red_4 set value {text:".",color:"dark_gray"}

execute if score MaxRed Resources matches 5.. if score Red Resources matches 5.. run data modify storage exigence:resource_hud red_5 set value {text:"❂",color:"dark_red"}
execute if score MaxRed Resources matches 5.. if score Red Resources matches ..4 run data modify storage exigence:resource_hud red_5 set value {text:".",color:"dark_gray"}
execute if score MaxRed Resources matches ..5 run return 0
execute if score MaxRed Resources matches 6.. if score Red Resources matches 6.. run data modify storage exigence:resource_hud red_6 set value {text:"❂",color:"dark_red"}
execute if score MaxRed Resources matches 6.. if score Red Resources matches ..5 run data modify storage exigence:resource_hud red_6 set value {text:".",color:"dark_gray"}

execute if score MaxRed Resources matches 7.. if score Red Resources matches 7.. run data modify storage exigence:resource_hud red_7 set value {text:"❂",color:"dark_red"}
execute if score MaxRed Resources matches 7.. if score Red Resources matches ..6 run data modify storage exigence:resource_hud red_7 set value {text:".",color:"dark_gray"}

execute if score MaxRed Resources matches 8.. if score Red Resources matches 8.. run data modify storage exigence:resource_hud red_8 set value {text:"❂",color:"dark_red"}
execute if score MaxRed Resources matches 8.. if score Red Resources matches ..7 run data modify storage exigence:resource_hud red_8 set value {text:".",color:"dark_gray"}

execute if score MaxRed Resources matches 9.. if score Red Resources matches 9.. run data modify storage exigence:resource_hud red_9 set value {text:"❂",color:"dark_red"}
execute if score MaxRed Resources matches 9.. if score Red Resources matches ..8 run data modify storage exigence:resource_hud red_9 set value {text:".",color:"dark_gray"}

execute if score MaxRed Resources matches 10.. if score Red Resources matches 10.. run data modify storage exigence:resource_hud red_10 set value {text:"❂",color:"dark_red"}
execute if score MaxRed Resources matches 10.. if score Red Resources matches ..9 run data modify storage exigence:resource_hud red_10 set value {text:".",color:"dark_gray"}
