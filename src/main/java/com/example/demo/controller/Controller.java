package com.example.demo.controller;

import com.example.demo.dto.res.TicketResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
    @GetMapping("/ticket/:id")
    public ResponseEntity<TicketResponse> getTicket(@PathVariable Integer id) {

    }
}
