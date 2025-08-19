# Summon a new marker
execute at @s align x align y align z run summon minecraft:marker ~.5 ~ ~.5 {Tags:["NewMarker","Marker"]}

# Copy object level
scoreboard players operation @e[type=minecraft:marker,tag=NewMarker] ObjectLevel = @s ObjectLevel
tellraw @s [{text:"Active Level ",italic: false,bold: false,color: "white"},{"score":{"name":"@s","objective":"ObjectLevel"}}]
