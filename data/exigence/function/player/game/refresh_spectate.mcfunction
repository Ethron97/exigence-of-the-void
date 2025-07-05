# Used in schedule so it just does all players whatever

execute as @a[tag=ActivePlayer,scores={dead=2},gamemode=spectator] run spectate
execute as @a[tag=ActivePlayer,scores={dead=2},gamemode=spectator] run spectate @p[tag=ActivePlayer,scores={dead=0}]

#execute as @a[gamemode=spectator] run spectate
#execute as @a[gamemode=spectator] run spectate @p[gamemode=!spectator]
