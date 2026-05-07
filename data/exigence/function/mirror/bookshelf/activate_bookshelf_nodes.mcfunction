## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================
execute unless dimension minecraft:overworld run return run say (C) Tried to setup bookshelf nodes not in overworld?
#----------------------------------------------------------------------------------------------------

execute if score toggle.bookshelf debug matches 1 if score debug.level debug matches 3.. run say (D3) Activate bookshelf nodes

# Check if they should be active
scoreboard players set #setup_bookshelves Temp 0
execute store success score #setup_bookshelves Temp if score game.difficulty game.state matches 2 if entity @a[tag=Predungeon,advancements={exigence:story/match_bookshelf=false}]

# Reset all nodes
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BookshelfNode] at @s run function exigence:mirror/bookshelf/node/setup
