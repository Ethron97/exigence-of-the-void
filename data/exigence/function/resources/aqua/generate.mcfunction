# Generate.mcfunction should only be called from try_generate, which validates it

# Update generate in subtitle
execute if score #AddedAqua Resources matches 1 run data modify storage exigence:resource_hud aqua_generate set value [{text:"❂",color:"aqua"}]
execute if score #AddedAqua Resources matches 2 run data modify storage exigence:resource_hud aqua_generate set value [{text:"❂❂",color:"aqua"}]
execute if score #AddedAqua Resources matches 3 run data modify storage exigence:resource_hud aqua_generate set value [{text:"❂❂❂",color:"aqua"}]

# Update overflow in subtitle
execute if score #OverflowAqua Resources matches 1 run data modify storage exigence:resource_hud aqua_overflow set value [{text:"∴",color:"aqua"}]
execute if score #OverflowAqua Resources matches 2 run data modify storage exigence:resource_hud aqua_overflow set value [{text:"∴∴",color:"aqua"}]
execute if score #OverflowAqua Resources matches 3 run data modify storage exigence:resource_hud aqua_overflow set value [{text:"∴∴∴",color:"aqua"}]

# Add resource
scoreboard players operation Aqua Resources += #AddedAqua Resources

# Update scores
scoreboard players operation @a[tag=ActivePlayer] t_overflowAqua += #OverflowAqua Resources
scoreboard players operation @a[tag=ActivePlayer] cr_overflowAqua += #OverflowAqua Resources

scoreboard players operation @a[tag=ActivePlayer] t_generatedAqua += #AddedAqua Resources
scoreboard players operation @a[tag=ActivePlayer] cr_generatedAqua += #AddedAqua Resources