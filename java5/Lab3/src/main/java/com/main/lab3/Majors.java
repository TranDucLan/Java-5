package com.main.lab3;

import jakarta.validation.constraints.NotBlank;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Majors {
    @NotBlank(message="Vui lòng chọn chuyên ngành !")
    private String id, name;
}
