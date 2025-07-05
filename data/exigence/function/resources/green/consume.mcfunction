# Consume.mcfunction should only be called from try_consume, which validates it

## INPUT
#   Score GreenCost - Resources

#=====================================================================================================

# Reduce resource
scoreboard players operation Green Resources -= GreenCost Resources

# Display consume in subtitle
execute if score GreenCost Resources matches 1 run data modify storage exigence:resource_hud green_consume set value [{text:"✔",color:"dark_green",bold:true}]
execute if score GreenCost Resources matches 2 run data modify storage exigence:resource_hud green_consume set value [{text:"✔✔",color:"dark_green",bold:true}]
execute if score GreenCost Resources matches 3 run data modify storage exigence:resource_hud green_consume set value [{text:"✔✔✔",color:"dark_green",bold:true}]
execute if score GreenCost Resources matches 4 run data modify storage exigence:resource_hud green_consume set value [{text:"✔✔✔✔",color:"dark_green",bold:true}]
execute if score GreenCost Resources matches 5 run data modify storage exigence:resource_hud green_consume set value [{text:"✔✔✔✔✔",color:"dark_green",bold:true}]
execute if score GreenCost Resources matches 6 run data modify storage exigence:resource_hud green_consume set value [{text:"✔✔✔✔✔✔",color:"dark_green",bold:true}]

# Update scores
scoreboard players operation @a[tag=ActivePlayer] t_consumedGreen += GreenCost Resources
scoreboard players operation @a[tag=ActivePlayer] cr_consumedGreen += GreenCost Resources
