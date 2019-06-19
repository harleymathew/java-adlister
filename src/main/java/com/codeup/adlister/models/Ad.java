package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;

    public void setId(long id) {
        this.id = id;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    public long getId() {
        return id;
    }

    public long getUserId() {
        return userId;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public Ad(long id, long userId, String title, String description) {
    this.id = id;
    this.userId = userId;
    this.title = title;
    this.title = description;
}

public Ad(long userId, String title, String description) {
    this.userId = userId;
    this.title = title;
    this.description = description;
}




}