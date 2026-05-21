execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Trigger charm of peril

# Increase echo difficulty by 1
scoreboard players add .difficulty_mod game.dungeon.echo 1

# Increase starting hazard by 1 on the selected difficulty level
function exigence:hazard/starting_hazard/increase/main
