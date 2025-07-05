# Increase heighten level by 1
scoreboard players add @a[tag=ActivePlayer,scores={dead=0}] mod_Heighten 1

# Update player effect
function exigence:player/effects/heighten/update_effect

# Playsound
playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~1000 ~ 1000 1

# Tellraw?
