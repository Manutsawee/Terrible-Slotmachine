local AddPrefabPostInit = AddPrefabPostInit
GLOBAL.setfenv(1, GLOBAL)

SetSharedLootTable("twister",
{
    {"turbine_blades",   1.00},
    {"goldnugget",   1.00},
    {"goldnugget",   1.00},
    {"goldnugget",   1.00},
    {"staff_tornado",   1.00},
    {"staff_tornado",   1.00},
})

local function postinit(inst)

    if not TheWorld.ismastersim then return end

    if inst.components.lootdropper then
        inst.components.lootdropper:SetChanceLootTable('twister')
    end

end

AddPrefabPostInit("twister", postinit)