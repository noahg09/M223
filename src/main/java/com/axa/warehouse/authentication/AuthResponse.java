package com.axa.warehouse.authentication;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
class AuthResponse {
    private final String jwt;
}
