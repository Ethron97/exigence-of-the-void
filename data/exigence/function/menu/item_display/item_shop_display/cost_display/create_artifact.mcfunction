# Create new cost display for this item display
#   Responsible purely for entity creation and assignment

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item.components."minecraft:custom_data"

#=============================================================================================================

# DEBUG
#say Creating cost display ARTIFACT

# Add tag
tag @s add DisplayingCost

# Summon new vault key display
$execute at @s[tag=!Trial,tag=!Crucible] positioned ^0.08 ^-0.67 ^0.1 run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:$(vault)_armor_trim_smithing_template"},Rotation:$(Rotation),Tags:["ArtifactCostDisplay","NewArtifactCostDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}}
$execute at @s[tag=Trial,tag=!Hover] positioned ^ ^-0.67 ^0.1 run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:$(vault)_armor_trim_smithing_template"},Rotation:$(Rotation),Tags:["ArtifactCostDisplay","NewArtifactCostDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}}
$execute at @s[tag=Trial,tag=Hover] positioned ^-0.26 ^-0.67 ^0.1 run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:$(vault)_armor_trim_smithing_template"},Rotation:$(Rotation),Tags:["ArtifactCostDisplay","NewArtifactCostDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}}
$execute at @s[tag=Crucible,tag=!Hover] positioned ^ ^-0.67 ^0.1 run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:$(vault)_armor_trim_smithing_template"},Rotation:$(Rotation),Tags:["ArtifactCostDisplay","NewArtifactCostDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}}
$execute at @s[tag=Crucible,tag=Hover] positioned ^-0.43 ^-0.67 ^0.1 run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:$(vault)_armor_trim_smithing_template"},Rotation:$(Rotation),Tags:["ArtifactCostDisplay","NewArtifactCostDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}}

# Save IDID
scoreboard players operation #compare IDID = @s IDID

# Handle data
execute at @s as @e[distance=..5,type=minecraft:item_display,tag=NewArtifactCostDisplay] run function exigence:menu/item_display/item_shop_display/cost_display/create_artifact_b
