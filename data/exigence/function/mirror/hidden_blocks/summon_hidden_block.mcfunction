# Summon hidden block marker

## CONSTRAINTS
#   AT position

#====================================================================================================

# DEBUG
$execute if score toggle.mirror debug matches 1 if score debug.level debug matches 4.. run say (D4) Reflection$(reflection) $(mirror)

# Summon a new marker
$execute align x align y align z run summon minecraft:marker ~0.5 ~ ~0.5 {Duration:999999,Tags:["NewMarker","Marker","HiddenBlock","ETICK","Reflection$(reflection)","$(mirror)"],CustomName:{text:"Marker | HiddenBlock"}}

# If debug is on, summon display
$execute if score toggle.mirror debug matches 1 as @e[type=minecraft:marker,tag=NewMarker,distance=..1] at @s positioned ~-.5 ~ ~-.5 run function exigence:mirror/hidden_blocks/debug/summon_display {mirror:'$(mirror)'}

# Remove local tag
tag @e[type=minecraft:marker,tag=NewMarker,distance=..1] remove NewMarker
