# Generate.mcfunction should only be called from try_generate, which validates it

# Update generate in subtitle
execute if score #AddedRed game.resources matches 1 run data modify storage exigence:resource_hud red_generate set value [{text:"❂",color:"dark_red"}]
execute if score #AddedRed game.resources matches 2 run data modify storage exigence:resource_hud red_generate set value [{text:"❂❂",color:"dark_red"}]
execute if score #AddedRed game.resources matches 3 run data modify storage exigence:resource_hud red_generate set value [{text:"❂❂❂",color:"dark_red"}]

# Update overflow in subtitle
execute if score #OverflowRed game.resources matches 1 run data modify storage exigence:resource_hud red_overflow set value [{text:"∴",color:"dark_red"}]
execute if score #OverflowRed game.resources matches 2 run data modify storage exigence:resource_hud red_overflow set value [{text:"∴∴",color:"dark_red"}]
execute if score #OverflowRed game.resources matches 3 run data modify storage exigence:resource_hud red_overflow set value [{text:"∴∴∴",color:"dark_red"}]

# Add resource
scoreboard players operation Current.Red game.resources += #AddedRed game.resources

# Update scores
scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.overflow_red += #OverflowRed game.resources
scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.generated_red += #AddedRed game.resources
