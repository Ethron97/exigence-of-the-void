say +1 Void Merchant on level 3, +1 Hazard on level 3 (+1 Hazard per player in COOP)

scoreboard players add mod.void_merchants game.modifiers 1

# Increase starting hazard by 1 on level 3 for each player
execute as @a[tag=ActivePlayer] run function exigence:hazard/starting_hazard/increase/3

