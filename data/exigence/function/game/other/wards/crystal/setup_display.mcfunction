# Create block display entity for this

## CONSTRAINTS
#   AS Crystal

#=================================================================================================================

# Store this id for lookup
scoreboard players operation #compare game.story.ward_crystal.node_id = @s game.story.ward_crystal.node_id

# Summon block display
#   Colored glass based on score
execute at @s[tag=Emerald] run summon minecraft:item_display ~ ~0.5 ~ {interpolation_duration:20,billboard:"fixed",item:{id:"minecraft:lime_stained_glass",count:1},Tags:["NewCrystalDisplay","CrystalDisplay","Emerald"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute at @s[tag=Sapphire] run summon minecraft:item_display ~ ~0.5 ~ {interpolation_duration:20,billboard:"fixed",item:{id:"minecraft:blue_stained_glass",count:1},Tags:["NewCrystalDisplay","CrystalDisplay","Sapphire"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute at @s[tag=Ruby] run summon minecraft:item_display ~ ~0.5 ~ {interpolation_duration:20,billboard:"fixed",item:{id:"minecraft:red_stained_glass",count:1},Tags:["NewCrystalDisplay","CrystalDisplay","Ruby"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute at @s[tag=Topaz] run summon minecraft:item_display ~ ~0.5 ~ {interpolation_duration:20,billboard:"fixed",item:{id:"minecraft:yellow_stained_glass",count:1},Tags:["NewCrystalDisplay","CrystalDisplay","Topaz"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute at @s[tag=Amethyst] run summon minecraft:item_display ~ ~0.5 ~ {interpolation_duration:20,billboard:"fixed",item:{id:"minecraft:purple_stained_glass",count:1},Tags:["NewCrystalDisplay","CrystalDisplay","Amethyst"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}

# Join team
execute as @e[type=item_display,tag=CrystalDisplay,tag=Emerald] run team join Green @s
execute as @e[type=item_display,tag=CrystalDisplay,tag=Sapphire] run team join Echo @s
execute as @e[type=item_display,tag=CrystalDisplay,tag=Ruby] run team join Enemy @s
execute as @e[type=item_display,tag=CrystalDisplay,tag=Topaz] run team join Special @s
execute as @e[type=item_display,tag=CrystalDisplay,tag=Amethyst] run team join Menace @s

# Assign id
scoreboard players operation @e[type=minecraft:item_display,tag=NewCrystalDisplay] game.story.ward_crystal.node_id = #compare game.story.ward_crystal.node_id

# Remove local tag
tag @e[type=minecraft:item_display,tag=NewCrystalDisplay] remove NewCrystalDisplay
