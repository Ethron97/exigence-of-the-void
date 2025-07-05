# Test if the pattern matches the one in the mirror
#say testmatch
scoreboard players operation OldBookshelf BookshelfMatch = Bookshelf BookshelfMatch
# Because some of the final book shelves are blank, most start "correct"
scoreboard players set Bookshelf BookshelfMatch -230

# Top to bottom, row by row left to right
## TOP ROW - SLOT 0
execute unless data block -481 65 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 65 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 65 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 65 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 65 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 65 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 65 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 65 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 65 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
## TOP ROW - SLOT 1
execute unless data block -481 65 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 65 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 65 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 65 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 65 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 65 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 65 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 65 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 65 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
## TOP ROW - SLOT 2
execute unless data block -481 65 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 65 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 65 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 65 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 65 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 65 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 65 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 65 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 65 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
## TOP ROW - SLOT 3
execute unless data block -481 65 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 65 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 65 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 65 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 65 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 65 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 65 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 65 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 65 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
## TOP ROW - SLOT 4
execute unless data block -481 65 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 65 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 65 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 65 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 65 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 65 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 65 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 65 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 65 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
## TOP ROW - SLOT 5
execute unless data block -481 65 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 65 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 65 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 65 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 65 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 65 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 65 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 65 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 65 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1

## SECOND TOP ROW, bookshelf by bookshelf
# Bookshelf 1
execute unless data block -481 64 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -481 64 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -481 64 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -481 64 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -481 64 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -481 64 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
# Bookshelf 2
execute unless data block -480 64 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -480 64 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 64 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 64 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 64 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 64 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
# Bookshelf 3
execute unless data block -479 64 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -479 64 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -479 64 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 64 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -479 64 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 64 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
# Bookshelf 4
execute if data block -478 64 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 64 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -478 64 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 64 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 64 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 64 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
# Bookshelf 5
execute if data block -477 64 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -477 64 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 64 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 64 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 64 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 64 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
# Bookshelf 6
execute if data block -476 64 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 64 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 64 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 64 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -476 64 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 64 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
# Bookshelf 7
execute unless data block -475 64 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -475 64 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -475 64 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 64 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 64 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 64 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
# Bookshelf 8
execute if data block -474 64 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 64 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 64 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 64 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 64 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 64 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
# Bookshelf 9
execute if data block -473 64 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 64 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 64 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -473 64 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 64 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 64 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1

## MIDDLE, bookshelf by bookshelf
# Bookshelf 1
execute unless data block -481 63 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -481 63 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -481 63 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -481 63 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -481 63 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -481 63 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
# Bookshelf 2
execute if data block -480 63 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 63 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -480 63 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 63 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 63 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 63 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
# Bookshelf 3
execute unless data block -479 63 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 63 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -479 63 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 63 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 63 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 63 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
# Bookshelf 4
execute unless data block -478 63 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 63 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 63 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -478 63 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 63 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -478 63 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
# Bookshelf 5
execute if data block -477 63 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -477 63 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 63 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 63 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 63 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 63 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
# Bookshelf 6
execute unless data block -476 63 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -476 63 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 63 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 63 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -476 63 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -476 63 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
# Bookshelf 7
execute unless data block -475 63 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -475 63 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -475 63 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 63 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 63 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -475 63 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
# Bookshelf 8
execute if data block -474 63 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 63 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -474 63 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 63 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 63 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -474 63 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
# Bookshelf 9
execute unless data block -473 63 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 63 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 63 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 63 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 63 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 63 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1


