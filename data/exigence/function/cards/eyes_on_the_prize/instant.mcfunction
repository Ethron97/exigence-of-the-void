# Replaces play.mcfunction
#say [+1 cards available each refresh in the Ember Shop]
function exigence:cards/announce_card

# Functionality
scoreboard players add mod.bonus_cards game.modifiers 1
