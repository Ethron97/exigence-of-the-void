# Update page flipper label based on current page stats

## CONSTRAINTS
#   AS display label

## INPUT
#   INT x
#   INT y

#=============================================================================================================

$data modify entity @s text set value [{text:"Page: "},{text:"$(x)"},{text:"/"},{text:"$(y)"}]