# Reset advancement
advancement revoke @s only exigence:listener/use_wooden_pick

say Used wooden pick

# Clear all cracked bricks around the player
execute at @s anchored eyes positioned ^ ^ ^2 run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace #exigence:pick_obstacle
execute at @s anchored eyes positioned ^ ^ ^2 run particle minecraft:gust ~ ~ ~
