package com.example.demo.repository;

import com.example.demo.model.Showtimes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ShowtimeRepository extends JpaRepository<Showtimes, Integer> {
}
