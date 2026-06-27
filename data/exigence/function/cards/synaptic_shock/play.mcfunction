#say Stun all enemies for 30 seconds
function exigence:cards/announce_card

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 as @e[type=#exigence:enemy] run function exigence:cards/synaptic_shock/private/stun
