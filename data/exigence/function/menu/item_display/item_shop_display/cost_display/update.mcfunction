# Update cost display color/cost

## CONSTRAINTS
#   AS cost_display

## INPUT
#   WITH item.components."minecraft:custom_data"

#=============================================================================================================

# DEBUG
#say updating cost display

$data modify entity @s text set value [{text:"$(research_cost)🕮",color:"$(research_color)"},{text:"💎$(money_cost)",color:"$(money_color)"}]
