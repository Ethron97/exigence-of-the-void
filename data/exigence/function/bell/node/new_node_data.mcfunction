# Called by summon_bell_node

## CONSTRAINTS
#   AS new bell node

# ===============================================================================================================

# Give name and tags
data modify entity @s CustomName set value {text:"BellNode",color:"yellow",italic:false}
tag @s add BellNode

# Add to Special team for color
team join Special @s

# Initialize cooldown scoreboard
scoreboard players set @s RingBellCooldown 0

# If debug, glow
execute if data storage exigence:debug {bell:1} run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove "NewNode" tag
tag @s remove NewNode
