package com.hy.service.impl;


import com.hy.dao.StudentClassMapper;
import com.hy.service.StudentClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentClassImpl implements StudentClass {

    @Autowired
    private StudentClassMapper studentClassMapper;

    @Override
    public List<com.hy.pojo.StudentClass> getAllStudentClass() {
        return studentClassMapper.selectAll();
    }
}
