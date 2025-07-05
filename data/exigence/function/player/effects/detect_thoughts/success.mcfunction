# Call as key detected by Detect Thoughts

# Glow key for 30 seconds
execute as @s run scoreboard players set @s GlowRemaining 600

# Playsound success
execute at @s run playsound entity.illusioner.cast_spell ambient @a ~ ~1000 ~ 1000 1

# Tellraw
title @a subtitle {text:"Key Revealed",italic:true,bold:false,color:"gold"}
title @a title ""

# Indicator line
execute at @s facing entity @e[scores={DetectThoughts=60..},sort=nearest,limit=1] eyes run function exigence:player/effects/detect_thoughts/indicator_line
