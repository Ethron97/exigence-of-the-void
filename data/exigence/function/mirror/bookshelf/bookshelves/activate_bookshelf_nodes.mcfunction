
# Reset all nodes
execute as @e[type=minecraft:armor_stand,tag=BookshelfNode] run function exigence:mirror/bookshelf/bookshelves/node/reset

# Call if level 2 and player does not have freed scientist
execute if score game.difficulty game.state matches 2 if entity @a[tag=ActivePlayer,advancements={exigence:story/match_bookshelf=false}] at @s run function exigence:mirror/bookshelf/bookshelves/node/activate
