# Reset advancement
advancement revoke @s only exigence:listener/interact/bookshelf

# Return if game is not acive
execute if data storage exigence:dungeon {is_active:0} run return 1

# If the player is near the Scientist Bookshelf, check bookshelf match
execute at @s[advancements={exigence:story/match_bookshelf=false},predicate=exigence:mirror/bookshelf] run schedule function exigence:mirror/bookshelf/test_match 1t

#say Interact bookshelf
