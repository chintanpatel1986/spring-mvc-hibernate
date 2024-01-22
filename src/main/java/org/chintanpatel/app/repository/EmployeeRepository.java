package org.chintanpatel.app.repository;

import org.chintanpatel.app.domain.Employee;

import java.util.List;

public interface EmployeeRepository {

    void addEmployee(Employee employee);

    List<Employee>getAllEmployeeList();

    Employee findEmployeeById(int employeeId);

    void editEmployee(Employee employee);

    void deleteEmployeeById(int employeeId);
}
