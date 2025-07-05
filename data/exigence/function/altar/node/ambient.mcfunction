# Ambient tick based on node state

## CONSTRAINTS
#   AS/AT AltarNode

#==============================================================================================================

# Inactive altars
execute if score SecondsCooldown TickCounter matches 7 if score @s NodeState matches 0 run particle minecraft:glow ~ ~0.5 ~ 0.5 0.2 0.5 0 1
execute if score SecondsCooldown TickCounter matches 17 if score @s NodeState matches 0 run particle minecraft:glow ~ ~0.5 ~ 0.5 0.2 0.5 0 1
# Return after the most common fail case
execute if score @s NodeState matches 0 run return 0

# Lit altars
execute if score SecondsCooldown TickCounter matches 4 if score @s NodeState matches 1 run particle minecraft:glow ~ ~0.5 ~ 0.5 0.2 0.5 0 2
execute if score SecondsCooldown TickCounter matches 14 if score @s NodeState matches 1 run particle minecraft:glow ~ ~0.5 ~ 0.5 0.2 0.5 0 2

# Radiant altars
execute if score @s NodeState matches 2 run particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0 3

# Concordant altars
execute if score SecondsCooldown TickCounter matches 2 if score Concordance Modifiers matches 1.. if score @s NodeState matches 1..2 run particle minecraft:dust_color_transition{from_color:[1.0f,1.0f,1.0f],scale:1.0f,to_color:[0.0f,1.0f,1.0f]} ~ ~0.5 ~ 0.5 0.2 0.5 0 1
execute if score SecondsCooldown TickCounter matches 12 if score Concordance Modifiers matches 1.. if score @s NodeState matches 1..2 run particle minecraft:dust_color_transition{from_color:[1.0f,1.0f,1.0f],scale:1.0f,to_color:[0.0f,1.0f,1.0f]} ~ ~0.5 ~ 0.5 0.2 0.5 0 1

# Red-able altars (inner fire)
execute if score InnerFire Modifiers matches 0 run return 0
execute if score SecondsCooldown TickCounter matches 6 if score @s[tag=!Red] NodeState matches 1.. run particle minecraft:dust{color:[1.0f,0.0f,0.0f],scale:1.0f} ~ ~0.5 ~ 0.5 0.2 0.5 0 2
execute if score SecondsCooldown TickCounter matches 16 if score @s[tag=!Red] NodeState matches 1.. run particle minecraft:dust{color:[1.0f,0.0f,0.0f],scale:1.0f} ~ ~0.5 ~ 0.5 0.2 0.5 0 2
