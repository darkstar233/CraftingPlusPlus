# 玩家
execute as @a at @s run function cpp:player/tick
# 僵尸
execute if score $doZombieImproving cppConfig matches 1 at @e[type=#cpp:zombies] run function cpp:enhance_mobs/tick
# 节肢生物
execute as @e[type=#cpp:arthropod] at @s if entity @a[predicate=cpp:inventory/sachet,distance=..16] run function cpp:arthropod/tick
# 黑暗动物
execute if score $doDarkAnimalSpawning cppConfig matches 1 as @e[type=#cpp:animals,tag=cpp_dark_animal] at @s if entity @a[distance=..16] run function cpp:dark_animals/tick
# 村民
execute as @e[type=#cpp:villagers] at @s if entity @a[predicate=cpp:hand/emerald_block,distance=1..10] run function cpp:villager/tick
# 附魔之瓶
execute as @e[type=experience_bottle] at @s run function cpp:xp/tick
# 物品展示框
execute as @e[type=item_frame] at @s run function cpp:item_frame/tick
# 物品
execute as @e[type=item] at @s run function cpp:item/tick
# 药水云
execute as @e[type=area_effect_cloud] at @s run function cpp:area_effect_cloud/tick
# 盔甲架
execute as @e[type=armor_stand] at @s run function cpp:armor_stand/tick
