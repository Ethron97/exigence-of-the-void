# Subfunction called from ./update

## CONSTRAINTS
#   AS player

#=============================================================================================================

# Aqua
data modify storage exigence:resource_hud aqua_1 set value {text:""}
data modify storage exigence:resource_hud aqua_2 set value {text:""}
data modify storage exigence:resource_hud aqua_3 set value {text:""}
data modify storage exigence:resource_hud aqua_4 set value {text:""}
data modify storage exigence:resource_hud aqua_5 set value {text:""}
data modify storage exigence:resource_hud aqua_6 set value {text:""}
data modify storage exigence:resource_hud aqua_7 set value {text:""}
data modify storage exigence:resource_hud aqua_8 set value {text:""}
data modify storage exigence:resource_hud aqua_9 set value {text:""}
data modify storage exigence:resource_hud aqua_10 set value {text:""}

# Mostly for debug
data modify storage exigence:resource_hud aqua_ set value {text:""}
execute if score Current.Aqua game.resources > Max.Aqua game.resources run data modify storage exigence:resource_hud aqua_ set value {text:"+",color:"dark_gray"}

# Returns spaced at the most likely break points for max resource to avoid running unncessary functions each tick
execute if score Max.Aqua game.resources matches 1.. if score Current.Aqua game.resources matches 1.. run data modify storage exigence:resource_hud aqua_1 set value {text:"❂",color:"aqua"}
execute if score Max.Aqua game.resources matches 1.. if score Current.Aqua game.resources matches 0 run data modify storage exigence:resource_hud aqua_1 set value {text:"❂",color:"dark_gray"}

execute if score Max.Aqua game.resources matches 2.. if score Current.Aqua game.resources matches 2.. run data modify storage exigence:resource_hud aqua_2 set value {text:"❂",color:"aqua"}
execute if score Max.Aqua game.resources matches 2.. if score Current.Aqua game.resources matches ..1 run data modify storage exigence:resource_hud aqua_2 set value {text:"❂",color:"dark_gray"}
execute if score Max.Aqua game.resources matches ..2 run return 0
execute if score Max.Aqua game.resources matches 3.. if score Current.Aqua game.resources matches 3.. run data modify storage exigence:resource_hud aqua_3 set value {text:"❂",color:"aqua"}
execute if score Max.Aqua game.resources matches 3.. if score Current.Aqua game.resources matches ..2 run data modify storage exigence:resource_hud aqua_3 set value {text:"❂",color:"dark_gray"}
execute if score Max.Aqua game.resources matches ..3 run return 0
execute if score Max.Aqua game.resources matches 4.. if score Current.Aqua game.resources matches 4.. run data modify storage exigence:resource_hud aqua_4 set value {text:"❂",color:"aqua"}
execute if score Max.Aqua game.resources matches 4.. if score Current.Aqua game.resources matches ..3 run data modify storage exigence:resource_hud aqua_4 set value {text:"❂",color:"dark_gray"}

execute if score Max.Aqua game.resources matches 5.. if score Current.Aqua game.resources matches 5.. run data modify storage exigence:resource_hud aqua_5 set value {text:"❂",color:"aqua"}
execute if score Max.Aqua game.resources matches 5.. if score Current.Aqua game.resources matches ..4 run data modify storage exigence:resource_hud aqua_5 set value {text:"❂",color:"dark_gray"}
execute if score Max.Aqua game.resources matches ..5 run return 0
execute if score Max.Aqua game.resources matches 6.. if score Current.Aqua game.resources matches 6.. run data modify storage exigence:resource_hud aqua_6 set value {text:"❂",color:"aqua"}
execute if score Max.Aqua game.resources matches 6.. if score Current.Aqua game.resources matches ..5 run data modify storage exigence:resource_hud aqua_6 set value {text:"❂",color:"dark_gray"}

execute if score Max.Aqua game.resources matches 7.. if score Current.Aqua game.resources matches 7.. run data modify storage exigence:resource_hud aqua_7 set value {text:"❂",color:"aqua"}
execute if score Max.Aqua game.resources matches 7.. if score Current.Aqua game.resources matches ..6 run data modify storage exigence:resource_hud aqua_7 set value {text:"❂",color:"dark_gray"}

execute if score Max.Aqua game.resources matches 8.. if score Current.Aqua game.resources matches 8.. run data modify storage exigence:resource_hud aqua_8 set value {text:"❂",color:"aqua"}
execute if score Max.Aqua game.resources matches 8.. if score Current.Aqua game.resources matches ..7 run data modify storage exigence:resource_hud aqua_8 set value {text:"❂",color:"dark_gray"}

execute if score Max.Aqua game.resources matches 9.. if score Current.Aqua game.resources matches 9.. run data modify storage exigence:resource_hud aqua_9 set value {text:"❂",color:"aqua"}
execute if score Max.Aqua game.resources matches 9.. if score Current.Aqua game.resources matches ..8 run data modify storage exigence:resource_hud aqua_9 set value {text:"❂",color:"dark_gray"}

execute if score Max.Aqua game.resources matches 10.. if score Current.Aqua game.resources matches 10.. run data modify storage exigence:resource_hud aqua_10 set value {text:"❂",color:"aqua"}
execute if score Max.Aqua game.resources matches 10.. if score Current.Aqua game.resources matches ..9 run data modify storage exigence:resource_hud aqua_10 set value {text:"❂",color:"dark_gray"}
