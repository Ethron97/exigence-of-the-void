# Set setting specific description text

## CONSTRAINTS
#   AS item display (setting)

#====================================================================================================

data modify entity @s text set value [{text:"Never",color:"yellow"},{text:": Hide display",color:gray}\
,{text:"\nDynamic",color:"yellow"},{text:": Hides if there are no resources needed",color:gray}\
,{text:"\nAlways",color:"yellow"},{text:": Always displays",color:gray}]
