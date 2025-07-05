# Summon particle based on bookshelf direction, and if there are any bookshelves

execute at @s[tag=FacingEast] align xyz positioned ~0.5 ~0.5 ~0.5 unless data block ~ ~ ~ {Items:[]} run particle minecraft:glow ~0.8 ~ ~ 0.2 0.2 0.2 0 1
execute at @s[tag=FacingWest] align xyz positioned ~0.5 ~0.5 ~0.5 unless data block ~ ~ ~ {Items:[]} run particle minecraft:glow ~-0.8 ~ ~ 0.2 0.2 0.2 0 1
execute at @s[tag=FacingNorth] align xyz positioned ~0.5 ~0.5 ~0.5 unless data block ~ ~ ~ {Items:[]} run particle minecraft:glow ~ ~ ~-0.8 0.2 0.2 0.2 0 1
execute at @s[tag=FacingSouth] align xyz positioned ~0.5 ~0.5 ~0.5 unless data block ~ ~ ~ {Items:[]} run particle minecraft:glow ~ ~ ~0.8 0.2 0.2 0.2 0 1
