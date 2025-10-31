# Replaces play.mcfunction
say [Fill each resources, also increase max by 4 each so we can test cards]

scoreboard players add Max.Green game.resources 4
scoreboard players add Max.Red game.resources 4
scoreboard players add Max.Aqua game.resources 4

# Functionality
scoreboard players operation Current.Green game.resources = Max.Green game.resources
scoreboard players operation Current.Red game.resources = Max.Red game.resources
scoreboard players operation Current.Aqua game.resources = Max.Aqua game.resources
