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
   private int From_id;
   private int To_id;
   private int Friendlist_id;

    public friendlist(int From_id, int To_id, int Friendlist_id) {
        this.From_id = From_id;
        this.To_id = To_id;
        this.Friendlist_id = Friendlist_id;
    }

    public int getFrom_id() {
        return From_id;
    }

    public void setFrom_id(int From_id) {
        this.From_id = From_id;
    }

    public int getTo_id() {
        return To_id;
    }

    public void setTo_id(int To_id) {
        this.To_id = To_id;
    }

    public int getFriendlist_id() {
        return Friendlist_id;
    }

    public void setFriendlist_id(int Friendlist_id) {
        this.Friendlist_id = Friendlist_id;
    }
   
    
}
