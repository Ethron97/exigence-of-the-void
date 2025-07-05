# Generic win

# Play win sound
execute at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~1000 ~ 1000 1

# Title
execute if entity @s[tag=Trial] run function exigence:door/vault/_trial/titles/trial_win
execute if entity @s[tag=Crucible] run function exigence:door/vault/_trial/titles/crucible_win

# Generic end
function exigence:door/vault/_trial/_end
