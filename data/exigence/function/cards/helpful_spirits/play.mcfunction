say [Automatically pick up all items within 32 blocks]

# Call sub-function as each active living player
execute as @a[tag=ActivePlayer,scores={dead=0}] at @s run function exigence:cards/helpful_spirits/private/player_pickup
