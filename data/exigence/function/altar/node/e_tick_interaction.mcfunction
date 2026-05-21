# E tick interaction
#   Called bi-second from e_tick/e_tick_interaction on altar nodes

## CONSTRAINTS
#   AS interaction

#====================================================================================================

# Always glows
particle minecraft:glow ~ ~0.7 ~ 0.4 0.2 0.4 0 1

# Concordant altars
execute if score mod.concordance game.modifiers matches 1.. run particle minecraft:dust_color_transition{from_color:[1.0f,1.0f,1.0f],scale:1.0f,to_color:[0.0f,1.0f,1.0f]} ~ ~0.7 ~ 0.5 0.2 0.5 0 1
execute if score mod.concordance game.modifiers matches 1.. run particle minecraft:dust_color_transition{from_color:[1.0f,1.0f,1.0f],scale:1.0f,to_color:[0.0f,1.0f,1.0f]} ~ ~0.7 ~ 0.5 0.2 0.5 0 1
