package com.cookit.util.db;

public enum Kind
{
    ID      ("id"),
    KIN_ID  ("Kin_id"),
    KIND_EN ("kind_en"),
    KIND_PL ("kind_pl"),
    DESC_EN ("desc_en"),
    DESC_PL ("desc_pl");

    private String field;
    public static final String TABLE_NAME = "Kind";

    private Kind(final String _field)
    {
        this.field = _field;
    }

    @Override
    public String toString()
    {
        return this.field;
    }
}
