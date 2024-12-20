package com.example.demo.repository;

import com.example.demo.dto.res.TicketResponse;
import com.example.demo.model.Tickets;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface TicketsRepository extends JpaRepository<Tickets, Integer> {
    @Query("", nativeQuery = true)
    Optional<TicketResponse> findByIdCustom(Integer id);
}
