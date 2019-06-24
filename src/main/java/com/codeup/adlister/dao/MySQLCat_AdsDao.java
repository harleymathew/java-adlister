package com.codeup.adlister.dao;

import com.codeup.adlister.models.Cat_Ad;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLCat_AdsDao implements Cat_Ads {
    private Connection connection = null;

    public MySQLCat_AdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public Long insert(Cat_Ad cat_ad) {
        String query = "INSERT INTO cat_ad (cat_id, ad_id) VALUES (?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, cat_ad.getCat_id());
            stmt.setLong(2, cat_ad.getAd_id());
            stmt.executeUpdate();
            return 0L;
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new cat_ad", e);
        }
    }

}
