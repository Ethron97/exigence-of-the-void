# Called by game_tick

#====================================================================================================

execute if score berry.queue game.dungeon.temp matches 1.. as @a[scores={dead=0},tag=ActivePlayer,sort=random,limit=1] run function exigence:botany/resolve_berry
