package com.HavanaClub.dao;

import com.HavanaClub.entity.Orders;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrdersDao extends JpaRepository<Orders, Integer> {

}
