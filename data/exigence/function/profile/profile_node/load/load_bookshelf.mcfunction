# Load bookshelf to game

## CONSTRAINTS
#   AT profile node

#====================================================================================================

execute if score toggle.bookshelf debug matches 1 if score debug.level debug matches 3.. run say (D3) Load bookshelf from profile to game

# Clone the bookshelf from storage
clone from exigence:profile_data ~6 ~ ~ ~14 ~2 ~ to minecraft:overworld -481 62 -200