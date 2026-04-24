say Sneak [-2 Menace]

# Subtract two menace. Assumes game is not at max menace. Cannot subtract below 0.
execute if score .menace game.dungeon matches 1 run scoreboard players remove .menace game.dungeon 1
execute if score .menace game.dungeon matches 2.. run scoreboard players remove .menace game.dungeon 2