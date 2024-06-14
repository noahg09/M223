package com.axa.warehouse.controller;

import com.axa.warehouse.model.UserProfile;
import com.axa.warehouse.service.UserProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/user")
public class UserProfileController {
    @Autowired
    private UserProfileService userProfileService;

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping("/profile")
    public ResponseEntity<UserProfile> getProfile(Authentication authentication) {
        UserProfile profile = userProfileService
                .getProfileByUsername(authentication.getName());
        return ResponseEntity.ok(profile);
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @PutMapping("/profile")
    @PreAuthorize("@userProfileSecurity.isOwner(authentication, #newProfile.id)")
    public ResponseEntity<UserProfile> updateProfile(
            @RequestBody UserProfile newProfile, Authentication authentication) {
        UserProfile updatedProfile = userProfileService
                .updateProfile(authentication.getName(), newProfile);
        return ResponseEntity.ok(updatedProfile);
    }
}