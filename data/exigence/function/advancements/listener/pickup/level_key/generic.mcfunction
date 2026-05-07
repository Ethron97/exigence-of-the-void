# Handles generic functions from level key pick ups (sounds, titles)

## CONSTRAINTS
#   AS player who picked up key

#====================================================================================================

# Stopsound
stopsound @a neutral minecraft:block.trial_spawner.detect_player

# Playsound
execute at @s run playsound minecraft:block.vault.activate ambient @a ~ ~1000 ~ 1000 1

# If coop, title
tag @s add DontTitle
execute if score game.player_count game.state matches 2.. run title @a[tag=!DontTitle] subtitle [{"selector":"@s",color:"gold"},{text:" picked up a level key",color:"gray"}]
execute if score game.player_count game.state matches 2.. run title @a[tag=!DontTitle] title ""
tag @s remove DontTitle
