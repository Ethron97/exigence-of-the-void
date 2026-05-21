# Need second function for functionality to function
#   this function is called from process_deck after entire deck is processed

# If Oblivion was activated, add Return to void cards
tag @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=IsVoid] add ReturnCard
#   OLD FUNCTIONALITY
#   Only kill Oblivion and the random card if void debug is off
#execute if score toggle.void debug matches 0 run tag @e[type=minecraft:armor_stand,tag=OblivionCard] remove ReturnCard
#   NEW FUNCTIONALITY
#   For each void card processed, increase Minimum Menace by 2
#       menace.min game.dungeon.menace is initalized to 0 before this function (process_deck) is called
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=IsVoid] run scoreboard players add menace.min game.dungeon.menace 2
#   Set starting menace to min
scoreboard players operation menace.current game.dungeon.menace = menace.min game.dungeon.menace
