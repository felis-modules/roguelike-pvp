execute if entity @s[nbt=!{Inventory:[{tag:{gl_token:1b}}]}] run function roguelike:character/gladiator/check_token
execute if entity @s[nbt={Inventory:[{tag:{gl_token:1b}}]}] run function roguelike:character/gladiator/update_token

execute if score @s gl_charge matches 1.. run function roguelike:character/gladiator/charge