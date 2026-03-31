say [Automatically pick up all items within 32 blocks]

# Call sub-function as each active living player
execute as @a[scores={dead=0},tag=ActivePlayer] at @s run function exigence:cards/helpful_spirits/private/player_pickup
