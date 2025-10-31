# Consume_fail.mcfunction should only be called from try_consume, which validates it

# Display consume in subtitle
execute if score #MissingGreen game.resources matches 1 run data modify storage exigence:resource_hud green_fail set value [{text:"✖",color:"dark_green"}]
execute if score #MissingGreen game.resources matches 2 run data modify storage exigence:resource_hud green_fail set value [{text:"✖✖",color:"dark_green"}]
execute if score #MissingGreen game.resources matches 3 run data modify storage exigence:resource_hud green_fail set value [{text:"✖✖✖",color:"dark_green"}]
execute if score #MissingGreen game.resources matches 4 run data modify storage exigence:resource_hud green_fail set value [{text:"✖✖✖✖",color:"dark_green"}]
execute if score #MissingGreen game.resources matches 5 run data modify storage exigence:resource_hud green_fail set value [{text:"✖✖✖✖✖",color:"dark_green"}]
execute if score #MissingGreen game.resources matches 6 run data modify storage exigence:resource_hud green_fail set value [{text:"✖✖✖✖✖✖",color:"dark_green"}]

# Update scores
scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.underflow_green += #MissingGreen game.resources
