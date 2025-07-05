# Ensures that the necessary mirror entities exist

# Kill old entities
kill @e[type=minecraft:armor_stand,tag=MirrorEntity]

# Summon new ones for each player
execute as @a[tag=ActivePlayer] run function exigence:mirror/reflection/setup_mirror_entities
