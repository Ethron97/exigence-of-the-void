# Called by gametick as player

# CONSTRAINTS
# AS player dead

#================================================================================================================

# It maakes no sense to track how they're dead on each "level" since they get tpd to another
# player to spectate immediately. Plus this timer should be a fraction of their total time.

scoreboard players add @s profile.data.gametime.cr.ticks_dead 1
