# Called by step when player reaches the exit portal on step 1502

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Won tutorial woah

tellraw @s [{text:"-> Tutorial complete!",color:green}]

# Leave (also unloads)
function exigence:tutorial/access/leave

# If they didn't already have the advancement, give sound
execute unless entity @s[advancements={exigence:story/win_difficulty_0=true}] run playsound minecraft:ui.toast.challenge_complete neutral @s 986.5 100.0 1000.5 1000 1

advancement grant @s only exigence:story/win_difficulty_0
