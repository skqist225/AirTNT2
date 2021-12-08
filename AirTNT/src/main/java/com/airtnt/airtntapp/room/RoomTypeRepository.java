package com.airtnt.airtntapp.room;

import com.airtnt.entity.RoomType;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoomTypeRepository extends CrudRepository<RoomType, Integer> {
}
