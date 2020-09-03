package by.bstu.fit.calendartodo;

import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import android.support.annotation.RequiresApi;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.CalendarView;
import android.widget.EditText;
import android.widget.Toast;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

public class MainActivity extends AppCompatActivity {

    private final String fileWithTodos = "todos";
    private String selectedDate = null;

    private  EditText todoEditText;
    private   CalendarView calendar;

    private Map<String, String> todos = new HashMap<>();

    @RequiresApi(api = Build.VERSION_CODES.HONEYCOMB)
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        todoEditText = (EditText) findViewById(R.id.todoText);
        calendar = (CalendarView) findViewById(R.id.calendarView);

        calendar.setOnDateChangeListener((view, year, month, dayOfMonth) -> {
            selectedDate = year + "-" + month + "-" + dayOfMonth;

            if (todos.containsKey(selectedDate)) {
                todoEditText.setText(todos.get(selectedDate));
            } else {
                todoEditText.setText("");
            }
        });
        restoreTodosFromFile();
    }

    @Override
    public void onSaveInstanceState(Bundle outState, PersistableBundle outPersistentState) {
        super.onSaveInstanceState(outState, outPersistentState);
        String todosJSON = new Gson().toJson(todos);
        saveTodosToFile(todosJSON);
    }

    @Override
    protected void onRestoreInstanceState(Bundle savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);
        restoreTodosFromFile();
    }

    @Override
    protected void onPause() {
        super.onPause();
        String todosJSON = new Gson().toJson(todos);
        saveTodosToFile(todosJSON);
    }

    public void onSaveButton(View veiw) {
        todos.put(selectedDate, todoEditText.getText().toString());
        Toast.makeText(getApplicationContext(), todoEditText.getText() + " saved", Toast.LENGTH_SHORT).show();
    }

    public void onDeleteButton(View veiw) {
        if (todos.containsKey(selectedDate)) {
            Toast.makeText(getApplicationContext(), todos.get(selectedDate) + " deleted", Toast.LENGTH_SHORT).show();
            todos.remove(selectedDate);
            todoEditText.setText("");
        }
    }

    private void restoreTodosFromFile() {
        FileInputStream fis = null;
        try {
            fis = this.openFileInput(fileWithTodos);
            ObjectInputStream is = new ObjectInputStream(fis);
            String readedTodos = (String) is.readObject();

            Type type = new TypeToken<Map<String, String>>() {}.getType();
            todos = new Gson().fromJson(readedTodos, type);

            is.close();
            fis.close();

            System.out.println(readedTodos);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void saveTodosToFile(String todosJSON) {
        try {
            FileOutputStream fos = this.openFileOutput(fileWithTodos, Context.MODE_PRIVATE);
            ObjectOutputStream os = null;
            os = new ObjectOutputStream(fos);
            os.writeObject(todosJSON);
            os.close();
            fos.close();
            System.out.println("Writed " + todosJSON);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
