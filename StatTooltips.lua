function setClassStatText(class, stat, text)
    _G[class .. "_" .. stat .. "_" .. "TOOLTIP"] = text;
end

statTooltipsFunction = {
    druid = function()
        setClassStatText("DRUID", "INTELLECT",
            "Increases mana points and chance to score a critical hit with spells.\nIncreases the rate at which weapon skills improve.");
    end,

    hunter = function()
        setClassStatText("HUNTER", "AGILITY",
            "Increases melee attack power by 1 and ranged attack power by 2, and improves the chance to score a critical hit with all weapons.\nIncreases armor and chance to dodge attacks.");
        setClassStatText("HUNTER", "INTELLECT",
            "Increases mana points and chance to score a critical hit with spells.\nIncreases the rate at which weapon skills improve.")
    end,

    mage = function()
        setClassStatText("MAGE", "INTELLECT",
            "Increases mana points and chance to score a critical hit with spells.\nIncreases the rate at which weapon skills improve.");
    end,

    paladin = function()
        setClassStatText("PALADIN", "STRENGTH",
            "Increases melee attack power by 2.\nIncreases the amount of damage that can be blocked with a shield.");
        setClassStatText("PALADIN", "INTELLECT",
            "Increases mana points and chance to score a critical hit with spells.\nIncreases the rate at which weapon skills improve.")
    end,

    priest = function()
        setClassStatText("PRIEST", "INTELLECT",
            "Increases mana points and chance to score a critical hit with spells.\nIncreases the rate at which weapon skills improve.")
    end,

    rogue = function()
        setClassStatText("ROGUE", "AGILITY",
            "Increases melee attack power by 1 and ranged attack power by 2, and improves the chance to score a critical hit with all weapons.\nIncreases armor and chance to dodge attacks.");
    end,

    shaman = function()
        setClassStatText("SHAMAN", "STRENGTH",
            "Increases melee attack power by 2.\nIncreases the amount of damage that can be blocked with a shield.");
        setClassStatText("SHAMAN", "Intellect",
            "Increases mana points and chance to score a critical hit with spells.\nIncreases the rate at which weapon skills improve.");
    end,

    warlock = function()
        setClassStatText("WARLOCK", "INTELLECT",
            "Increases mana points and chance to score a critical hit with spells.\nIncreases the rate at which weapon skills improve.");
    end,

    warrior = function()
        setClassStatText("WARRIOR", "STRENGTH",
            "Increases melee attack power by 2.\nIncreases the amount of damage that can be blocked with a shield.");
    end
};

local temp, class = UnitClass("player");
statTooltipsFunction[strlower(class)]();
