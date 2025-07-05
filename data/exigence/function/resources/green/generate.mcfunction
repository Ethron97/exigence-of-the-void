# Generate.mcfunction should only be called from try_generate, which validates it

# Update generate in subtitle
execute if score #AddedGreen Resources matches 1 run data modify storage exigence:resource_hud green_generate set value [{text:"❂",color:"dark_green"}]
execute if score #AddedGreen Resources matches 2 run data modify storage exigence:resource_hud green_generate set value [{text:"❂❂",color:"dark_green"}]
execute if score #AddedGreen Resources matches 3 run data modify storage exigence:resource_hud green_generate set value [{text:"❂❂❂",color:"dark_green"}]

# Update overflow in subtitle
execute if score #OverflowGreen Resources matches 1 run data modify storage exigence:resource_hud green_overflow set value [{text:"∴",color:"dark_green"}]
execute if score #OverflowGreen Resources matches 2 run data modify storage exigence:resource_hud green_overflow set value [{text:"∴∴",color:"dark_green"}]
execute if score #OverflowGreen Resources matches 3 run data modify storage exigence:resource_hud green_overflow set value [{text:"∴∴∴",color:"dark_green"}]

# Add resource
scoreboard players operation Green Resources += #AddedGreen Resources

# Update scores
scoreboard players operation @a[tag=ActivePlayer] t_overflowGreen += #OverflowGreen Resources
scoreboard players operation @a[tag=ActivePlayer] cr_overflowGreen += #OverflowGreen Resources

scoreboard players operation @a[tag=ActivePlayer] t_generatedGreen += #AddedGreen Resources
scoreboard players operation @a[tag=ActivePlayer] cr_generatedGreen += #AddedGreen Resources