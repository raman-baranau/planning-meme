package com.epam.meme.exceptionprocessing;

import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.ext.ExceptionMapper;
import javax.ws.rs.ext.Provider;
import java.util.ArrayList;
import java.util.List;

@Provider
@Produces(MediaType.APPLICATION_JSON)
public class ConstraintViolationExceptionMapper
        implements ExceptionMapper<ConstraintViolationException> {

    @Override
    public Response toResponse(ConstraintViolationException exception) {

        List<String> messages = new ArrayList<>();
        for (ConstraintViolation<?> violation : exception.getConstraintViolations()) {
            messages.add(violation.getMessage());
        }
        ExceptionInfo exceptionInfo = new ExceptionInfo();
        exceptionInfo.setMessages(messages.toArray(new String[] {}));
        exceptionInfo.setStatus(5);

        return Response.status(400)
                .entity(exceptionInfo)
                .type(MediaType.APPLICATION_JSON)
                .build();
    }
}