package com.example.demo.service.imp;

import com.example.demo.dto.res.TicketResponse;
import com.example.demo.repository.MovieRepository;
import com.example.demo.repository.RoomsRepository;
import com.example.demo.repository.SeatsRepository;
import com.example.demo.repository.ShowtimeRepository;
import com.example.demo.repository.TicketsRepository;
import com.example.demo.service.IService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ServiceImp implements IService {
    private final MovieRepository movieRepository;

    private final RoomsRepository roomsRepository;

    private final SeatsRepository seatsRepository;

    private final TicketsRepository ticketsRepository;

    private final ShowtimeRepository showtimeRepository;

    @Override
    public TicketResponse getTicket(Integer id) {
        return null;
    }
}
