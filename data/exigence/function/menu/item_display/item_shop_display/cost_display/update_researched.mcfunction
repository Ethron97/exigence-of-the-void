# Update cost display color/cost

## CONSTRAINTS
#   AS cost_display

## INPUT
#   WITH item.components."minecraft:custom_data"

#=============================================================================================================

# DEBUG
#say updating cost display (researched)

$data modify entity @s text set value [{text:"💎$(money_cost)",color:"$(money_color)"}]
