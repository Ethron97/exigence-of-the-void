# Consume_fail.mcfunction should only be called from try_consume, which validates it

# Display consume in subtitle
execute if score #MissingRed Resources matches 1 run data modify storage exigence:resource_hud red_fail set value [{text:"✖",color:"dark_red"}]
execute if score #MissingRed Resources matches 2 run data modify storage exigence:resource_hud red_fail set value [{text:"✖✖",color:"dark_red"}]
execute if score #MissingRed Resources matches 3 run data modify storage exigence:resource_hud red_fail set value [{text:"✖✖✖",color:"dark_red"}]
execute if score #MissingRed Resources matches 4 run data modify storage exigence:resource_hud red_fail set value [{text:"✖✖✖✖",color:"dark_red"}]
execute if score #MissingRed Resources matches 5 run data modify storage exigence:resource_hud red_fail set value [{text:"✖✖✖✖✖",color:"dark_red"}]
execute if score #MissingRed Resources matches 6 run data modify storage exigence:resource_hud red_fail set value [{text:"✖✖✖✖✖✖",color:"dark_red"}]

# Update scores
scoreboard players operation @a[tag=ActivePlayer] t_underflowRed += #MissingRed Resources
scoreboard players operation @a[tag=ActivePlayer] cr_underflowRed += #MissingRed Resources