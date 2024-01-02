---@class BetterBags: AceAddon
local addon = LibStub('AceAddon-3.0'):GetAddon("BetterBags")

---@class Categories: AceModule
local categories = addon:GetModule('Categories')

---@class Localization: AceModule
local L = addon:GetModule('Localization')

--Dreamseeds
local Dreamseeds = {
    208066, --Small Dreamseed
    208067, --Plump Dreamseed 
    208047 --Gigantic Dreamseed
}
--Currencies
local Currencies = {
    211376, --Seedbloom
    210254, --Dreamsurge Cocoon
    210776 --Lesser Dream Infusion
}

--Containers
local Containers = {
    210872, --Satchel of Dreams
    211414, --Blossoming Dreamtrove
    211389, --Cache of Overblooming Treasures
    210992 --Overflowing Dream Warden Trove
}

local allItems = {
    Dreamseeds,
    Currencies,
    Containers
}

for _, itemList in ipairs(allItems) do
    for _, ItemID in ipairs(itemList) do
        categories:AddItemToCategory(ItemID, "Guardians of the Dream")
    end
end
