package com.codecamp.app.service;

import com.codecamp.app.model.Employee;

import java.util.List;

public interface EmployeeService {

    void addEmployee(Employee employee);

    List<Employee> getAllEmployeeList();

    Employee getEmployeeById(int employeeId);

    void updateEmployee(Employee employee);

    void deleteEmployee(int employeeId);
}
