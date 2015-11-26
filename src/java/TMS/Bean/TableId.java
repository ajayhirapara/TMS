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
public class TableId {

    public int getTo_do_listId() {
       to_do_listId++;
        return to_do_listId;
    }

    public void setTo_do_listId(int to_do_listId) {
        this.to_do_listId = to_do_listId;
    }

    public int getCoursesId() {
        coursesId++;
        return coursesId;
    }

    public void setCoursesId(int coursesId) {
        this.coursesId = coursesId;
    }

    public int getMeetingId() {
        meetingId++;
        return meetingId;
    }

    public void setMeetingId(int meetingId) {
        this.meetingId = meetingId;
    }

    public int getPollId() {
        pollId++;
        return pollId;
    }

    public void setPollId(int pollId) {
        this.pollId = pollId;
    }

    public int getProfessorId() {
        professorId++;
        return professorId;
    }

    public void setProfessorId(int professorId) {
        this.professorId = professorId;
    }

    public int getTeamId() {
        teamId++;
        return teamId;
    }

    public void setTeamId(int teamId) {
        this.teamId = teamId;
    }

    public int getCoffId() {
        coffId++;
        return coffId;
    }

    public void setCoffId(int coffId) {
        this.coffId = coffId;
    }

    public int getMessageId() {
        messageId++;
        return messageId;
    }

    public void setMessageId(int messageId) {
        this.messageId = messageId;
    }

    public int getTaskId() {
        taskId++;
        return taskId;
    }

    public void setTaskId(int taskId) {
        this.taskId = taskId;
    }

    public int getMentorId() {
        mentorId++;
        return mentorId;
    }

    public void setMentorId(int mentorId) {
        this.mentorId = mentorId;
    }

    public int getInstituteId() {
        instituteId++;
        return instituteId;
    }

    public void setInstituteId(int instituteId) {
        this.instituteId = instituteId;
    }

    public int getStudentId() {
        studentId++;
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }
    private int studentId;
    private int to_do_listId;

    private int coursesId;
    private int meetingId;
    private int pollId;
    private int professorId;
    private int teamId;
    private int coffId;
    private int messageId;
    private int taskId;
    private int mentorId;
    private int instituteId;

}
