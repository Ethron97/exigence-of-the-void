# Can be called when a player enters Predungeon, and when they press a button (in case they dropped items etc)
#   We can also recall this whenever their inventory changes if we wanted to

# Call as player validating

# Analyze deck
#   Returns exigence:hub too_many_copies true/false
function exigence:deck/process/analyze_deck

scoreboard players operation Cards.TotalCheck deck.analysis = CardsCards.Total deck.analysis
scoreboard players operation Cards.TotalCheck deck.analysis -= DeckModifier Modifiers

# Reduce up to VoidDeckModifiers of void chards
scoreboard players operation #VoidCap deck.analysis = CardsCards.Void deck.analysis
scoreboard players operation #VoidCap deck.analysis < VoidDeckModifier Modifiers
scoreboard players operation Cards.TotalCheck deck.analysis -= #VoidCap deck.analysis

# Card Check
#   Returns exigence:hub valid_cards true/false
function exigence:hub/predungeon/private/validate_cards

# Item Check
#   Returns exigence:hub valid_items true/false
function exigence:hub/predungeon/private/validate_items
