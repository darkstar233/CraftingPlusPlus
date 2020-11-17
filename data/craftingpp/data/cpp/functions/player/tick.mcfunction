# 清理物品
clear @s[predicate=cpp:inventory/cpp_clear] #cpp:clear{cpp_clear:1b}
# 扫帚
execute as @s[predicate=cpp:hand/broom] run function cpp:tool/broom
# 流星丸
execute as @s[predicate=cpp:offhand/shooting_star] if block ^ ^ ^1 #cpp:part_block run function cpp:tool/shooting_star
effect give @s[predicate=cpp:hand/shooting_star] levitation 2 255 true
# 随机方块
execute as @s[predicate=cpp:offhand/shulker_box] if data entity @s Inventory[{Slot:-106b}].tag.BlockEntityTag.Items[0] run function cpp:item/random_block/run
# 帽子模型
execute as @s[predicate=cpp:head/head_decor] run function cpp:player/head_decor
execute as @s[predicate=cpp:inventory/head_decor] run function cpp:player/bag_head_decor
# 武器
execute as @s[predicate=cpp:inventory/frostmourne] run function cpp:player/bag_frostmourne
execute as @s[predicate=cpp:inventory/ganjiang_moye_sword] run function cpp:player/bag_ganjiang_moye_sword
execute as @s[predicate=cpp:inventory/imperial_sword] run function cpp:player/bag_imperial_sword
execute as @s[predicate=cpp:inventory/phoenix_sword] run function cpp:player/bag_phoenix_sword
# 附魔之瓶
execute as @s[predicate=cpp:offhand/hopper] run function cpp:xp/check
# 连环
execute as @s[scores={cppChainTick=1..}] anchored eyes run function cpp:chain/type
# 插火把
scoreboard players enable @s cppTorchPeriod
execute as @s[scores={cppTorchPeriod=1..}] run function cpp:auto_torch/check
# 下降
execute as @s[predicate=cpp:sneakdown] run function cpp:player/sneakdown
# 使用胡萝卜钓竿
execute as @s[scores={cppUseCSt=1..}] run function cpp:cst/type
# 使用打火石
execute as @s[scores={cppUseFS=1..}] run function cpp:blocks/fire
# 箱子整理
execute as @s[scores={cppTrimChest=1..}] run function cpp:trim/check
execute as @s[scores={cppTrimShulker=1..}] run function cpp:trim/check
scoreboard players reset @s cppSneakTime
# 空岛交互熔炉
execute if score $skyislandMode cppConfig matches 1 as @s[scores={cppBsdIntFur=1..}] at @s anchored eyes run function cpp:block_breaker/ray
