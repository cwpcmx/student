package com.hy.pojo;

import lombok.Data;

@Data
public class Student {
    private Integer id;

    private String name;

    private String gender;

    private String idCard;

    private String phone;

    private String province;

    private String city;

    private String county;

    private String notes;

    private Integer coId;

    private Integer clId;

    private StudentClass studentClass;

    private Course course;


}