# Load the ward health displays

## CONSTRAINTS
#   AS profile node
#   AT position

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Load crystal healths

# AMETHYST
summon minecraft:item_display ~0.3 ~ ~ {Rotation:[90.0f,0.0f],billboard:"fixed"\
,Tags:["CrystalHealth","PredungeonDisplay","Amethyst"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]},CustomName:{text:"ItemDisplay | CrystalHealth"}\
,item:{id:"minecraft:purple_stained_glass",count:1}}
summon minecraft:item_display ~0.3 ~ ~-0.001 {Rotation:[90.0f,45.0f],billboard:"fixed"\
,Tags:["CrystalHealth","PredungeonDisplay","Amethyst"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]},CustomName:{text:"ItemDisplay | CrystalHealth"}\
,item:{id:"minecraft:purple_stained_glass",count:1}}

# EMERAD
summon minecraft:item_display ~0.15 ~0.2 ~ {Rotation:[90.0f,0.0f],billboard:"fixed"\
,Tags:["CrystalHealth","PredungeonDisplay","Emerald"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]},CustomName:{text:"ItemDisplay | CrystalHealth"}\
,item:{id:"minecraft:lime_stained_glass",count:1}}
summon minecraft:item_display ~0.15 ~0.2 ~-0.001 {Rotation:[90.0f,45.0f],billboard:"fixed"\
,Tags:["CrystalHealth","PredungeonDisplay","Emerald"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]},CustomName:{text:"ItemDisplay | CrystalHealth"}\
,item:{id:"minecraft:lime_stained_glass",count:1}}

# SAPPHIRE
summon minecraft:item_display ~ ~ ~ {Rotation:[90.0f,0.0f],billboard:"fixed"\
,Tags:["CrystalHealth","PredungeonDisplay","Sapphire"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]},CustomName:{text:"ItemDisplay | CrystalHealth"}\
,item:{id:"minecraft:blue_stained_glass",count:1}}
summon minecraft:item_display ~ ~ ~-0.001 {Rotation:[90.0f,45.0f],billboard:"fixed"\
,Tags:["CrystalHealth","PredungeonDisplay","Sapphire"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]},CustomName:{text:"ItemDisplay | CrystalHealth"}\
,item:{id:"minecraft:blue_stained_glass",count:1}}

# RUBY
summon minecraft:item_display ~-0.15 ~0.2 ~ {Rotation:[90.0f,0.0f],billboard:"fixed"\
,Tags:["CrystalHealth","PredungeonDisplay","Ruby"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]},CustomName:{text:"ItemDisplay | CrystalHealth"}\
,item:{id:"minecraft:red_stained_glass",count:1}}
summon minecraft:item_display ~-0.15 ~0.2 ~-0.001 {Rotation:[90.0f,45.0f],billboard:"fixed"\
,Tags:["CrystalHealth","PredungeonDisplay","Ruby"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]},CustomName:{text:"ItemDisplay | CrystalHealth"}\
,item:{id:"minecraft:red_stained_glass",count:1}}

# TOPAZ
summon minecraft:item_display ~-0.3 ~ ~ {Rotation:[90.0f,0.0f],billboard:"fixed"\
,Tags:["CrystalHealth","PredungeonDisplay","Topaz"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]},CustomName:{text:"ItemDisplay | CrystalHealth"}\
,item:{id:"minecraft:yellow_stained_glass",count:1}}
summon minecraft:item_display ~-0.3 ~ ~-0.001 {Rotation:[90.0f,45.0f],billboard:"fixed"\
,Tags:["CrystalHealth","PredungeonDisplay","Topaz"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]},CustomName:{text:"ItemDisplay | CrystalHealth"}\
,item:{id:"minecraft:yellow_stained_glass",count:1}}

#====================================================================================================

# If are destroyed, make gray
execute if score @s profile.story.ward_amethyst matches 0 as @e[type=minecraft:item_display,tag=CrystalHealth,tag=Amethyst,distance=..3] run data modify entity @s item.id set value "minecraft:gray_stained_glass"
execute if score @s profile.story.ward_emerald matches 0 as @e[type=minecraft:item_display,tag=CrystalHealth,tag=Emerald,distance=..3] run data modify entity @s item.id set value "minecraft:gray_stained_glass"
execute if score @s profile.story.ward_sapphire matches 0 as @e[type=minecraft:item_display,tag=CrystalHealth,tag=Sapphire,distance=..3] run data modify entity @s item.id set value "minecraft:gray_stained_glass"
execute if score @s profile.story.ward_ruby matches 0 as @e[type=minecraft:item_display,tag=CrystalHealth,tag=Ruby,distance=..3] run data modify entity @s item.id set value "minecraft:gray_stained_glass"
execute if score @s profile.story.ward_topaz matches 0 as @e[type=minecraft:item_display,tag=CrystalHealth,tag=Topaz,distance=..3] run data modify entity @s item.id set value "minecraft:gray_stained_glass"
