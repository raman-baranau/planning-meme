package com.epam.meme.dto;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Getter
@Setter
public class UserDto {

    private Long id;

    @NotNull(message = "{user.username.notnull}")
    @Pattern(
            regexp = "^(?=.{3,20}$)(?![_])(?!.*[_]{2,})[a-zA-Z0-9_]+(?<![_])$",
            message = "{user.username.pattern}"
    )
    private String username;
    private int countOfBoards;
}
