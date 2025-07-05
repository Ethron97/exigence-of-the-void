# Call as EchoNode

# Save score to temp storage
execute store result storage exigence:temp times_chosen int 1 run scoreboard players get @s EchoTimesChosen
execute store result storage exigence:temp times_won int 1 run scoreboard players get @s EchoTimesWon

# calc winrate, win/chosen
scoreboard players operation winrate Temp = @s EchoTimesWon
scoreboard players operation chosen Temp = @s EchoTimesChosen
# Avoid divide by zero
scoreboard players operation chosen Temp > 1 number

scoreboard players operation winrate Temp *= 100 number
#scoreboard players operation chosen Temp *= 100 number

scoreboard players operation winrate Temp /= chosen Temp

execute store result storage exigence:temp winrate int 1 run scoreboard players get winrate Temp

execute at @s positioned ~ ~2.76 ~ run function exigence:ember/private/summon_winrate_display_macro with storage exigence:temp