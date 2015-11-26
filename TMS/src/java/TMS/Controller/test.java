/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Controller;

/**
 *
 * @author J mala
 */
public class test {
    public String print(){
        return PropertiesCache.getCoursesId();
    }
    public static void main(String[] args) {
        test t=new test();
        System.out.println(t.print());
    }
}
