package com.ymp.schoolcreditsystemversion1.util;

import lombok.extern.slf4j.Slf4j;

import java.util.Random;

/**
 * @author: Yoon Myat Phoo
 * @created: 05/02/2023
 * @project: credit-system-version1
 * @package: com.ymp.creditsystem.util
 */

@Slf4j
public class PasswordGenerationUtil {

    public static String generatePassword(){
        String upper = "ABCDEFGHIJKLKMOPQRSTUVWSYZ";
        String lower = "abcdefghijklmnopqrstuvwsyz";
        String num = "123456789";
        String specialCase = "@!#$%&*";
        String combination = upper + lower + specialCase + num;
        int len = 8;
        char[] charPassword = new char[len];
        Random r = new Random();

        for (int i = 0; i < len; i++)
            charPassword[i] = combination.charAt(r.nextInt(combination.length()));

        String password = String.valueOf(charPassword);

        log.info("Generated password is: {}", password);
        return password;
    }
}
