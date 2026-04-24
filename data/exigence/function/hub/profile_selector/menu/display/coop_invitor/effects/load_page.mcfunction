# Load page #

## CONSTRAINTS
#   AS/AT slot dislpay

## INPUT
#   SCORE #current_page Temp

#====================================================================================================

#tellraw @a [{text:"Load page: "},{score:{name:"#current_page",objective:"Temp"}}]

# Teleport heads based on score

execute as @e[type=minecraft:item_display,scores={hub.entity.player_head_order=1},tag=PlayerHeadDisplay,distance=..7] if score @s hub.entity.player_head_page = #current_page Temp \
run tp @s ~-0.31 ~1.35 ~-0.03

execute as @e[type=minecraft:item_display,scores={hub.entity.player_head_order=2},tag=PlayerHeadDisplay,distance=..7] if score @s hub.entity.player_head_page = #current_page Temp \
run tp @s ~ ~1.35 ~-0.03

execute as @e[type=minecraft:item_display,scores={hub.entity.player_head_order=3},tag=PlayerHeadDisplay,distance=..7] if score @s hub.entity.player_head_page = #current_page Temp \
run tp @s ~0.31 ~1.35 ~-0.03

execute as @e[type=minecraft:item_display,tag=PlayerHeadDisplay,distance=..7] if score @s hub.entity.player_head_page = #current_page Temp run tag @s add DisplayingHead
execute as @e[type=minecraft:item_display,tag=PlayerHeadDisplay,distance=..7] if score @s hub.entity.player_head_page = #current_page Temp run tag @s remove HidingHead

# Load details (name, status)

# Update page counter in the middle (ie Page: 1/2)
execute store result storage exigence:temp x int 1 run scoreboard players get #current_page Temp
execute store result storage exigence:temp y int 1 run scoreboard players get #pages Temp
execute as @n[type=minecraft:text_display,tag=PageLabel,distance=..16] run function exigence:hub/profile_selector/menu/display/coop_invitor/effects/update_page_label with storage exigence:temp
