# Summon a new marker
summon minecraft:marker ~ ~ ~ {Tags:["NewMarker","Marker"]}

# Copy object level
scoreboard players operation @e[type=minecraft:marker,tag=NewMarker] ObjectLevel = @s ObjectLevel
tellraw @s [{text:"Active Level ",italic: false,bold: false,color: "white"},{"score":{"name":"@s","objective":"ObjectLevel"}}]

# Center
execute at @s align x align y align z run tp @e[type=minecraft:marker,tag=NewMarker] ~.5 ~ ~.5
