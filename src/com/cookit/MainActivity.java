package com.cookit;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.setContentView(R.layout.main);
    }

    public void listAllRecipes(View view)
    {
        final Intent intent = new Intent(this.getApplicationContext(), ListAllRecipesActivity.class);

        this.startActivity(intent);
    }
}