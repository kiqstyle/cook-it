package com.cookit.util.db;

public enum Quantity
{
    ID       ("id"),
    UNI_ID   ("Uni_id"),
    ING_ID   ("Ing_id"),
    REC_ID   ("Rec_id"),
    POS_ID   ("pos_id"),
    QUANTITY ("quantity");

    private String field;
    public static final String TABLE_NAME = "Quantity";

    private Quantity(final String _field)
    {
        this.field = _field;
    }

    @Override
    public String toString()
    {
        return this.field;
    }
}
