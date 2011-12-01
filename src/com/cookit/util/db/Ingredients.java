package com.cookit.util.db;

public enum Ingredients
{
    ID      ("id"),
    KIN_ID  ("Kin_id"),
    NAME_EN ("name_en"),
    NAME_PL ("name_pl"),
    DESC_EN ("desc_en"),
    DESC_PL ("desc_pl");

    private String field;
    public static final String TABLE_NAME = "Ingredients";

    private Ingredients(final String _field)
    {
        this.field = _field;
    }

    @Override
    public String toString()
    {
        return this.field;
    }
}
