package com.example.flutterserver;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Place {
    private String name;
    private String image;
    private Double rate;
}
