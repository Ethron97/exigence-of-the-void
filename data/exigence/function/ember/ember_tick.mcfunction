# This function should only be called if not max menace

# Resolve 1 queued ember
#   Embers will not drop once max menace is reached
execute if score SecondsCooldown TickCounter matches 10 if score EmberQueue DungeonRun matches 1.. run function exigence:ember/resolve_ember
