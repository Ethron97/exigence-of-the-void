# Reset advancement
advancement revoke @s only exigence:listener/pickup/echo

# TUTORIAL
clear @s[tag=Tutorial] minecraft:music_disc_relic 1
tag @s[tag=Tutorial] add FoundEcho
execute as @s[tag=FoundEcho,tag=Tutorial] run function exigence:game/found_echo
stopsound @s[tag=Tutorial] neutral minecraft:block.amethyst_block.resonate

# Return if the game is not active
execute if data storage exigence:dungeon {is_active:0} run return 1

# Delete the music disc from their inventory
clear @s minecraft:music_disc_relic 1

# Call function to handle the rest of the event
tag @s add FoundEcho
execute as @a[tag=FoundEcho] run function exigence:game/found_echo

# If coop, title otherp layers
tag @s add DontTitle
execute if data storage exigence:dungeon {is_coop:1} run title @a[tag=!DontTitle] subtitle [{"selector":"@s",color:"aqua"},{text:" picked up an echo shard",color:"gray"}]
execute if data storage exigence:dungeon {is_coop:1} run title @a[tag=!DontTitle] title ""
tag @s remove DontTitle

# Stop sound
stopsound @s neutral minecraft:block.amethyst_block.resonate

#say pick ehco