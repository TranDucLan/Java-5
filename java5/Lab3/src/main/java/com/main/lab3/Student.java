package com.main.lab3;

import jakarta.validation.constraints.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Student {
    @NotBlank(message="Không được để trống họ và tên !")
    private String name;

    @NotBlank(message = "Không được bỏ trống email")
    @Email(message = "Email không hợp lệ!")
    private String email;

    @NotNull(message="Không được để trống điểm !")
    @DecimalMin(value="0", message="Điểm không hợp lệ !")
    @DecimalMax(value="10", message="Điểm không hợp lệ !")
    private Double mark;

    private boolean gender;
}
