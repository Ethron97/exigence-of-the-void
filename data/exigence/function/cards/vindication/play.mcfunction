say +1 Ember for each heart of damage taken this run (highest of all players used in coop)

function exigence:resources/try_consume with storage exigence:resources
execute if score LastConsumeResult Resources matches 1 run function exigence:cards/vindication/trigger
