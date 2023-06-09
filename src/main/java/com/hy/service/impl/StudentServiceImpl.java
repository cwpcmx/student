package com.hy.service.impl;

import com.hy.dao.StudentMapper;
import com.hy.pojo.Student;
import com.hy.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;


    @Override
    public List<Student> getAll() {
        return studentMapper.selectAll();
    }

    @Override
    public int addStudent(Student student ) {
        return studentMapper.addStudent(student);
    }


    @Override
    public Student getStudent(Integer id) {
        return studentMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return studentMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int updateStudent(Student students) {
        return studentMapper.updateStudent(students);
    }



}
