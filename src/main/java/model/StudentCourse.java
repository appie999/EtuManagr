package model;

public class StudentCourse {

    private int studentId;
    private int studentName;
    private int courseId;
    private String courseName;

    public int getStudentId() {
        return studentId;
    }

    public static void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public int getStudentName() {
        return studentName;
    }

    public void setStudentName(int studentName) {
        this.studentName = studentName;
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }
}
