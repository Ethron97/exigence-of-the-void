# Load so players can see this in the shop window

## CONSTRAINTS
#   AS card display
#   AT ember shop menu

#====================================================================================================
execute if entity @s[tag=!Displaying] run return run say I was not displaying? Cannot un-display
#----------------------------------------------------------------------------------------------------

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Undisplay card

tag @s remove Displaying

# Teleport to hidden location
tp @s ~1.5 ~1.5 ~