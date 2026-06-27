# Replaces play.mcfunction
#say [Reduce cost of Spellbound cards by 1 of each resource]
function exigence:cards/announce_card

# Functionality
scoreboard players set mod.spellbook game.modifiers 1
