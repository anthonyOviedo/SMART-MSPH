/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Smart_msph.logic;



/**
 *
 * @author anton
 */
public class Complain {
    
    private int id;
    private String description;
    private String state;
    private String employee;
    private String employeeDepartment;
    private int citizen_id;
    private departamento departmentId;
    private String complainDate;
    private Ciudadano citizen;
    public Complain() {
    }

    public Complain(int id, String description, String state, String employee, String employeeDepartment, int citizen_id, departamento departmentId, String complainDate) {
        this.id = id;
        this.description = description;
        this.state = state;
        this.employee = employee;
        this.employeeDepartment = employeeDepartment;
        this.citizen_id = citizen_id;
        this.departmentId = departmentId;
        this.complainDate = complainDate;
    }

    public Complain(int id, String description, String state, String employee, String employeeDepartment, departamento departmentId, String complainDate, Ciudadano citizen) {
        this.id = id;
        this.description = description;
        this.state = state;
        this.employee = employee;
        this.employeeDepartment = employeeDepartment;
        this.departmentId = departmentId;
        this.complainDate = complainDate;
        this.citizen = citizen;
    }

    
    
    
    public departamento getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(departamento departmentId) {
        this.departmentId = departmentId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getEmployee() {
        return employee;
    }

    public void setEmployee(String employee) {
        this.employee = employee;
    }

    public String getEmployeeDepartment() {
        return employeeDepartment;
    }

    public void setEmployeeDepartment(String employeeDepartment) {
        this.employeeDepartment = employeeDepartment;
    }

    public int getCitizen_id() {
        return citizen_id;
    }

    public void setCitizen_id(int citizen_id) {
        this.citizen_id = citizen_id;
    }

    public String getComplainDate() {
        return complainDate;
    }

    public void setComplaintDate(String complainDate) {
        this.complainDate = complainDate;
    }

    public Ciudadano getCitizen() {
        return citizen;
    }

    public void setCitizen(Ciudadano citizen) {
        this.citizen = citizen;
    }
    
    
    
    
    
    
    
    
    
}
