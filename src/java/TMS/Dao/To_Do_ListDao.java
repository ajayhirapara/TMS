/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Dao;

import TMS.Bean.To_Do_List;
import java.util.ArrayList;

/**
 *
 * @author J mala
 */
public interface To_Do_ListDao {
 public boolean Insert(To_Do_List to_Do_List);
 public boolean  Delete(To_Do_List to_Do_List);
 public ArrayList<To_Do_List> To_Do_List_OF_type(String Id);
}
