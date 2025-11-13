# Remove player name from text display

## CONSTRAINTS
#   AS text_display

#=============================================================================================================

data modify entity @s text.extra[0].text set value ""
data modify entity @s text.extra[0].color set value "yellow"
data modify entity @s text.extra[1].text set value ""
data modify entity @s text.extra[1].color set value "yellow"
