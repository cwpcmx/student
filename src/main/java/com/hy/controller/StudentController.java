package com.hy.controller;


import com.hy.pojo.Student;
import com.hy.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping("/allStudent")
    public String list(Model model) {
        List<Student> list = studentService.getAll();
        model.addAttribute("list", list);
        return "allStudent";
    }

    @RequestMapping("/toAddStudent")
    public String toAddPaper() {
        return "addStudent";
    }

    @RequestMapping("/addStudent")
    public String addPaper(Student students) {
        studentService.addStudent(students);
        return "redirect:/student/allStudent";
    }

    @RequestMapping("/toUpdateStudent")
    public String toUpdateStudent(Model model, int id) {
        Student students = studentService.getStudent(id);
        model.addAttribute("student",students );
        return "updateStudent";
    }

    @RequestMapping("/updateStudent")
    public String updateStudent(Model model, Student student) {
        studentService.updateStudent(student);
        int i = studentService.updateStudent(student);
     /*   model.addAttribute("students", students);*/
        return "redirect:/student/allStudent";
    }

    @RequestMapping("/del/{studentId}")
    public String deleteStudent(@PathVariable("studentId") int id) {
        studentService.deleteByPrimaryKey(id);
        return "redirect:/student/allStudent";
    }
}
