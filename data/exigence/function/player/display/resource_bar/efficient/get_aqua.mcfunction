# Subfunction called from ./update

## CONSTRAINTS
#   AS player

#=============================================================================================================

# Aqua
data modify storage exigence:resource_hud aqua_1 set value ""
data modify storage exigence:resource_hud aqua_2 set value ""
data modify storage exigence:resource_hud aqua_3 set value ""
data modify storage exigence:resource_hud aqua_4 set value ""
data modify storage exigence:resource_hud aqua_5 set value ""
data modify storage exigence:resource_hud aqua_6 set value ""
data modify storage exigence:resource_hud aqua_7 set value ""
data modify storage exigence:resource_hud aqua_8 set value ""
data modify storage exigence:resource_hud aqua_9 set value ""
data modify storage exigence:resource_hud aqua_10 set value ""

# Mostly for debug
data modify storage exigence:resource_hud aqua_ set value ""
execute if score Aqua Resources > MaxAqua Resources run data modify storage exigence:resource_hud aqua_ set value {text:"+",color:"dark_gray"}

# Returns spaced at the most likely break points for max resource to avoid running unncessary functions each tick
execute if score MaxAqua Resources matches 1.. if score Aqua Resources matches 1.. run data modify storage exigence:resource_hud aqua_1 set value {text:"❂",color:"aqua"}
execute if score MaxAqua Resources matches 1.. if score Aqua Resources matches 0 run data modify storage exigence:resource_hud aqua_1 set value {text:".",color:"dark_gray"}

execute if score MaxAqua Resources matches 2.. if score Aqua Resources matches 2.. run data modify storage exigence:resource_hud aqua_2 set value {text:"❂",color:"aqua"}
execute if score MaxAqua Resources matches 2.. if score Aqua Resources matches ..1 run data modify storage exigence:resource_hud aqua_2 set value {text:".",color:"dark_gray"}
execute if score MaxAqua Resources matches ..2 run return 0
execute if score MaxAqua Resources matches 3.. if score Aqua Resources matches 3.. run data modify storage exigence:resource_hud aqua_3 set value {text:"❂",color:"aqua"}
execute if score MaxAqua Resources matches 3.. if score Aqua Resources matches ..2 run data modify storage exigence:resource_hud aqua_3 set value {text:".",color:"dark_gray"}
execute if score MaxAqua Resources matches ..3 run return 0
execute if score MaxAqua Resources matches 4.. if score Aqua Resources matches 4.. run data modify storage exigence:resource_hud aqua_4 set value {text:"❂",color:"aqua"}
execute if score MaxAqua Resources matches 4.. if score Aqua Resources matches ..3 run data modify storage exigence:resource_hud aqua_4 set value {text:".",color:"dark_gray"}

execute if score MaxAqua Resources matches 5.. if score Aqua Resources matches 5.. run data modify storage exigence:resource_hud aqua_5 set value {text:"❂",color:"aqua"}
execute if score MaxAqua Resources matches 5.. if score Aqua Resources matches ..4 run data modify storage exigence:resource_hud aqua_5 set value {text:".",color:"dark_gray"}
execute if score MaxAqua Resources matches ..5 run return 0
execute if score MaxAqua Resources matches 6.. if score Aqua Resources matches 6.. run data modify storage exigence:resource_hud aqua_6 set value {text:"❂",color:"aqua"}
execute if score MaxAqua Resources matches 6.. if score Aqua Resources matches ..5 run data modify storage exigence:resource_hud aqua_6 set value {text:".",color:"dark_gray"}

execute if score MaxAqua Resources matches 7.. if score Aqua Resources matches 7.. run data modify storage exigence:resource_hud aqua_7 set value {text:"❂",color:"aqua"}
execute if score MaxAqua Resources matches 7.. if score Aqua Resources matches ..6 run data modify storage exigence:resource_hud aqua_7 set value {text:".",color:"dark_gray"}

execute if score MaxAqua Resources matches 8.. if score Aqua Resources matches 8.. run data modify storage exigence:resource_hud aqua_8 set value {text:"❂",color:"aqua"}
execute if score MaxAqua Resources matches 8.. if score Aqua Resources matches ..7 run data modify storage exigence:resource_hud aqua_8 set value {text:".",color:"dark_gray"}

execute if score MaxAqua Resources matches 9.. if score Aqua Resources matches 9.. run data modify storage exigence:resource_hud aqua_9 set value {text:"❂",color:"aqua"}
execute if score MaxAqua Resources matches 9.. if score Aqua Resources matches ..8 run data modify storage exigence:resource_hud aqua_9 set value {text:".",color:"dark_gray"}

execute if score MaxAqua Resources matches 10.. if score Aqua Resources matches 10.. run data modify storage exigence:resource_hud aqua_10 set value {text:"❂",color:"aqua"}
execute if score MaxAqua Resources matches 10.. if score Aqua Resources matches ..9 run data modify storage exigence:resource_hud aqua_10 set value {text:".",color:"dark_gray"}
