package com.dipankar.myretail.configs;

import com.dipankar.myretail.exceptions.CustomException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;

import javax.validation.ConstraintViolationException;
import java.util.ArrayList;
import java.util.List;

@ControllerAdvice
public class CustomRestExceptionHandler {

    @ExceptionHandler(EmptyResultDataAccessException.class)
    public final ResponseEntity<Object> emptyResultDataAccessExceptionHandler(
            EmptyResultDataAccessException ex, WebRequest request) {
        return new ResponseEntity("Resource not found", HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @ExceptionHandler(CustomException.class)
    public final ResponseEntity<Object> emptyResultDataAccessExceptionHandler(
            CustomException ex, WebRequest request) {
        return new ResponseEntity(ex.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @ExceptionHandler(ConstraintViolationException.class)
    public final ResponseEntity<Object> constraintViolationExceptionHandler(
            ConstraintViolationException ex, WebRequest request) {
        List<String> errorMessages = new ArrayList<>();
        ex.getConstraintViolations()
                .forEach(constraintViolation -> {errorMessages.add(constraintViolation.getMessage());});
        ErrorResponse errorResponse = new ErrorResponse("Validation Error", errorMessages);
        return new ResponseEntity(errorResponse, HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public final ResponseEntity<Object> methodArgumentNotValidExceptionHandler(
            MethodArgumentNotValidException ex, WebRequest request) {
        List<String> errorMessages = new ArrayList<>();
        ex.getBindingResult().getFieldErrors()
                .forEach(constraintViolation -> {errorMessages.add(constraintViolation.getDefaultMessage());});
        ErrorResponse errorResponse = new ErrorResponse("Validation Error", errorMessages);
        return new ResponseEntity(errorResponse, HttpStatus.BAD_REQUEST);
    }

}
