# Replaces play.mcfunction
say [Fill each resources, also increase max by 6 each so we can test cards]

scoreboard players add green.max game.resources 6
scoreboard players add red.max game.resources 6
scoreboard players add aqua.max game.resources 6

# Functionality
scoreboard players operation green.current game.resources = green.max game.resources
scoreboard players operation red.current game.resources = red.max game.resources
scoreboard players operation aqua.current game.resources = aqua.max game.resources
