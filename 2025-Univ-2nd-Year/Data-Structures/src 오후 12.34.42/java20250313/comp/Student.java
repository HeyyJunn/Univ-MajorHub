package comp;
import java.util.ArrayList;
import java.util.Comparator;

public class Student implements Comparable<Student> {

    public static Comparator<Student> CompName = new WithName();
    protected int id;
    String name;

    public Student(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() { return id; }
    public String getName() { return name; }

    public int compareTo(Student o) {
        return this.id - o.id;
    }
    public static class WithName implements Comparator<Student> {
        @Override
        public int compare(Student o1, Student o2) {
            return o1.name.compareTo(o2.name);
        }
    }
}
