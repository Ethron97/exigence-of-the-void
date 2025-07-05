# Consume_missing.mcfunction should only be called from test_consume

# Display consume in subtitle
execute if score #MissingRed Resources matches 1 run data modify storage exigence:resource_hud red_missing set value [{text:"?",color:"dark_red"}]
execute if score #MissingRed Resources matches 2 run data modify storage exigence:resource_hud red_missing set value [{text:"??",color:"dark_red"}]
execute if score #MissingRed Resources matches 3 run data modify storage exigence:resource_hud red_missing set value [{text:"???",color:"dark_red"}]
execute if score #MissingRed Resources matches 4 run data modify storage exigence:resource_hud red_missing set value [{text:"????",color:"dark_red"}]
execute if score #MissingRed Resources matches 5 run data modify storage exigence:resource_hud red_missing set value [{text:"?????",color:"dark_red"}]
execute if score #MissingRed Resources matches 6 run data modify storage exigence:resource_hud red_missing set value [{text:"??????",color:"dark_red"}]
