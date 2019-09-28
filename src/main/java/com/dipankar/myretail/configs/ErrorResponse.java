package com.dipankar.myretail.configs;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@AllArgsConstructor
public class ErrorResponse {
    private String message;
    private List<String> details;
}
