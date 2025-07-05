# Can be called when a player enters Predungeon, and when they press a button (in case they dropped items etc)
#   We can also recall this whenever their inventory changes if we wanted to

# Call as player validating

# Analyze deck
#   Returns exigence:hub too_many_copies true/false
function exigence:deck/process/analyze_deck

scoreboard players operation CardsTotalCheck DeckAnalysis = CardsTotal DeckAnalysis
scoreboard players operation CardsTotalCheck DeckAnalysis -= DeckModifier Modifiers

# Reduce up to VoidDeckModifiers of void chards
scoreboard players operation #VoidCap DeckAnalysis = CardsVoid DeckAnalysis
scoreboard players operation #VoidCap DeckAnalysis < VoidDeckModifier Modifiers
scoreboard players operation CardsTotalCheck DeckAnalysis -= #VoidCap DeckAnalysis

# Card Check
#   Returns exigence:hub valid_cards true/false
function exigence:hub/predungeon/private/validate_cards

# Item Check
#   Returns exigence:hub valid_items true/false
function exigence:hub/predungeon/private/validate_items
