package com.hy.service;


import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public interface StudentClass {

    @Autowired
    List<com.hy.pojo.StudentClass> getAllStudentClass();
}
