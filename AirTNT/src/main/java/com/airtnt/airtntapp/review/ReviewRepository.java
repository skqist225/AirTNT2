package com.airtnt.airtntapp.review;

import java.util.List;

import com.airtnt.entity.Review;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReviewRepository extends CrudRepository<Review, Integer> {

    @Query("SELECT r FROM Review r WHERE r.booking.id IN (:bookingIds) AND r.finalRating >= :numberOfStars")
    public List<Review> getReviewsByBookings(Integer[] bookingIds, Float numberOfStars);

    @Query("SELECT r FROM Review r WHERE r.booking.id IN (:bookingIds)")
    public List<Review> getReviewsByBookings(Integer[] bookingIds);
}
