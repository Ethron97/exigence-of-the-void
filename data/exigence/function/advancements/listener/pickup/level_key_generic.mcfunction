# Handles generic functions from level key pick ups (sounds, titles)

## CONSTRAINTS
#   AS player who picked up key

#==============================================================================================

# Stopsound
stopsound @a neutral minecraft:block.trial_spawner.detect_player

# Playsound
execute at @s run playsound minecraft:block.vault.activate ambient @a ~ ~1000 ~ 1000 1

tag @s add DontTitle

# If coop, title
execute if data storage exigence:dungeon {is_coop:1} run title @a[tag=!DontTitle] subtitle [{"selector":"@s",color:"gold"},{text:" picked up a level key",color:"gray"}]
execute if data storage exigence:dungeon {is_coop:1} run title @a[tag=!DontTitle] title ""

tag @s remove DontTitle