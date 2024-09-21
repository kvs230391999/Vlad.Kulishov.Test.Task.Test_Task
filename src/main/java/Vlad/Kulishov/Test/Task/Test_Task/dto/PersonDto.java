package Vlad.Kulishov.Test.Task.Test_Task.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import Vlad.Kulishov.Test.Task.Test_Task.entity.Role;

import jakarta.persistence.*;
import java.util.Collection;

@Data
@AllArgsConstructor
public class PersonDto {

    private Long id;
    private String username;
    private String reviews;
    private String rating;
}
