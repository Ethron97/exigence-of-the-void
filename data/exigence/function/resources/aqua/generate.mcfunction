# Generate.mcfunction should only be called from try_generate, which validates it

# Update generate in subtitle
execute if score #AddedAqua game.resources matches 1 run data modify storage exigence:resource_hud aqua_generate set value [{text:"❂",color:"aqua"}]
execute if score #AddedAqua game.resources matches 2 run data modify storage exigence:resource_hud aqua_generate set value [{text:"❂❂",color:"aqua"}]
execute if score #AddedAqua game.resources matches 3 run data modify storage exigence:resource_hud aqua_generate set value [{text:"❂❂❂",color:"aqua"}]

# Update overflow in subtitle
execute if score #OverflowAqua game.resources matches 1 run data modify storage exigence:resource_hud aqua_overflow set value [{text:"∴",color:"aqua"}]
execute if score #OverflowAqua game.resources matches 2 run data modify storage exigence:resource_hud aqua_overflow set value [{text:"∴∴",color:"aqua"}]
execute if score #OverflowAqua game.resources matches 3 run data modify storage exigence:resource_hud aqua_overflow set value [{text:"∴∴∴",color:"aqua"}]

# Add resource
scoreboard players operation Current.Aqua game.resources += #AddedAqua game.resources

# Update scores
scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.overflow_aqua += #OverflowAqua game.resources

scoreboard players operation @a[tag=ActivePlayer] profile.data.resources.cr.generated_aqua += #AddedAqua game.resources