#say Summon coin display

summon item_display -268 43 -37 {billboard:"center",Tags:["ConvertMoneyCoinDisplay","NewCMCD"],item:{id:"minecraft:gold_nugget",count:1,components:{"minecraft:custom_model_data":{"strings":["coin"]}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}}

# Initialize display scores
scoreboard players operation @e[type=minecraft:item_display,tag=NewCMCD] HoldingRingPos = #spacing CoinsToConvert
scoreboard players operation @e[type=minecraft:item_display,tag=NewCMCD] HoldingRingPos *= #i CoinsToConvert
scoreboard players set @e[type=minecraft:item_display,tag=NewCMCD] HoldingRingRadius 0

# Remove local tag
tag @e[type=minecraft:item_display,tag=NewCMCD] remove NewCMCD

# Reduce iteration score by 1
scoreboard players remove #i CoinsToConvert 1

# Iterate if score is greater than 0
execute if score #i CoinsToConvert matches 1.. run function exigence:hub/convert_money/display_hud/private/summon_coin_display