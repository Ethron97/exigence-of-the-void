# Called by step when player reaches the exit portal on step 1502

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Won tutorial woah

tellraw @s [{text:"-> Tutorial complete!",color:green}]

advancement grant @s only exigence:story/win_difficulty_0

# Leave (also unloads)
function exigence:tutorial/access/leave
