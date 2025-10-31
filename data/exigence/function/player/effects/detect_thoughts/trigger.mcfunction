# Add tag
#   Gets removed when indicator_line is done
#   AS ravager
tag @s add Mindread

scoreboard players operation #compare ObjectLevel = @s ObjectLevel

# Get key on same level
execute as @e[type=minecraft:item,tag=Key] if score @s ObjectLevel = #compare ObjectLevel run tag @s add PossibleDetected
tag @e[type=minecraft:item,tag=PossibleDetected,sort=random,limit=1] add DetectedThoughts

# Playsound fail (no key to glow)
execute at @a[tag=ActivePlayer,tag=CheckLooking] unless entity @e[type=minecraft:item,tag=DetectedThoughts] run playsound minecraft:entity.allay.hurt ambient @a

# Call success
execute as @e[type=minecraft:item,tag=DetectedThoughts] run function exigence:player/effects/detect_thoughts/success

# Clear remaining effect time from all players
scoreboard players set @a[tag=ActivePlayer] game.player.effects.detectthoughts 0

# Clear local tags
tag @e[type=minecraft:item,tag=PossibleDetected] remove PossibleDetected
tag @e[type=minecraft:item,tag=DetectedThoughts] remove DetectedThoughts

# Clear all game.ravager.detect_thoughts scores
scoreboard players set @e[type=minecraft:ravager,scores={game.ravager.detect_thoughts=1..}] game.ravager.detect_thoughts 0

# Clear remaining potion effect
effect clear @a[tag=ActivePlayer] bad_omen
