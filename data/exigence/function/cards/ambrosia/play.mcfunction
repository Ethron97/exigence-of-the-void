say [5 Green: For the rest of the run, eating a berry grants one of the following effects: +5 seconds Jump II, +10 seconds Regen I, +15 seconds Speed II]

function exigence:resources/try_consume with storage exigence:resources
execute if score LastConsumeResult Resources matches 1 run scoreboard players add Ambrosia Modifiers 1

execute if score LastConsumeResult Resources matches 1 as @a[tag=ActivePlayer] run function exigence:cards/ambrosia/private/replace_berries
