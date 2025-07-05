
# Revoke the advanancement so they can get it again
advancement revoke @s only exigence:listener/fall_from_height

execute as @s run fill ~-0.3 ~-1 ~-0.3 ~0.3 ~-1 ~0.3 minecraft:air replace minecraft:frosted_ice

execute as @s at @s run playsound block.glass.break block @a ~ ~ ~ 1.0 0.8

