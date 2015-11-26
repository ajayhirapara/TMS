/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Dao;

import TMS.Bean.Mentor;

/**
 *
 * @author J mala
 */
public interface MentorDao {
    public boolean Insert(Mentor m1 );
    public boolean Update(Mentor m1);
    public boolean Delete(Mentor m1);
    
}
