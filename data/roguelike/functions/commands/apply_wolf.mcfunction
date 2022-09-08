item replace entity @s armor.head with iron_helmet
item replace entity @s armor.chest with iron_chestplate
item replace entity @s armor.legs with iron_leggings
item replace entity @s armor.feet with iron_boots

function roguelike:armor/reset_cool

function roguelike:armor/teleport/tag_exception
item modify entity @s armor.head roguelike:items/armors/wolf_helmet
item modify entity @s armor.chest roguelike:items/armors/wolf_chestplate
item modify entity @s armor.legs roguelike:items/armors/wolf_leggings
item modify entity @s armor.feet roguelike:items/armors/wolf_boots

item replace entity @s container.27 with iron_ingot{display:{Name:'{"text":"점멸 곡검","color":"aqua","bold":false,"italic":false}',Lore:['{"text":"오른손에 들자마자 전방으로 7칸 점멸한다.","color":"gray","bold":false,"italic":false}','{"text":"가능한 경우 벽을 통과할 수 있다.","color":"gray","bold":false,"italic":false}']},CustomModelData:1109,tp:1b}

item replace entity @s armor.head with air