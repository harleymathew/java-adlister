package com.codeup.adlister.dao;

import com.codeup.adlister.models.Cat_Ad;

public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;
    private static Categories categoriesDao;
    private static Cat_Ads cat_AdsDao;
    private static Config config = new Config();

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }

    public static Categories getCategoriesDao() {
        if (categoriesDao == null) {
            categoriesDao = new MySQLCategoriesDao(config);
        }
        return categoriesDao;
    }

    public static Cat_Ads getCat_AdsDao() {
        if(cat_AdsDao == null) {
            cat_AdsDao = new MySQLCat_AdsDao(config);
        }
        return cat_AdsDao;
    }
}
