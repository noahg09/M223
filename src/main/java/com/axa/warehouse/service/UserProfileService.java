package com.axa.warehouse.service;

import com.axa.warehouse.model.User;
import com.axa.warehouse.model.UserProfile;
import com.axa.warehouse.repository.UserProfileRepository;
import com.axa.warehouse.repository.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserProfileService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserProfileRepository userProfileRepository;

    public UserProfile getProfileByUsername(String username) {
        Optional<User> user = userRepository.findByUsername(username);
        return user.map(User::getUserProfile)
                .orElseThrow(() -> new EntityNotFoundException("No profile found for username: " + username));
    }

    public UserProfile updateProfile(String username, UserProfile newProfile) {
        Optional<User> user = userRepository.findByUsername(username);
        if (user.isPresent()) {
            UserProfile userProfile = user.get().getUserProfile();
            userProfile.setFirstname(newProfile.getFirstname());
            userProfile.setLastname(newProfile.getLastname());
            userProfile.setAddress(newProfile.getAddress());
            userProfile.setProfilepictureurl(newProfile.getProfilepictureurl());
            userProfileRepository.save(userProfile);
            return userProfile;
        }
        throw new EntityNotFoundException("No profile found for username: " + username);
    }
}