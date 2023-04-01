package com.ymp.schoolcreditsystemversion1.util;
/**
 * @author: Yoon Myat Phoo
 * @created: 05/11/2022
 * @project: credit-system-version1
 * @package: com.ymp.creditsystem.model.util
 */
public class ValidationUtil {

    public static boolean isValidString(String value) {
        if (value == null || value.trim().equals(""))
            return false;
        return true;
    }
}
