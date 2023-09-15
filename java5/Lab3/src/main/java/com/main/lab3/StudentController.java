package com.main.lab3;

import jakarta.servlet.ServletContext;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import java.util.ArrayList;
import java.util.List;

@Controller
public class StudentController {

    @GetMapping("/")
    public String index(Student student, Model model) {
        model.addAttribute("student", student);
        return "validateStudent";
    }

    @RequestMapping(value = "/add-student", method = RequestMethod.POST)
    public String submitStudentDetails(@Valid Student student, Errors errors, Model model) {
        if (null != errors && errors.getErrorCount() > 0) {
            return "validateStudent";
        } else {
            model.addAttribute("successMsg", "Thành Công!");
            return "success";
        }
    }

    @ModelAttribute("majors")
    public List<Majors> getMajors() {
        List<Majors> majors = new ArrayList<>();
//        majors.add(new Majors("APP", "Ứng dụng phần mềm"));
//        majors.add(new Majors("WEB", "Thiết kế trang web"));
//        majors.add(new Majors("MOB", "Lập trình mobile"));
        return majors;
    }
}
