# Summon a new marker
$execute align x align y align z run summon minecraft:marker ~0.5 ~ ~0.5 {Duration:999999,Tags:["NewMarker","Marker","HiddenBlock","Reflection$(reflection)","$(mirror)"]}

# If debug is on, summon display
$execute if data storage exigence:debug {mirror:1} as @e[type=minecraft:marker,tag=NewMarker] at @s positioned ~-.5 ~ ~-.5 run function exigence:mirror/hidden_blocks/debug/summon_display {mirror:$(mirror)}

# Remove local tag
tag @e[type=minecraft:marker,tag=NewMarker] remove NewMarker
