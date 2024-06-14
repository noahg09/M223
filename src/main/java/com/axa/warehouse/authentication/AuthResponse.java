package com.axa.warehouse.authentication;

import lombok.Data;
import lombok.AllArgsConstructor;

@Data
@AllArgsConstructor
class AuthResponse {
    private final String jwt;
}
