package com.codecamp.app.repository;

import com.codecamp.app.model.Employee;

import java.util.List;

public interface EmployeeRepository {

    void addEmployee(Employee employee);

    List<Employee> getAllEmployeeList();

    Employee getEmployeeById(int employeeId);

    void updateEmployee(Employee employee);

    void deleteEmployee(int employeeId);
}
