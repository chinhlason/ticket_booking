package com.example.demo.dto.res;

import com.example.demo.model.Seats;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Builder;
import lombok.Data;

import java.util.ArrayList;

@Data
@Builder
public class RoomResponse {
    @JsonProperty("id")
    Integer id;

    @JsonProperty("name")
    String name;

    @JsonProperty("total_seat")
    Integer totalSeat;

    @JsonProperty("seats")
    ArrayList<Seats> seats;
}
