# Consume_missing.mcfunction should only be called from test_consume

# Display consume in subtitle
execute if score #MissingAqua Resources matches 1 run data modify storage exigence:resource_hud aqua_missing set value [{text:"?",color:"aqua"}]
execute if score #MissingAqua Resources matches 2 run data modify storage exigence:resource_hud aqua_missing set value [{text:"??",color:"aqua"}]
execute if score #MissingAqua Resources matches 3 run data modify storage exigence:resource_hud aqua_missing set value [{text:"???",color:"aqua"}]
execute if score #MissingAqua Resources matches 4 run data modify storage exigence:resource_hud aqua_missing set value [{text:"????",color:"aqua"}]
execute if score #MissingAqua Resources matches 5 run data modify storage exigence:resource_hud aqua_missing set value [{text:"?????",color:"aqua"}]
execute if score #MissingAqua Resources matches 6 run data modify storage exigence:resource_hud aqua_missing set value [{text:"??????",color:"aqua"}]
