# Consume.mcfunction should only be called from try_consume, which validates it

## INPUT
#   Score RedCost - Resources

#=====================================================================================================

# Reduce resource
scoreboard players operation Current.Red game.resources -= Red.Cost game.resources

# Display consume in subtitle
execute if score Red.Cost game.resources matches 1 run data modify storage exigence:resource_hud red_consume set value [{text:"✔",color:"dark_red",bold:true}]
execute if score Red.Cost game.resources matches 2 run data modify storage exigence:resource_hud red_consume set value [{text:"✔✔",color:"dark_red",bold:true}]
execute if score Red.Cost game.resources matches 3 run data modify storage exigence:resource_hud red_consume set value [{text:"✔✔✔",color:"dark_red",bold:true}]
execute if score Red.Cost game.resources matches 4 run data modify storage exigence:resource_hud red_consume set value [{text:"✔✔✔✔",color:"dark_red",bold:true}]
execute if score Red.Cost game.resources matches 5 run data modify storage exigence:resource_hud red_consume set value [{text:"✔✔✔✔✔",color:"dark_red",bold:true}]
execute if score Red.Cost game.resources matches 6 run data modify storage exigence:resource_hud red_consume set value [{text:"✔✔✔✔✔✔",color:"dark_red",bold:true}]

# Update scores
scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.consumed_red += Red.Cost game.resources
