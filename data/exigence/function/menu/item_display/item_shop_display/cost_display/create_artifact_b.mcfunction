

# Copy scoreboard value
scoreboard players operation @s IDID = #compare IDID

# Glow
team join Hazard @s

# Glow
data merge entity @s {Glowing:1b}

# Remove local tag
tag @s remove NewArtifactCostDisplay
