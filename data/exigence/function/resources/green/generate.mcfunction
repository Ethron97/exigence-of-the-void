# Generate.mcfunction should only be called from try_generate, which validates it

# Update generate in subtitle
execute if score #AddedGreen game.resources matches 1 run data modify storage exigence:resource_hud green_generate set value [{text:"❂",color:"dark_green"}]
execute if score #AddedGreen game.resources matches 2 run data modify storage exigence:resource_hud green_generate set value [{text:"❂❂",color:"dark_green"}]
execute if score #AddedGreen game.resources matches 3 run data modify storage exigence:resource_hud green_generate set value [{text:"❂❂❂",color:"dark_green"}]

# Update overflow in subtitle
execute if score #OverflowGreen game.resources matches 1 run data modify storage exigence:resource_hud green_overflow set value [{text:"∴",color:"dark_green"}]
execute if score #OverflowGreen game.resources matches 2 run data modify storage exigence:resource_hud green_overflow set value [{text:"∴∴",color:"dark_green"}]
execute if score #OverflowGreen game.resources matches 3 run data modify storage exigence:resource_hud green_overflow set value [{text:"∴∴∴",color:"dark_green"}]

# Add resource
scoreboard players operation Current.Green game.resources += #AddedGreen game.resources

# Update scores
scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.overflow_green += #OverflowGreen game.resources

scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.generated_green += #AddedGreen game.resources