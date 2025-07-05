# Consume.mcfunction should only be called from try_consume, which validates it

## INPUT
#   Score RedCost - Resources

#=====================================================================================================

# Reduce resource
scoreboard players operation Red Resources -= RedCost Resources

# Display consume in subtitle
execute if score RedCost Resources matches 1 run data modify storage exigence:resource_hud red_consume set value [{text:"✔",color:"dark_red",bold:true}]
execute if score RedCost Resources matches 2 run data modify storage exigence:resource_hud red_consume set value [{text:"✔✔",color:"dark_red",bold:true}]
execute if score RedCost Resources matches 3 run data modify storage exigence:resource_hud red_consume set value [{text:"✔✔✔",color:"dark_red",bold:true}]
execute if score RedCost Resources matches 4 run data modify storage exigence:resource_hud red_consume set value [{text:"✔✔✔✔",color:"dark_red",bold:true}]
execute if score RedCost Resources matches 5 run data modify storage exigence:resource_hud red_consume set value [{text:"✔✔✔✔✔",color:"dark_red",bold:true}]
execute if score RedCost Resources matches 6 run data modify storage exigence:resource_hud red_consume set value [{text:"✔✔✔✔✔✔",color:"dark_red",bold:true}]

# Update scores
scoreboard players operation @a[tag=ActivePlayer] t_consumedRed += RedCost Resources
scoreboard players operation @a[tag=ActivePlayer] cr_consumedRed += RedCost Resources
