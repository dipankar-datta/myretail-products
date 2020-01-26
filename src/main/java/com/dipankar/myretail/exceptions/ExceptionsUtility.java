package com.dipankar.myretail.exceptions;

public class ExceptionsUtility {

    public static void exceptionIfIdExistsForCreate(Object id) {
        if (id != null) throw new BadClientDataException("Cannot create resource with identifier");
    }

    public static void exceptionIfIdDoesntExistForUpdate(Object id) {
        if (id != null) throw new BadClientDataException("Cannot update resource without identifier");
    }
}
