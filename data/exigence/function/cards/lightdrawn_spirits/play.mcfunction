#say [3 Aqua: Automatically pick up all items that are glowing]
function exigence:cards/announce_card

function exigence:resources/try_consume with storage exigence:resources

# Call sub-function as each glowing item
execute if score #LastConsumeResult game.resources matches 1 run function exigence:cards/lightdrawn_spirits/private/trigger