package org.chintanpatel.app.service.implement;

import org.chintanpatel.app.domain.Employee;
import org.chintanpatel.app.repository.EmployeeRepository;
import org.chintanpatel.app.service.EmployeeService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {

    private final EmployeeRepository employeeRepository;

    public EmployeeServiceImpl(EmployeeRepository employeeRepository) {
        this.employeeRepository = employeeRepository;
    }

    @Override
    @Transactional
    public void addEmployee(Employee employee) {
        employeeRepository.addEmployee(employee);
    }

    @Override
    @Transactional
    public List<Employee> getAllEmployeeList() {
        return employeeRepository.getAllEmployeeList();
    }

    @Override
    @Transactional
    public Employee findEmployeeById(int employeeId) {
        return employeeRepository.findEmployeeById(employeeId);
    }

    @Override
    @Transactional
    public void editEmployee(Employee employee) {
        employeeRepository.editEmployee(employee);
    }

    @Override
    @Transactional
    public void deleteEmployeeById(int employeeId) {
        employeeRepository.deleteEmployeeById(employeeId);
    }
}
