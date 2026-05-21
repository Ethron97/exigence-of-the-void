# Load bookshelf to game

## CONSTRAINTS
#   AT profile node

#====================================================================================================

execute if score toggle.bookshelf debug matches 1 if score debug.level debug matches 3.. run say (D3 Game) Save bookshelf from game to profile node

# Clone the bookshelf to storage
clone from minecraft:overworld -481 62 -200 -473 64 -200 to exigence:profile_data ~6 ~ ~
