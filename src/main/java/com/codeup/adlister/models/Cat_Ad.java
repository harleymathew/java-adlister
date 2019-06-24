package com.codeup.adlister.models;

public class Cat_Ad {
    private long cat_id;
    private long ad_id;

    public Cat_Ad(long cat_id, long ad_id) {
        this.cat_id = cat_id;
        this.ad_id = ad_id;
    }

    public long getCat_id() {
        return cat_id;
    }

    public void setCat_id(long cat_id) {
        this.cat_id = cat_id;
    }

    public long getAd_id() {
        return ad_id;
    }

    public void setAd_id(long ad_id) {
        this.ad_id = ad_id;
    }
}
