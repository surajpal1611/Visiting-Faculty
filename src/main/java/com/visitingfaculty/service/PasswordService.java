package com.visitingfaculty.service;

import org.springframework.stereotype.Service;

import de.mkammerer.argon2.Argon2;
import de.mkammerer.argon2.Argon2Factory;

@Service
public class PasswordService {

    public String encodePassword(String passwordtoEncode) {

        Argon2 argon2 = Argon2Factory.create();

        char[] password = passwordtoEncode.toCharArray();

        String hash = argon2.hash(22, 65536, 1, password);

        return hash;
    }

    public boolean verifyPassword(String hash, String passwordTOVerify) {

        Argon2 argon2 = Argon2Factory.create();

        if (argon2.verify(hash, passwordTOVerify.toCharArray())) {

            return true;

        } else {

            return false;

        }
    }
}
