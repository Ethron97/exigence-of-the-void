# Warn player if they are choosing to enter with Glint

execute store result score temp Temp run clear @s #exigence:currency 0

execute if score temp Temp matches 1.. run title @s subtitle [{text:"Warning: Currency in inventory",color:"red"}]
execute if score temp Temp matches 1.. run title @s title ""
