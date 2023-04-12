package com.hy.dao;

import com.hy.pojo.StudentClass;
import java.util.List;

public interface StudentClassMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(StudentClass record);

    StudentClass selectByPrimaryKey(Integer id);

    List<StudentClass> selectAll();

    int updateByPrimaryKey(StudentClass record);
}