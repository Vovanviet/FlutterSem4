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
        placeList.add(Place.builder().name("Hà Nội").image("assets/images/hanoi.png").build());
        placeList.add(Place.builder().name("Sài gòn").image("assets/images/saigon.png").build());
        placeList.add(Place.builder().name("Hội An").image("assets/images/hoian.png").build());
        placeList.add(Place.builder().name("Nha Trang").image("assets/images/nhatrang.png").build());
        return ResponseEntity.ok().body(placeList);
    }
}
