# Need second function for functionality to function
#   this function is called from process_deck after entire deck is processed

#say Trigger oblivion

# If Oblivion was activated, add Return to void cards
execute in minecraft:overworld run tag @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=IsVoid] add ReturnCard
#   OLD FUNCTIONALITY
#   Only kill Oblivion and the random card if void debug is off
#execute if score toggle.void debug matches 0 run tag @e[type=minecraft:armor_stand,tag=OblivionCard] remove ReturnCard
#   NEW FUNCTIONALITY
#   For each void card processed, increase Minimum Menace by 1 per rarity
#       menace.min game.dungeon.menace is initalized to 0 before this function (process_deck) is called
execute in minecraft:overworld as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=IsVoid] run scoreboard players operation menace.min game.dungeon.menace += @s deck.card.rarity
#   Set starting menace to min
scoreboard players operation menace.current game.dungeon.menace = menace.min game.dungeon.menace
