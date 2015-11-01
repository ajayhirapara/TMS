/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Dao;

import TMS.Bean.Login;

/**
 *
 * @author J mala
 */
public interface LoginDAO {
    public boolean Insert(Login l1 );
    public boolean Update(Login l1);
    public boolean Delete(Login l1);
    public boolean Authentication(Login l1);
 }
