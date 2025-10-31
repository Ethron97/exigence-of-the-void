# Consume.mcfunction should only be called from try_consume, which validates it

## INPUT
#   Score GreenCost - Resources

#=====================================================================================================

# Reduce resource
scoreboard players operation Current.Green game.resources -= Green.Cost game.resources

# Display consume in subtitle
execute if score Green.Cost game.resources matches 1 run data modify storage exigence:resource_hud green_consume set value [{text:"✔",color:"dark_green",bold:true}]
execute if score Green.Cost game.resources matches 2 run data modify storage exigence:resource_hud green_consume set value [{text:"✔✔",color:"dark_green",bold:true}]
execute if score Green.Cost game.resources matches 3 run data modify storage exigence:resource_hud green_consume set value [{text:"✔✔✔",color:"dark_green",bold:true}]
execute if score Green.Cost game.resources matches 4 run data modify storage exigence:resource_hud green_consume set value [{text:"✔✔✔✔",color:"dark_green",bold:true}]
execute if score Green.Cost game.resources matches 5 run data modify storage exigence:resource_hud green_consume set value [{text:"✔✔✔✔✔",color:"dark_green",bold:true}]
execute if score Green.Cost game.resources matches 6 run data modify storage exigence:resource_hud green_consume set value [{text:"✔✔✔✔✔✔",color:"dark_green",bold:true}]

# Update scores
scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.consumed_green += Green.Cost game.resources
