local strMainStatTooltip =
    "Increases melee attack power by 2.\nIncreases the amount of damage that can be blocked with a shield.";
local agiMainStatTooltip =
    "Increases melee attack power by 1\nIncreases ranged attack power by 2.\nIncreases crit chance.\nIncreases armor by 2.\nIncreases dodge chance.";
local intMainStatTooltip =
    "Increases mana by 15.\nIncreases spell crit chance.\nIncreases the rate at which weapon skills improve.";
local nonManaSpiritTooltip = "Increases health regeneration rates.";

local setClassStatText = function(class, stat, text)
    _G[class .. "_" .. stat .. "_" .. "TOOLTIP"] = text;
end

local statTooltipsDefault = function()
    _G["DEFAULT" .. "_" .. "STRENGTH" .. "_" .. "TOOLTIP"] = "Increases melee attack power by 1.";
    _G["DEFAULT" .. "_" .. "AGILITY" .. "_" .. "TOOLTIP"] =
        "Increases crit chance.\nIncreases armor by 2.\nIncreases dodge chance.";
    _G["DEFAULT" .. "_" .. "STAMINA" .. "_" .. "TOOLTIP"] = "Increases health by 10.";
    _G["DEFAULT" .. "_" .. "INTELLECT" .. "_" .. "TOOLTIP"] = "Increases the rate at which weapon skills improve";
    _G["DEFAULT" .. "_" .. "SPIRIT" .. "_" .. "TOOLTIP"] = "Increases health and mana regeneration rates";
end

local statTooltipsClass = {
    druid = function()
        local class = "DRUID";
        setClassStatText(class, "INTELLECT", intMainStatTooltip);
    end,

    hunter = function()
        local class = "HUNTER";
        setClassStatText(class, "AGILITY", agiMainStatTooltip);
        setClassStatText(class, "INTELLECT", intMainStatTooltip);
    end,

    mage = function()
        local class = "MAGE";
        setClassStatText(class, "INTELLECT", intMainStatTooltip);
    end,

    paladin = function()
        local class = "PALADIN";
        setClassStatText(class, "STRENGTH", strMainStatTooltip);
        setClassStatText(class, "INTELLECT", intMainStatTooltip)
    end,

    priest = function()
        local class = "PRIEST";
        setClassStatText(class, "INTELLECT", intMainStatTooltip)
    end,

    rogue = function()
        local class = "ROGUE";
        setClassStatText(class, "AGILITY", agiMainStatTooltip);
        setClassStatText(class, "SPIRIT", nonManaSpiritTooltip);
    end,

    shaman = function()
        local class = "SHAMAN";
        setClassStatText(class, "STRENGTH", strMainStatTooltip);
        setClassStatText(class, "Intellect", intMainStatTooltip);
    end,

    warlock = function()
        local class = "WARLOCK";
        setClassStatText(class, "INTELLECT", intMainStatTooltip);
    end,

    warrior = function()
        local class = "WARRIOR";
        setClassStatText(class, "STRENGTH", strMainStatTooltip);
        setClassStatText(class, "SPIRIT", nonManaSpiritTooltip);
    end
};

statTooltipsDefault();
local temp, class = UnitClass("player");
statTooltipsClass[strlower(class)]();
