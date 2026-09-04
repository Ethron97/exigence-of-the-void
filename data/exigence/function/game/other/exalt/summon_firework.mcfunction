# Summon firework with inputs

## CONSTRAINTS
#   AT location

## INPUT
#   INT lifetime
#   INT colors
#   INT fade_colors
#   STR shape
#   BOOL has_trail
#   BOOL has_twinkle

#====================================================================================================

$summon firework_rocket ~ ~ ~ {LifeTime:$(lifetime),FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{\
explosions:[{shape:"$(shape)",colors:[$(colors)],fade_colors:[$(fade_colors)],has_trail:$(has_trail),has_twinkle:$(has_twinkle)}]\
}}}}
