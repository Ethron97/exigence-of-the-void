# Generate.mcfunction should only be called from try_generate, which validates it

# Update generate in subtitle
execute if score #AddedRed Resources matches 1 run data modify storage exigence:resource_hud red_generate set value [{text:"❂",color:"dark_red"}]
execute if score #AddedRed Resources matches 2 run data modify storage exigence:resource_hud red_generate set value [{text:"❂❂",color:"dark_red"}]
execute if score #AddedRed Resources matches 3 run data modify storage exigence:resource_hud red_generate set value [{text:"❂❂❂",color:"dark_red"}]

# Update overflow in subtitle
execute if score #OverflowRed Resources matches 1 run data modify storage exigence:resource_hud red_overflow set value [{text:"∴",color:"dark_red"}]
execute if score #OverflowRed Resources matches 2 run data modify storage exigence:resource_hud red_overflow set value [{text:"∴∴",color:"dark_red"}]
execute if score #OverflowRed Resources matches 3 run data modify storage exigence:resource_hud red_overflow set value [{text:"∴∴∴",color:"dark_red"}]

# Add resource
scoreboard players operation Red Resources += #AddedRed Resources

# Update scores
scoreboard players operation @a[tag=ActivePlayer] t_overflowRed += #OverflowRed Resources
scoreboard players operation @a[tag=ActivePlayer] cr_overflowRed += #OverflowRed Resources

scoreboard players operation @a[tag=ActivePlayer] t_generatedRed += #AddedRed Resources
scoreboard players operation @a[tag=ActivePlayer] cr_generatedRed += #AddedRed Resources