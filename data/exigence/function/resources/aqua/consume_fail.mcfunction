# Consume_fail.mcfunction should only be called from try_consume, which validates it

# Display consume in subtitle
execute if score #MissingAqua game.resources matches 1 run data modify storage exigence:resource_hud aqua_fail set value [{text:"✖",color:"aqua"}]
execute if score #MissingAqua game.resources matches 2 run data modify storage exigence:resource_hud aqua_fail set value [{text:"✖✖",color:"aqua"}]
execute if score #MissingAqua game.resources matches 3 run data modify storage exigence:resource_hud aqua_fail set value [{text:"✖✖✖",color:"aqua"}]
execute if score #MissingAqua game.resources matches 4 run data modify storage exigence:resource_hud aqua_fail set value [{text:"✖✖✖✖",color:"aqua"}]
execute if score #MissingAqua game.resources matches 5 run data modify storage exigence:resource_hud aqua_fail set value [{text:"✖✖✖✖✖",color:"aqua"}]
execute if score #MissingAqua game.resources matches 6 run data modify storage exigence:resource_hud aqua_fail set value [{text:"✖✖✖✖✖✖",color:"aqua"}]

# Update scores
scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.underflow_aqua += #MissingAqua game.resources