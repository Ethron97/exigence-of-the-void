# Need second function for functionality to function
#   this function is called from process_deck after entire deck is processed


# If Oblivion was activated, add Return to void cards
tag @e[type=minecraft:armor_stand,tag=Card,scores={deck.card.is_void=1}] add ReturnCard
#   OLD FUNCTIONALITY
#   Only kill Oblivion and the random card if void debug is off
#execute if data storage exigence:debug {void:0} run tag @e[type=minecraft:armor_stand,tag=OblivionCard] remove ReturnCard
#   NEW FUNCTIONALITY
#   For each void card processed, increase Minimum Menace by 2
#       MinMenace DungeonRun is initalized to 0 before this function (process_deck) is called
execute as @e[type=armor_stand,tag=Card,scores={deck.card.is_void=1}] run scoreboard players add MinMenace DungeonRun 2
#   Set starting menace to min
scoreboard players operation Menace DungeonRun = MinMenace DungeonRun

