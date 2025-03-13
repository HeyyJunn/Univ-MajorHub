package comp;
import java.util.Arrays;

public class compMain {
    public static void main(String[] args) {
        Student[] studs = {
                new Student(14042, "lee"),
                new Student(62028, "ahn"),
                new Student(49064, "kim"),
                new Student(14055, "choi"),
                new Student(29010, "song")
        };

        Arrays.sort(studs); // compareTo()�� �̿��Ͽ� �й��� ����
        print(studs, "id");

        Arrays.sort(studs, Student.CompName); // �̸����� ����
        print(studs, "name");
    }

    public static void print(Student[] studs, String key) {
        System.out.println();
        System.out.println(key + "로 정렬");
        System.out.println("-----------------");
        for (Student s : studs) {
            System.out.println(s.getId() + " " + s.getName());
        }
    }
}

