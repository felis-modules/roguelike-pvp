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

item replace entity @s container.27 with iron_ingot{tp:1b}