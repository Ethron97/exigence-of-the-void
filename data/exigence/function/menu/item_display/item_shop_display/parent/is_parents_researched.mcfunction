# Handles calling sub-parent is_researched calls
# Called when shop is loaded and when player researches something

## CONSTRAINTS
#   AS item_display (with shop.frame.parents=1..)

#====================================================================================================

# DEBUG
#say is researched parents

# Reset tag
tag @s remove IsParentResearched

# The functions are recursive, so we can save energy on the switch
execute if score @s shop.frame.parents matches 1 run return run function exigence:menu/item_display/item_shop_display/parent/researched/check_1
execute if score @s shop.frame.parents matches 2 run return run function exigence:menu/item_display/item_shop_display/parent/researched/check_2
execute if score @s shop.frame.parents matches 3 run return run function exigence:menu/item_display/item_shop_display/parent/researched/check_3
execute if score @s shop.frame.parents matches 4 run return run function exigence:menu/item_display/item_shop_display/parent/researched/check_4
execute if score @s shop.frame.parents matches 5 run return run function exigence:menu/item_display/item_shop_display/parent/researched/check_5
execute if score @s shop.frame.parents matches 6 run return run function exigence:menu/item_display/item_shop_display/parent/researched/check_6
