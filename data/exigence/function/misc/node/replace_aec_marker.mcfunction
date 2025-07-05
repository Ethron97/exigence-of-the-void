# Replaces aec with marker entity

## CONSTRAINTS
#   AS area effect cloud

#=================================================================================================

# Summon marker
execute at @s run summon minecraft:marker ~ ~ ~ {data:{new_replacement:'true',replacement:'true'}}

# Copy tags from this to marker
data modify entity @e[type=minecraft:marker,nbt={data:{new_replacement:'true'}},limit=1] Tags set from entity @s Tags

# Copy object level
scoreboard players operation @e[type=minecraft:marker,nbt={data:{new_replacement:'true'}},limit=1] ObjectLevel = @s ObjectLevel

# Remove area effect cloud
# LATER

# Remove local tag
data remove entity @e[type=minecraft:marker,nbt={data:{new_replacement:'true'}},limit=1] data.new_replacement
