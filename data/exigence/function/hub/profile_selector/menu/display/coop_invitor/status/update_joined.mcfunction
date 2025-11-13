# Change color of status display to green

## CONSTRAINTS
#   AS text_display

#=============================================================================================================

data modify entity @s text.extra[0].color set value "green"
data modify entity @s text.extra[1].text set value " ✔"
data modify entity @s text.extra[1].color set value "green"
