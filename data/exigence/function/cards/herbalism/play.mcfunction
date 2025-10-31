say Herbalism [1 Green: +6 Treasure]

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 run function exigence:treasure/queue/add_to_queue {source:"herbalism",amount:6}