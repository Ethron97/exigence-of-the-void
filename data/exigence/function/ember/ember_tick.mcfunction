# Called by game tick if max menace is not reached

#====================================================================================================

# Resolve 1 queued ember
execute if score seconds.cooldown tick_counter matches 10 if score ember.queue game.dungeon.temp matches 1.. run function exigence:ember/resolve_ember
