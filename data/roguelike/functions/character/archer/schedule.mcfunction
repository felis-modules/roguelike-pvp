execute if score @s RP_COOL1 matches ..1 if entity @s[nbt=!{Inventory:[{tag:{artech:1b}}]}] run function roguelike:character/archer/techinical_bow_set

execute if score @s RP_COOL2 matches ..1 if entity @s[nbt=!{Inventory:[{tag:{arpoison:1b}}]}] run function roguelike:character/archer/poison_dart_set

execute store result score @s[nbt={Inventory:[{tag:{artech:1b}}]}] RP_COOL1 run data get storage roguelike:rp rp_ar_cool1
execute store result score @s[nbt={Inventory:[{tag:{arpoison:1b}}]}] RP_COOL2 run data get storage roguelike:rp rp_ar_cool2