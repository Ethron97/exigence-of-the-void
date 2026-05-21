# Consume.mcfunction should only be called from try_consume, which validates it

# Reduce resource
scoreboard players operation aqua.current game.resources -= aqua.cost game.resources

# Display consume in subtitle
execute if score aqua.cost game.resources matches 1 run data modify storage exigence:resource_hud aqua_consume set value {text:"✔",color:"aqua",bold:true}
execute if score aqua.cost game.resources matches 2 run data modify storage exigence:resource_hud aqua_consume set value {text:"✔✔",color:"aqua",bold:true}
execute if score aqua.cost game.resources matches 3 run data modify storage exigence:resource_hud aqua_consume set value {text:"✔✔✔",color:"aqua",bold:true}
execute if score aqua.cost game.resources matches 4 run data modify storage exigence:resource_hud aqua_consume set value {text:"✔✔✔✔",color:"aqua",bold:true}
execute if score aqua.cost game.resources matches 5 run data modify storage exigence:resource_hud aqua_consume set value {text:"✔✔✔✔✔",color:"aqua",bold:true}
execute if score aqua.cost game.resources matches 6 run data modify storage exigence:resource_hud aqua_consume set value {text:"✔✔✔✔✔✔",color:"aqua",bold:true}

# Update scores
scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.consumed_aqua += aqua.cost game.resources
scoreboard players operation aqua.total_consumed game.resources += aqua.cost game.resources