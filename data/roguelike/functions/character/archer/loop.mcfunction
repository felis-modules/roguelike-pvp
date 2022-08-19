item replace entity @s inventory.0 with arrow{display:{Name:'{"text":"마법 화살","color":"aqua","bold":false,"italic":false}',Lore:['{"text":"해당 자리에 아이템을 두면 사라지니 주의할 것","color":"gray","bold":false,"italic":false}']}}
execute if score @s RP_USED_CBOW matches 1.. run function roguelike:character/archer/bow_used
execute if score @s ar_pdart matches 0 if score @s RP_COOL2 matches ..1 run function roguelike:character/archer/poison_dart_used
execute if score @s ar_techshot matches 0 if score @s RP_COOL1 matches ..1 run function roguelike:character/archer/techinical_bow_used