# Implements money_item_display

## CONSTRAINTS:
#   AT where to place item display

## INPUT:
#   STR vault
#   STR unlock <opened,trial,crucible>, forms vault_string together with vault
#   STR menu_tag
#   STR item_name
#   INT money_cost
#   INT research_cost
#   INT(1-4) rarity (1=common,2=uncommon etc)
#   INT(1-7) tier (1-7, determines story beat required to unlock)
# {item_name:'',money_cost:0,research_cost:0,rarity:1,tier:1}

#====================================================================================================

# Summon artifact item
$function exigence:vault/artifact/summon_item {item_name:'$(item_name)'}

# Artifact related data
#   Replaces NAS tag with NSS so money_item_display works
$execute as @n[type=item,tag=NAS,distance=..0.1] run function exigence:menu/money_menus/artifact/data {vault:'$(vault)',unlock:'$(unlock)'}

# Call money item display
$function exigence:menu/money_menus/money_item_display {menu_tag:'$(menu_tag)',item_name:'$(item_name)',rarity:$(rarity),tier:$(tier),money_cost:$(money_cost),research_cost:$(research_cost),parents:[],num_parents:0,Rotation:'$(Rotation)'}
