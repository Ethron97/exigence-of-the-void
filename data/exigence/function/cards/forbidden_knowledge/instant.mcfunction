# Replaces play.mcfunction
#say [+2 cards available each refresh in the Ember Shop]
function exigence:cards/announce_card

# Functionality
#scoreboard players add mod.bonus_cards game.modifiers 2
scoreboard players add mod.refresh_discount game.modifiers 1
