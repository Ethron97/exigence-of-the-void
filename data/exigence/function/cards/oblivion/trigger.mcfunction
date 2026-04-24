# Need second function for functionality to function
#   this function is called from process_deck after entire deck is processed


# If Oblivion was activated, add Return to void cards
tag @e[x=-263,y=-1,z=-141,dx=7,dy=1,dz=1,type=minecraft:armor_stand,tag=Card,tag=IsVoid] add ReturnCard
#   OLD FUNCTIONALITY
#   Only kill Oblivion and the random card if void debug is off
#execute if data storage exigence:debug {void:0} run tag @e[type=minecraft:armor_stand,tag=OblivionCard] remove ReturnCard
#   NEW FUNCTIONALITY
#   For each void card processed, increase Minimum Menace by 2
#       .min_menace game.dungeon is initalized to 0 before this function (process_deck) is called
execute as @e[x=-263,y=-1,z=-141,dx=7,dy=1,dz=1,type=minecraft:armor_stand,tag=Card,tag=IsVoid] run scoreboard players add .min_menace game.dungeon 2
#   Set starting menace to min
scoreboard players operation .menace game.dungeon = .min_menace game.dungeon

