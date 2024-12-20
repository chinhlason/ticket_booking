package com.example.demo.dto.res;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Builder;
import lombok.Data;

import java.time.Instant;

@Data
@Builder
public class TicketResponse {
    @JsonProperty("id")
    Integer id;

    @JsonProperty("movie_name")
    String movieName;

    @JsonProperty("room_name")
    String roomName;

    @JsonProperty("start_time")
    Instant startTime;

    @JsonProperty("end_time")
    Instant endTime;

    @JsonProperty("seat_name")
    String seatName;

    @JsonProperty("status")
    String status;
}
