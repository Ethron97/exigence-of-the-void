# Summon a new area effect cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["NewAec","Aec"]}

# Copy object level
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=NewAec] ObjectLevel = @s ObjectLevel
tellraw @s [{text:"Active Level ",italic: false,bold: false,color: "white"},{"score":{"name":"@s","objective":"ObjectLevel"}}]

# Center
execute at @s align x align y align z run tp @e[type=minecraft:area_effect_cloud,tag=NewAec] ~.5 ~ ~.5