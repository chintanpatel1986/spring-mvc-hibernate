package org.chintanpatel.app.service;

import org.chintanpatel.app.domain.Employee;

import java.util.List;

public interface EmployeeService {

    void addEmployee(Employee employee);

    List<Employee>getAllEmployeeList();

    Employee findEmployeeById(int employeeId);

    void editEmployee(Employee employee);

    void deleteEmployeeById(int employeeId);
}
