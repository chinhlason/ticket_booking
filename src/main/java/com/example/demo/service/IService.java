package com.example.demo.service;

import com.example.demo.dto.res.TicketResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public interface IService {
    TicketResponse getTicket(Integer id);
}
