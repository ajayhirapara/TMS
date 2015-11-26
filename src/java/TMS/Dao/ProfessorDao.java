/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Dao;

import TMS.Bean.Professor;

/**
 *
 * @author J mala
 */
public interface ProfessorDao {
    public boolean Insert(Professor p1 );
    public boolean Update(Professor p1);
    public boolean Delete(Professor p1);
    public Professor findByEmailId(String emailId);

}
