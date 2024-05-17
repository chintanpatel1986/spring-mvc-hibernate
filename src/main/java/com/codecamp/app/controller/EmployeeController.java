package com.codecamp.app.controller;

import com.codecamp.app.model.Employee;
import com.codecamp.app.service.EmployeeService;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/employees")
public class EmployeeController {

    private final EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping("/getEmployees")
    public String getEmployees(Model model) {
        model.addAttribute("employee", new Employee());
        model.addAttribute("employeeList",employeeService.getAllEmployeeList());
        return "employee-form";
    }

    @PostMapping("/insertOrUpdateEmployee")
    public String insertOrUpdateEmployee(@Valid @ModelAttribute("employee")Employee employee, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("employeeList",employeeService.getAllEmployeeList());
            return "employee-form";
        }
        if (employee.getEmployeeId() != 0) {
            employee.setEmployeeId(employee.getEmployeeId());
            employeeService.updateEmployee(employee);
        } else {
            employeeService.addEmployee(employee);
        }
        return "redirect:/employees/getEmployees";
    }


    @GetMapping("/manageEmployee")
    public String manageEmployee(@RequestParam("employeeId")int employeeId, Model model) {
        if (employeeId != 0) {
            model.addAttribute("employee", employeeService.getEmployeeById(employeeId));
            model.addAttribute("employeeList",employeeService.getAllEmployeeList());
        }
        return "employee-form";
    }


    @GetMapping("/deleteEmployee")
    public String deleteEmployee(@RequestParam("employeeId")int employeeId) {
        if (employeeId != 0) {
            employeeService.deleteEmployee(employeeId);
        }
        return "redirect:/employees/getEmployees";
    }
}
