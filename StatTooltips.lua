function setClassStatText(class, stat, text)
    _G[class .. "_" .. stat .. "_" .. "TOOLTIP"] = text;
end

statTooltipsFunction = {
    druid = function()
        local class = "DRUID";
        setClassStatText(class, "INTELLECT",
            "Increases mana points and chance to score a critical hit with spells.\nIncreases the rate at which weapon skills improve.");
    end,

    hunter = function()
        local class = "HUNTER";
        setClassStatText(class, "AGILITY",
            "Increases melee attack power by 1 and ranged attack power by 2, and improves the chance to score a critical hit with all weapons.\nIncreases armor and chance to dodge attacks.");
        setClassStatText(class, "INTELLECT",
            "Increases mana points and chance to score a critical hit with spells.\nIncreases the rate at which weapon skills improve.")
    end,

    mage = function()
        local class = "MAGE";
        setClassStatText(class, "INTELLECT",
            "Increases mana points and chance to score a critical hit with spells.\nIncreases the rate at which weapon skills improve.");
    end,

    paladin = function()
        local class = "PALADIN";
        setClassStatText(class, "STRENGTH",
            "Increases melee attack power by 2.\nIncreases the amount of damage that can be blocked with a shield.");
        setClassStatText(class, "INTELLECT",
            "Increases mana points and chance to score a critical hit with spells.\nIncreases the rate at which weapon skills improve.")
    end,

    priest = function()
        local class = "PRIEST";
        setClassStatText(class, "INTELLECT",
            "Increases mana points and chance to score a critical hit with spells.\nIncreases the rate at which weapon skills improve.")
    end,

    rogue = function()
        local class = "ROGUE";
        setClassStatText(class, "AGILITY",
            "Increases melee attack power by 1 and ranged attack power by 2, and improves the chance to score a critical hit with all weapons.\nIncreases armor and chance to dodge attacks.");
    end,

    shaman = function()
        local class = "SHAMAN";
        setClassStatText(class, "STRENGTH",
            "Increases melee attack power by 2.\nIncreases the amount of damage that can be blocked with a shield.");
        setClassStatText(class, "Intellect",
            "Increases mana points and chance to score a critical hit with spells.\nIncreases the rate at which weapon skills improve.");
    end,

    warlock = function()
        local class = "WARLOCK";
        setClassStatText(class, "INTELLECT",
            "Increases mana points and chance to score a critical hit with spells.\nIncreases the rate at which weapon skills improve.");
    end,

    warrior = function()
        local class = "WARRIOR";
        setClassStatText(class, "STRENGTH",
            "Increases melee attack power by 2.\nIncreases the amount of damage that can be blocked with a shield.");
    end
};

local temp, class = UnitClass("player");
statTooltipsFunction[strlower(class)]();
