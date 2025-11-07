# Skip tutorial section

## CONSTRAINTS
#   AS player

#=============================================================================================================

execute if entity @s[tag=Tutorial] in exigence:tutorial run function exigence:tutorial/flow/skip_section

# Reset trigger score
scoreboard players set @s SkipSection 0
# If tag is tutorial, reactivate
execute if entity @s[tag=Tutorial] run scoreboard players enable @s SkipSection
