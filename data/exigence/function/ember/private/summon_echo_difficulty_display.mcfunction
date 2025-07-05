# Call as EchoNode

# Save EchoDifficulty score to temp storage
execute store result storage exigence:temp echo_difficulty int 1 run scoreboard players get @s EchoDifficulty

execute at @s positioned ~ ~2.51 ~ run function exigence:ember/private/summon_echo_difficulty_display_macro with storage exigence:temp