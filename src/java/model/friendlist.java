/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author BaoPhuc
 */
public class friendlist {
    private int friendlist_id;
    private int user_id;
    private String friend_name;
    private String user_name;
    private int status;

    public friendlist(int friendlist_id, int user_id, String friend_name, String user_name, int status) {
        this.friendlist_id = friendlist_id;
        this.user_id = user_id;
        this.friend_name = friend_name;
        this.user_name = user_name;
        this.status = status;
    }

    public int getFriendlist_id() {
        return friendlist_id;
    }

    public void setFriendlist_id(int friendlist_id) {
        this.friendlist_id = friendlist_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getFriend_name() {
        return friend_name;
    }

    public void setFriend_name(String friend_name) {
        this.friend_name = friend_name;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "friendlist{" + "friendlist_id=" + friendlist_id + ", user_id=" + user_id + ", friend_name=" + friend_name + ", user_name=" + user_name + ", status=" + status + '}';
    }
    
}
