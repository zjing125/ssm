package com.jokereven.service;



import com.jokereven.entity.Student;

import java.util.List;

public interface StudentService {

    int addStudent(Student student);
    List<Student> findStudents();
}
