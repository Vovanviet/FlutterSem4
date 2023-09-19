package com.example.flutterserver;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.LinkedList;
import java.util.List;

@RestController
@RequestMapping("api/place")
public class PlaceController {
    @GetMapping
    public ResponseEntity<?> getAll(){
        List<Place> placeList = new LinkedList<>();
        placeList.add(Place.builder().name("Ha Noi").image("assets/image/hanoi.png").rate(5.0).build());
        placeList.add(Place.builder().name("Sai gon").image("assets/image/saigon.png").rate(5.0).build());
        placeList.add(Place.builder().name("Hoi An").image("assets/image/hoian.png").rate(5.0).build());
        placeList.add(Place.builder().name("Nha Trang").image("assets/image/nhatrang.png").rate(5.0).build());
        return ResponseEntity.ok().body(placeList);
    }
}
