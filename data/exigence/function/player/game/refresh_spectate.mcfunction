# Used in schedule so it just does all players whatever

execute as @a[scores={dead=2},tag=ActivePlayer,gamemode=spectator] run spectate
execute as @a[scores={dead=2},tag=ActivePlayer,gamemode=spectator] run spectate @p[scores={dead=0},tag=ActivePlayer]

#execute as @a[gamemode=spectator] run spectate
#execute as @a[gamemode=spectator] run spectate @p[gamemode=!spectator]
