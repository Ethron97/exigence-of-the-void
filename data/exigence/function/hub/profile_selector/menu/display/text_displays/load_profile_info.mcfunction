# Deselect other, if eixsts, then select this

## CONSTRAINTS
#   AS profile display
#   AT profile node

#=============================================================================================================

execute at @s run summon minecraft:text_display ~ ~1 ~ {billboard:"fixed",alignment:"left",Tags:["ProfileDetails","NewTextDisplay"],background:2017213500\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}\
,text:[{text:"Profile #: "},{text:"\nDifficulty: "},{text:"\nRuns: "},{text:"\nTime Played: "},{text:"\nCompletion: "}]}

# Call function to supply the specific values


# Give matching scoreboard value
execute at @s run scoreboard players operation @e[distance=..5,type=text_display,tag=NewTextDisplay] IDID = @s IDID
execute at @s store result score @e[distance=..5,type=text_display,tag=NewTextDisplay] hub.entity.profile_selector_id run data get entity @s item.components."minecraft:custom_data".profile_selector_id

execute at @s run tag @e[distance=..5,type=text_display,tag=NewTextDisplay] remove NewTextDisplay
