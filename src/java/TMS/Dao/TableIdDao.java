/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Dao;

import TMS.Bean.TableId;

/**
 *
 * @author J mala
 */
public interface TableIdDao {
    public boolean UPDATE(TableId tableId);
    public TableId GetTableIdDetail();
}
