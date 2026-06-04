# Tick on all markers

## CONSTRAINTS
#   AS/AT marker

#====================================================================================================

## SWITCH
execute if entity @s[tag=Node] run return run function exigence:game/game_tick/e_tick/e_tick_node
execute if entity @s[tag=HiddenBlock] run return run function exigence:mirror/hidden_blocks/e_tick
execute if entity @s[tag=RavagerGlass] run return run function exigence:game/other/ravager_glass/update
execute if entity @s[tag=SnowballMarker] run return run function exigence:hub/item_shop/item/item_web_ball/private/update_snowball