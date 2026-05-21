say Sneak [-2 Menace]

# Subtract two menace. Assumes game is not at max menace. Cannot subtract below 0.
execute if score menace.current game.dungeon.menace matches 1 run scoreboard players remove menace.current game.dungeon.menace 1
execute if score menace.current game.dungeon.menace matches 2.. run scoreboard players remove menace.current game.dungeon.menace 2