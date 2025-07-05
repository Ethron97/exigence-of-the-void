# IF function

# Call as echo node

# Check for nonair surrounding it
execute at @s positioned ~1 ~ ~-1 unless block ~ ~ ~ air run return 1
execute at @s positioned ~1 ~ ~ unless block ~ ~ ~ air run return 1
execute at @s positioned ~1 ~ ~1 unless block ~ ~ ~ air run return 1
execute at @s positioned ~-1 ~ ~-1 unless block ~ ~ ~ air run return 1
execute at @s positioned ~-1 ~ ~ unless block ~ ~ ~ air run return 1
execute at @s positioned ~-1 ~ ~1 unless block ~ ~ ~ air run return 1
execute at @s positioned ~ ~ ~1 unless block ~ ~ ~ air run return 1
execute at @s positioned ~ ~ ~-1 unless block ~ ~ ~ air run return 1

# And below it (so it has a solid platform)
execute at @s positioned ~1 ~-1 ~-1 if block ~ ~ ~ air run return 1
execute at @s positioned ~1 ~-1 ~ if block ~ ~ ~ air run return 1
execute at @s positioned ~1 ~-1 ~1 if block ~ ~ ~ air run return 1
execute at @s positioned ~-1 ~-1 ~-1 if block ~ ~ ~ air run return 1
execute at @s positioned ~-1 ~-1 ~ if block ~ ~ ~ air run return 1
execute at @s positioned ~-1 ~-1 ~1 if block ~ ~ ~ air run return 1
execute at @s positioned ~ ~-1 ~1 if block ~ ~ ~ air run return 1
execute at @s positioned ~ ~-1 ~-1 if block ~ ~ ~ air run return 1

return 0