## SECOND BOTTOM ROW - SLOT 0
execute unless data block -481 62 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 62 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 62 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 62 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 62 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 62 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 62 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 62 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 62 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
## SECOND BOTTOM ROW - SLOT 1
execute unless data block -481 62 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 62 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 62 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 62 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 62 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 62 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 62 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 62 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 62 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
## SECOND BOTTOM ROW - SLOT 2
execute unless data block -481 62 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 62 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 62 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 62 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 62 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 62 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 62 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 62 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 62 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
## SECOND BOTTOM ROW - SLOT 3
execute unless data block -481 62 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 62 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 62 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 62 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 62 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 62 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 62 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 62 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 62 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
## SECOND BOTTOM ROW - SLOT 4
execute if data block -481 62 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -480 62 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -479 62 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -478 62 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -477 62 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -476 62 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -475 62 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -474 62 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute if data block -473 62 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
## SECOND BOTTOM ROW - SLOT 5
execute unless data block -481 62 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 62 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 62 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 62 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 62 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 62 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 62 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 62 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 62 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1


## BOTTOM ROW - SLOT 0
execute unless data block -481 61 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 61 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 61 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 61 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 61 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 61 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 61 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 61 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 61 -200 {Items:[{Slot:0b}]} run scoreboard players add Bookshelf BookshelfMatch 1
## BOTTOM ROW - SLOT 1
execute unless data block -481 61 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 61 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 61 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 61 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 61 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 61 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 61 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 61 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 61 -200 {Items:[{Slot:1b}]} run scoreboard players add Bookshelf BookshelfMatch 1
## BOTTOM ROW - SLOT 2
execute unless data block -481 61 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 61 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 61 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 61 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 61 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 61 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 61 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 61 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 61 -200 {Items:[{Slot:2b}]} run scoreboard players add Bookshelf BookshelfMatch 1
## BOTTOM ROW - SLOT 3
execute unless data block -481 61 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 61 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 61 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 61 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 61 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 61 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 61 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 61 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 61 -200 {Items:[{Slot:3b}]} run scoreboard players add Bookshelf BookshelfMatch 1
## BOTTOM ROW - SLOT 4
execute unless data block -481 61 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 61 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 61 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 61 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 61 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 61 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 61 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 61 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 61 -200 {Items:[{Slot:4b}]} run scoreboard players add Bookshelf BookshelfMatch 1
## BOTTOM ROW - SLOT 5
execute unless data block -481 61 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -480 61 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -479 61 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -478 61 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -477 61 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -476 61 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -475 61 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -474 61 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1
execute unless data block -473 61 -200 {Items:[{Slot:5b}]} run scoreboard players add Bookshelf BookshelfMatch 1

# If bookshelf match changed, update mirror brokage
execute unless score OldBookshelf BookshelfMatch = Bookshelf BookshelfMatch run function exigence:mirror/bookshelf/update_bookshelf_mirror

# Playsound up or down
execute if score OldBookshelf BookshelfMatch < Bookshelf BookshelfMatch at @p[tag=ActivePlayer] run playsound minecraft:block.enchantment_table.use neutral @a[predicate=exigence:mirror/bookshelf] ~ ~1000 ~ 1000 1.2
execute if score OldBookshelf BookshelfMatch > Bookshelf BookshelfMatch at @e[type=minecraft:villager,tag=NPC_Scientist] run playsound minecraft:entity.villager.no neutral @a[predicate=exigence:mirror/bookshelf] ~ ~ ~ 2 1

execute if score Bookshelf BookshelfMatch matches 40 run say All match
execute if score Bookshelf BookshelfMatch matches 40 at @e[type=armor_stand,tag=Villager,tag=MirrorNode] run playsound minecraft:block.glass.break ambient @a[tag=ActivePlayer]
#execute unless score Bookshelf BookshelfMatch matches 40 run say Fail
execute if score Bookshelf BookshelfMatch matches 40 run advancement grant @a[tag=ActivePlayer] only exigence:story/match_bookshelf

# TP villager and remove reflection tag
execute if score Bookshelf BookshelfMatch matches 40 run tp @e[type=minecraft:villager,tag=NPC_Scientist,tag=Reflection] -479.5 61.00 -196.5
execute if score Bookshelf BookshelfMatch matches 40 run tag @e[type=minecraft:villager,tag=NPC_Scientist,tag=Reflection] remove Reflection