# Decrease heighten level by 1
scoreboard players remove @a game.player.heighten 1

# Min 0
scoreboard players operation @a game.player.heighten > 0 number

# Update player effect
function exigence:player/effects/heighten/update_effect

# Playsound
playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~1000 ~ 1000 1
