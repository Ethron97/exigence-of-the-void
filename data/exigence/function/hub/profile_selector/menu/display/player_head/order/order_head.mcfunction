# Set order related head

## CONSTRAINTS
#   AS player head display

#=============================================================================================================

#say Ordered
tag @s add Ordered

scoreboard players operation @s hub.entity.player_head_order = #order_index Temp
scoreboard players operation @s hub.entity.player_head_order %= 3 number

scoreboard players operation @s hub.entity.player_head_page = #order_index Temp
scoreboard players operation @s hub.entity.player_head_page /= 3 number
scoreboard players add @s hub.entity.player_head_page 1