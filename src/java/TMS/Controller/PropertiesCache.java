/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author J mala
 */
package TMS.Controller;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Properties;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PropertiesCache {

    final Properties configProp = new Properties();
    OutputStream out;
    InputStream in;

    private PropertiesCache() {
        try {
            //Private constructor to restrict new instances
            in = new FileInputStream("TableId.properties");
        } catch (FileNotFoundException ex) {
            Logger.getLogger(PropertiesCache.class.getName()).log(Level.SEVERE, null, ex);
        }

        //System.out.println("Read all properties from file properties File");
        try {
            configProp.load(in);
            in.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

  
       private static final PropertiesCache INSTANCE = new PropertiesCache();
    

    public static PropertiesCache getInstance() {
        return INSTANCE;
    }

    public String getProperty(String key) {
        return configProp.getProperty(key);
    }

    public Set<String> getAllPropertyNames() {
        return configProp.stringPropertyNames();
    }

    public boolean containsKey(String key) {
        return configProp.containsKey(key);
    }

    public void setProperty(String key, String value) {

        try {
            in.close();
            out = new FileOutputStream("TableId.properties");
            configProp.setProperty(key, value);

            configProp.store(out, "Store Properties Cash Success");
            //System.out.println("Store Properties Cash Success");
            out.close();
        } catch (IOException ex) {
            ex.printStackTrace();
        }

    }

    public static String getStudentId() {
        PropertiesCache.getInstance().setProperty("studentId", Integer.parseInt(PropertiesCache.getInstance().getProperty("studentId")) + 1 + "");
        return "st"+PropertiesCache.getInstance().getProperty("studentId");
    }

    public static String getProfessorId() {
        PropertiesCache.getInstance().setProperty("professorId", Integer.parseInt(PropertiesCache.getInstance().getProperty("professorId")) + 1 + "");
        return "pro"+PropertiesCache.getInstance().getProperty("professorId");
    }

    public static String getMentorId() {
        PropertiesCache.getInstance().setProperty("mentorId", Integer.parseInt(PropertiesCache.getInstance().getProperty("mentorId")) + 1 + "");
        return PropertiesCache.getInstance().getProperty("mentorId");
    }

    public static String getCoursesId() {
        PropertiesCache.getInstance().setProperty("coursesId", Integer.parseInt(PropertiesCache.getInstance().getProperty("coursesId")) + 1 + "");
        return "co"+PropertiesCache.getInstance().getProperty("coursesId");
    }

    public static String getTeamId() {
        PropertiesCache.getInstance().setProperty("teamId", Integer.parseInt(PropertiesCache.getInstance().getProperty("teamId")) + 1 + "");
        return "team"+PropertiesCache.getInstance().getProperty("teamId");
    }

    public static String getCoffId() {
        PropertiesCache.getInstance().setProperty("coffId", Integer.parseInt(PropertiesCache.getInstance().getProperty("coffId")) + 1 + "");
        return "coff"+PropertiesCache.getInstance().getProperty("coffId");
    }

    public static String getInstituteId() {
        PropertiesCache.getInstance().setProperty("instituteId", Integer.parseInt(PropertiesCache.getInstance().getProperty("instituteId")) + 1 + "");
        return "ïnst"+PropertiesCache.getInstance().getProperty("instituteId");
    }

    public static String getMeetingId() {
        PropertiesCache.getInstance().setProperty("meetingId", Integer.parseInt(PropertiesCache.getInstance().getProperty("meetingId")) + 1 + "");
        return "meeting"+PropertiesCache.getInstance().getProperty("meetingId");
    }

    public static String getMessageId() {
        PropertiesCache.getInstance().setProperty("messageId", Integer.parseInt(PropertiesCache.getInstance().getProperty("messageId")) + 1 + "");
        return "message"+PropertiesCache.getInstance().getProperty("messageId");
    }

    public static String getPollId() {
        PropertiesCache.getInstance().setProperty("pollId", Integer.parseInt(PropertiesCache.getInstance().getProperty("pollId")) + 1 + "");
        return "poll"+PropertiesCache.getInstance().getProperty("pollId");
    }

    public static String getTaskId() {
        PropertiesCache.getInstance().setProperty("taskId", Integer.parseInt(PropertiesCache.getInstance().getProperty("taskId")) + 1 + "");
        return "task"+PropertiesCache.getInstance().getProperty("taskId");
    }

    public static String getTo_Do_ListId() {
        PropertiesCache.getInstance().setProperty("to_do_listId", Integer.parseInt(PropertiesCache.getInstance().getProperty("to_do_listId")) + 1 + "");
        return "to_do_list"+PropertiesCache.getInstance().getProperty("to_do_listId");
    }

    public  static void main(String[] args) {

        System.out.println(PropertiesCache.getInstance().getProperty("studentId"));
//         PropertiesCache.getInstance().setProperty("studentId",Integer.parseInt( PropertiesCache.getInstance().getProperty("studentId"))+1+"");
//       PropertiesCache.getInstance().setProperty("studentId","1" );
//       PropertiesCache.getInstance().setProperty("professorId","1" );
//       PropertiesCache.getInstance().setProperty("mentorId","1" );
//       PropertiesCache.getInstance().setProperty("coursesId", "1");
//       PropertiesCache.getInstance().setProperty("teamId", "1");
//       PropertiesCache.getInstance().setProperty("coffId", "1");
//       PropertiesCache.getInstance().setProperty("instituteId", "1");
//       PropertiesCache.getInstance().setProperty("meetingId", "1");
//       PropertiesCache.getInstance().setProperty("messageId", "1");
//       PropertiesCache.getInstance().setProperty("pollId", "1");
//       PropertiesCache.getInstance().setProperty("taskId", "1");
//       PropertiesCache.getInstance().setProperty("to_do_listId", "1");
     
      
       

        System.out.println(PropertiesCache.getInstance().getAllPropertyNames());
        System.out.println(PropertiesCache.getInstance().getProperty("studentId"));
        System.out.println(PropertiesCache.getInstance().getProperty("professorId"));

    }
}
