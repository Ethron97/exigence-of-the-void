# Increase heighten level by 1
scoreboard players add @a[scores={dead=0},tag=ActivePlayer] game.player.heighten 1

# Update player effect
function exigence:player/effects/heighten/update_effect

# Playsound
execute at @s run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[tag=ActivePlayer] ~ ~1000 ~ 1000 1

# Tellraw?
