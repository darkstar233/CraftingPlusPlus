execute unless data entity @s ArmorItems[3].id run loot replace entity @s armor.head loot cpp:enhance_mobs/head
execute unless data entity @s ArmorItems[2].id run loot replace entity @s armor.chest loot cpp:enhance_mobs/chest
execute unless data entity @s ArmorItems[1].id run loot replace entity @s armor.legs loot cpp:enhance_mobs/legs
execute unless data entity @s ArmorItems[0].id run loot replace entity @s armor.feet loot cpp:enhance_mobs/feet
execute unless data entity @s HandItems[0].id run loot replace entity @s weapon.mainhand loot cpp:enhance_mobs/weapon
execute if data entity @s HandItems[0].tag.AttributeModifiers[] run function cpp:enhance_mobs/modify_lore
data merge entity @s {HandDropChances:[0.085f,0.085f],ArmorDropChances:[0.085f,0.085f,0.085f,0.085f]}
