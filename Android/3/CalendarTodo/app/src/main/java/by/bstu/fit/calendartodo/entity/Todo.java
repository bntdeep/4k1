package by.bstu.fit.calendartodo.entity;

import java.util.Date;

/**
 * Created by BNT on 9/22/2017.
 */

public class Todo {
    private String todoText;
    private Date todoDate;

    public Todo(String todoText, Date todoDate) {
        this.todoText = todoText;
        this.todoDate = todoDate;
    }

    public String getTodoText() {
        return todoText;
    }

    public Date getTodoDate() {
        return todoDate;
    }
}
