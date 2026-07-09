# Teleports user to the limbo/waiting area

execute in exigence:hub run tp @s -1000.5 100 -1000.5

# Reset trigger score
scoreboard players reset @s TpLimbo
scoreboard players enable @s TpLimbo
