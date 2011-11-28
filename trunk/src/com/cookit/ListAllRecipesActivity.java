package com.cookit;

import java.util.ArrayList;
import java.util.List;

import android.app.ListActivity;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.cookit.util.db.DatabaseOpenHelper;

public class ListAllRecipesActivity extends ListActivity
{
    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);

        final DatabaseOpenHelper dbHelper = new DatabaseOpenHelper(this.getApplicationContext());
        final SQLiteDatabase db = dbHelper.getReadableDatabase();
        final Cursor cur = db.query("Recipes",
                                    new String[]{ "title_pl" },
                                    null, null, null, null, null);

        final List<String> recipesList = new ArrayList<String>();

        do
        {
            cur.moveToNext();
            recipesList.add(cur.getString(0));
        } while (!cur.isLast());

        this.setListAdapter(
                new ArrayAdapter<String>(
                        this,
                        R.layout.listallrecipesitem,
//                        this.getResources().getStringArray(R.array.array_ListAllRecipesActivity_recipesList)));
                        recipesList.toArray(new String[recipesList.size()])));

        ListView lv = this.getListView();
        lv.setTextFilterEnabled(true);

        lv.setOnItemClickListener(new OnItemClickListener()
        {
            public void onItemClick(AdapterView<?> parent, View view, int position, long id)
            {
                // When clicked, show a toast with the TextView text
                Toast.makeText(getApplicationContext(), ((TextView) view).getText(), Toast.LENGTH_SHORT).show();
            }
        });

    }
}
