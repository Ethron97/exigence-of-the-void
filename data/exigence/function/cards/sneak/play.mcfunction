say Sneak [-2 Menace]

# Subtract two menace. Assumes game is not at max menace. Cannot subtract below 0.
execute if score Menace DungeonRun matches 1 run scoreboard players remove Menace DungeonRun 1
execute if score Menace DungeonRun matches 2.. run scoreboard players remove Menace DungeonRun 2