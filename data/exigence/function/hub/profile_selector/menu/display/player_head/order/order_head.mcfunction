# Set order related head

## CONSTRAINTS
#   AS player head display

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3) Ordered

tag @s add Ordered

scoreboard players operation @s hub.entity.player_head_order = #order_index Temp
scoreboard players operation @s hub.entity.player_head_order %= 3 number

scoreboard players operation @s hub.entity.player_head_page = #order_index Temp
scoreboard players operation @s hub.entity.player_head_page /= 3 number
scoreboard players add @s hub.entity.player_head_page 1