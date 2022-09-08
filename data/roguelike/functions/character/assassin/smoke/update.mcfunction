execute store result score .where as_smoke run data get entity @s Inventory[{tag:{smoke:1b}}].Slot

execute if entity @s[scores={as_smoke=0}] run item replace entity @s weapon.mainhand with glass_bottle{display:{Name:'{"text":"빈 암살자의 연막탄","color":"light_purple","bold":false,"italic":false}',Lore:['{"text":"다 쓰고 비었다!","color":"gray","bold":false,"italic":false}']},smoke:1b} 1
# scoreboard players add @s[scores={as_smoke=0..2}] as_smoke 1
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 0 run item modify entity @s hotbar.0 roguelike:character/assassin/yangsim
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 1 run item modify entity @s hotbar.1 roguelike:character/assassin/yangsim
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 2 run item modify entity @s hotbar.2 roguelike:character/assassin/yangsim
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 3 run item modify entity @s hotbar.3 roguelike:character/assassin/yangsim
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 4 run item modify entity @s hotbar.4 roguelike:character/assassin/yangsim
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 5 run item modify entity @s hotbar.5 roguelike:character/assassin/yangsim
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 6 run item modify entity @s hotbar.6 roguelike:character/assassin/yangsim
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 7 run item modify entity @s hotbar.7 roguelike:character/assassin/yangsim
execute if entity @s[scores={as_smoke=1..}] if score .where as_smoke matches 8 run item modify entity @s hotbar.8 roguelike:character/assassin/yangsim