# Clear all leftover items (bowl, empty bottle_
# Sometimes they don't clear if we clear it in the same tick

#====================================================================================================

execute in minecraft:overworld as @a[tag=ActivePlayer] run clear @s bowl
execute in minecraft:overworld as @a[tag=ActivePlayer] run clear @s glass_bottle