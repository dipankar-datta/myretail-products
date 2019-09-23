package com.dipankar.myretail.configs;

import com.dipankar.myretail.exceptions.BadClientDataException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class RestExceptionHandler {

    @ExceptionHandler({BadClientDataException.class})
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public void clientExceptions(){}
}
