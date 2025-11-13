# Load page #

## CONSTRAINTS
#   AS/AT slot dislpay

## INPUT
#   SCORE #current_page Temp

#=============================================================================================================

#tellraw @a [{text:"Load page: "},{score:{name:"#current_page",objective:"Temp"}}]

# Teleport heads based on score

execute as @e[distance=..7,type=item_display,tag=PlayerHeadDisplay,scores={hub.entity.player_head_order=1}] if score @s hub.entity.player_head_page = #current_page Temp \
run tp @s ~-0.31 ~1.35 ~-0.03

execute as @e[distance=..7,type=item_display,tag=PlayerHeadDisplay,scores={hub.entity.player_head_order=2}] if score @s hub.entity.player_head_page = #current_page Temp \
run tp @s ~ ~1.35 ~-0.03

execute as @e[distance=..7,type=item_display,tag=PlayerHeadDisplay,scores={hub.entity.player_head_order=3}] if score @s hub.entity.player_head_page = #current_page Temp \
run tp @s ~0.31 ~1.35 ~-0.03

execute as @e[distance=..7,type=item_display,tag=PlayerHeadDisplay] if score @s hub.entity.player_head_page = #current_page Temp run tag @s add DisplayingHead
execute as @e[distance=..7,type=item_display,tag=PlayerHeadDisplay] if score @s hub.entity.player_head_page = #current_page Temp run tag @s remove HidingHead

# Load details (name, status)

# Update page counter in the middle (ie Page: 1/2)
execute store result storage exigence:temp x int 1 run scoreboard players get #current_page Temp
execute store result storage exigence:temp y int 1 run scoreboard players get #pages Temp
execute as @n[distance=..16,type=text_display,tag=PageLabel] run function exigence:hub/profile_selector/menu/display/coop_invitor/effects/update_page_label with storage exigence:temp
