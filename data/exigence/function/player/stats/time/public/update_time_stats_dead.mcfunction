# Called by gametick as player

# CONSTRAINTS
# AS player dead

#================================================================================================================

# It maakes no sense to track how they're dead on each "level" since they get tpd to another
# player to spectate immediately. Plus this timer should be a fraction of their total time.

scoreboard players add @s cr_ticksDead 1
scoreboard players add @s t_ticksDead 1
