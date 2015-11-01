/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Dao;

import TMS.Bean.Student;

/**
 *
 * @author J mala
 */
public interface StudentDao {
    
    public boolean Insert(Student s1 );
    public boolean Update(Student s1);
    public boolean Delete(Student s1);
    
}
