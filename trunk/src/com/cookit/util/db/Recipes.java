package com.cookit.util.db;

public enum Recipes
{
    ID       ("id"),
    REC_ID   ("Rec_id"),
    TITLE_EN ("title_en"),
    TITLE_PL ("title_pl"),
    TEXT_EN  ("text_en"),
    TEXT_PL  ("text_pl"),
    CREATED  ("created");

    private String field;
    public static final String TABLE_NAME = "Recipes";

    private Recipes(final String _field)
    {
        this.field = _field;
    }

    @Override
    public String toString()
    {
        return this.field;
    }
}
