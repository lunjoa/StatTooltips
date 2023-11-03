local strMainStatTooltip =
    "Increases melee attack power by 2.\nIncreases the amount of damage that can be blocked with a shield.";
local agiMainStatTooltip =
    "Increases melee attack power by 1\nIncreases ranged attack power by 2.\nIncreases crit chance.\nIncreases armor by 2.\nIncreases dodge chance.";
local intMainStatTooltip =
    "Increases mana by 15.\nIncreases spell crit chance.\nIncreases the rate at which weapon skills improve.";

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
        setClassStatText(class, "SPIRIT",
            "Increases health regeneration by 9% of Spirit per 2 sec when not in combat.\nIncreases mana regeneration by ~22.2% of Spirit per 2 sec when not casting.")
    end,

    hunter = function()
        local class = "HUNTER";
        setClassStatText(class, "AGILITY", agiMainStatTooltip);
        setClassStatText(class, "INTELLECT", intMainStatTooltip);
        setClassStatText(class, "SPIRIT",
            "Increases health regeneration by 25% of Spirit per 2 sec when not in combat.\nIncreases mana regeneration by 20% of Spirit per 2 sec when not casting.")
    end,

    mage = function()
        local class = "MAGE";
        setClassStatText(class, "INTELLECT", intMainStatTooltip);
        setClassStatText(class, "SPIRIT",
            "Increases health regeneration by 10% of Spirit per 2 sec when not in combat.\nIncreases mana regeneration by 25% of Spirit per 2 sec when not casting.")
    end,

    paladin = function()
        local class = "PALADIN";
        setClassStatText(class, "STRENGTH", strMainStatTooltip);
        setClassStatText(class, "INTELLECT", intMainStatTooltip)
        setClassStatText(class, "SPIRIT",
            "Increases health regeneration by 25% of Spirit per 2 sec when not in combat.\nIncreases mana regeneration by 20% of Spirit per 2 sec when not casting.")
    end,

    priest = function()
        local class = "PRIEST";
        setClassStatText(class, "INTELLECT", intMainStatTooltip)
        setClassStatText(class, "SPIRIT",
            "Increases health regeneration by 10% of Spirit per 2 sec when not in combat.\nIncreases mana regeneration by 25% of Spirit per 2 sec when not casting.")
    end,

    rogue = function()
        local class = "ROGUE";
        setClassStatText(class, "AGILITY", agiMainStatTooltip);
        setClassStatText(class, "SPIRIT", "Increases health regeneration by 50% of Spirit per 2 sec when not in combat.")
    end,

    shaman = function()
        local class = "SHAMAN";
        setClassStatText(class, "STRENGTH", strMainStatTooltip);
        setClassStatText(class, "Intellect", intMainStatTooltip);
        setClassStatText(class, "SPIRIT",
            "Increases health regeneration by 11% of Spirit per 2 sec when not in combat.\nIncreases mana regeneration by 20% of Spirit per 2 sec when not casting.")
    end,

    warlock = function()
        local class = "WARLOCK";
        setClassStatText(class, "INTELLECT", intMainStatTooltip);
        setClassStatText(class, "SPIRIT",
            "Increases health regeneration by 7% of Spirit per 2 sec when not in combat.\nIncreases mana regeneration by 20% of Spirit per 2 sec when not casting.")
    end,

    warrior = function()
        local class = "WARRIOR";
        setClassStatText(class, "STRENGTH", strMainStatTooltip);
        setClassStatText(class, "AGILITY",
            "Increases ranged attack power by 2.\nIncreases crit chance.\nIncreases armor by 2.\nIncreases dodge chance.");
        setClassStatText(class, "SPIRIT", "Increases health regeneration by 80% of Spirit per 2 sec when not in combat.")
    end
};

statTooltipsDefault();
local temp, class = UnitClass("player");
statTooltipsClass[strlower(class)]();
