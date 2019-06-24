package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    //  ---------View One Specific Ad---------
    //Ad ViewAd (long id);

    //  ---------Method to Update Ad---------
    //void editAd(Ad ad);
    List<Ad> search(String searchAd);

    void deleteAd(long id);

    List<Ad> showAds(long id);

    //    Object findAdsByCategory(Long categoryId);
    List<Ad> findAdsByCategory(Long id);

    void update(Ad ad);

    Ad findById(Long id);
}
