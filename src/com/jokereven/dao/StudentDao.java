package com.jokereven.dao;


import com.jokereven.entity.Student;

import java.util.List;

public interface StudentDao {

    int insertStudent(Student student);

    List<Student> selectStudents();

}
