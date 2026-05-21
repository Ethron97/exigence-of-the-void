# Replaces play.mcfunction
say +1 exit portal in the Mirror Mines, +3 Hazard on level 2 (for each player)

# Only triggers if difficulty is exactly 4
execute if score game.difficulty game.state matches 4 run function exigence:cards/backup_plan/private/trigger
