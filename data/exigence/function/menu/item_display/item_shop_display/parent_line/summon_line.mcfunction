# Summons the block display that connects parent/child displays

## CONSTRAINTS
#   AT where it should be summoned

## INPUT
#   STR texture - minecraft block id
#   STR/FLOAT ('1.0') thickness - Line thickness
#   STR/FLOAT ('1.0') offset - To center the line, should be half the thickness in float (easier to input than calculate)
#   STR/FLOAT ('1.0') length - Line length measured in blocks
#   INT id - IDID from creator item display

#=============================================================================================================

# DEBUG
#$say summoning line $(texture) $(thickness) $(offset) $(length)

# Summon block dispay
execute store result score random Random run random value 1..2
# This small offset determines whether the block display is misaligned to the left, or to the right. So we turned it into a feature.
$execute if score random Random matches 1 run summon minecraft:block_display ^0.0 ^ ^ {Tags:["NewMenuLine","MenuLine"],block_state:{Name:"$(texture)"}}
$execute if score random Random matches 2 run summon minecraft:block_display ^0.0 ^ ^ {Tags:["NewMenuLine","MenuLine"],block_state:{Name:"$(texture)"}}

$scoreboard players set #compare IDID $(id)

# Handle data
execute as @e[distance=..1,type=block_display,tag=NewMenuLine] run function exigence:menu/item_display/item_shop_display/parent_line/private/menu_line_data with storage exigence:menu
