/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Bean;

/**
 *
 * @author J mala
 */
public class Message {

    public String getMessage_Id() {
        return message_Id;
    }

    public void setMessage_Id(String message_Id) {
        this.message_Id = message_Id;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getAttachment_Path() {
        return attachment_Path;
    }

    public void setAttachment_Path(String attachment_Path) {
        this.attachment_Path = attachment_Path;
    }
    private String message_Id;
    private String from;
    private String description;
    private String subject;
    private String attachment_Path;
    
}
