package com.cookit.util.db;

public enum Units
{
    ID              ("id"),
    DESC_EN         ("desc_en"),
    DESC_PL         ("desc_pl"),
    NAME_EN         ("name_en"),
    NAME_PL         ("name_pl"),
    ABBREVIATION_EN ("abbreviation_en"),
    ABBREVIATION_PL ("abbreviation_pl");


    private String field;
    public static final String TABLE_NAME = "Units";

    private Units(final String _field)
    {
        this.field = _field;
    }

    @Override
    public String toString()
    {
        return this.field;
    }
}
