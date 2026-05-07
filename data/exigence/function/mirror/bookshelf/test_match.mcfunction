# Test if the pattern matches the one in the mirror

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

execute if score toggle.bookshelf debug matches 1 if score debug.level debug matches 3.. run say (D3) Testmatch
scoreboard players operation matches.old game.mirror.bookshelf_match = matches.current game.mirror.bookshelf_match
# Because some of the final book shelves are blank, most slots start "correct"
scoreboard players set matches.current game.mirror.bookshelf_match -122

# Top to bottom, row by row left to right
## TOP ROW
# Bookshelf 1
execute unless items block -481 64 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -481 64 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -481 64 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -481 64 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -481 64 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -481 64 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
# Bookshelf 2
execute unless items block -480 64 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -480 64 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -480 64 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -480 64 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -480 64 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -480 64 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
# Bookshelf 3
execute unless items block -479 64 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -479 64 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -479 64 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -479 64 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -479 64 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -479 64 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
# Bookshelf 4
execute if items block -478 64 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -478 64 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -478 64 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -478 64 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -478 64 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -478 64 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
# Bookshelf 5
execute if items block -477 64 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -477 64 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -477 64 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -477 64 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -477 64 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -477 64 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
# Bookshelf 6
execute if items block -476 64 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -476 64 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -476 64 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -476 64 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -476 64 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -476 64 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
# Bookshelf 7
execute unless items block -475 64 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -475 64 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -475 64 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -475 64 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -475 64 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -475 64 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
# Bookshelf 8
execute if items block -474 64 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -474 64 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -474 64 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -474 64 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -474 64 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -474 64 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
# Bookshelf 9
execute if items block -473 64 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -473 64 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -473 64 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -473 64 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -473 64 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -473 64 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1

## MIDDLE
# Bookshelf 1
execute unless items block -481 63 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -481 63 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -481 63 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -481 63 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -481 63 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -481 63 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
# Bookshelf 2
execute if items block -480 63 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -480 63 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -480 63 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -480 63 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -480 63 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -480 63 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
# Bookshelf 3
execute unless items block -479 63 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -479 63 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -479 63 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -479 63 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -479 63 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -479 63 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
# Bookshelf 4
execute unless items block -478 63 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -478 63 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -478 63 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -478 63 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -478 63 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -478 63 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
# Bookshelf 5
execute if items block -477 63 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -477 63 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -477 63 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -477 63 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -477 63 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -477 63 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
# Bookshelf 6
execute unless items block -476 63 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -476 63 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -476 63 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -476 63 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -476 63 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -476 63 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
# Bookshelf 7
execute unless items block -475 63 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -475 63 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -475 63 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -475 63 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -475 63 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -475 63 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
# Bookshelf 8
execute if items block -474 63 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -474 63 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -474 63 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -474 63 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -474 63 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -474 63 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
# Bookshelf 9
execute unless items block -473 63 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -473 63 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -473 63 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -473 63 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -473 63 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -473 63 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1

## SECOND BOTTOM ROW - SLOT 0
execute unless items block -481 62 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -480 62 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -479 62 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -478 62 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -477 62 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -476 62 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -475 62 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -474 62 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -473 62 -200 container.0 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
## SECOND BOTTOM ROW - SLOT 1
execute unless items block -481 62 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -480 62 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -479 62 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -478 62 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -477 62 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -476 62 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -475 62 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -474 62 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -473 62 -200 container.1 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
## SECOND BOTTOM ROW - SLOT 2
execute unless items block -481 62 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -480 62 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -479 62 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -478 62 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -477 62 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -476 62 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -475 62 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -474 62 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -473 62 -200 container.2 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
## SECOND BOTTOM ROW - SLOT 3
execute unless items block -481 62 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -480 62 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -479 62 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -478 62 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -477 62 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -476 62 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -475 62 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -474 62 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -473 62 -200 container.3 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
## SECOND BOTTOM ROW - SLOT 4
execute if items block -481 62 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -480 62 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -479 62 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -478 62 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -477 62 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -476 62 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -475 62 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -474 62 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute if items block -473 62 -200 container.4 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
## SECOND BOTTOM ROW - SLOT 5
execute unless items block -481 62 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -480 62 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -479 62 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -478 62 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -477 62 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -476 62 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -475 62 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -474 62 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1
execute unless items block -473 62 -200 container.5 * run scoreboard players add matches.current game.mirror.bookshelf_match 1

# If bookshelf match changed, update mirror brokage
execute unless score matches.old game.mirror.bookshelf_match = matches.current game.mirror.bookshelf_match run function exigence:mirror/bookshelf/update_bookshelf_mirror

# Playsound up or down
execute if score matches.old game.mirror.bookshelf_match < matches.current game.mirror.bookshelf_match positioned -476.53 62.00 -188.46 at @p[tag=ActivePlayer] run playsound minecraft:block.enchantment_table.use neutral @a[predicate=exigence:mirror/bookshelf] ~ ~1000 ~ 1000 1.2
execute if score matches.old game.mirror.bookshelf_match > matches.current game.mirror.bookshelf_match positioned -476.53 62.00 -188.46 at @e[type=minecraft:villager,tag=NPC_Scientist,distance=..30] run playsound minecraft:entity.villager.no neutral @a[predicate=exigence:mirror/bookshelf] ~ ~ ~ 2 1

# Success
execute if score matches.current game.mirror.bookshelf_match matches 40 positioned -476.53 62.00 -188.46 run function exigence:mirror/bookshelf/successful_match
