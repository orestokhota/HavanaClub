package com.HavanaClub.dao;


import com.HavanaClub.entity.Drink;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface DrinkDao extends JpaRepository<Drink, Integer>{

	@Query(value = "select distinct d from Drink d left join fetch d.ingredients",
			countQuery = "select count(d.id) from Drink d")
	Page<Drink> drinksWithIngredientsPages(Pageable pageable);

	@Query("select distinct d from Drink d left join fetch d.ingredients")
	List<Drink> drinksWithIngredients();

	@Query("select distinct d from Drink d left join fetch d.ingredients where d.id=:id")
	Drink drinksWithIngredients(@Param("id") int id);

	@Query("select distinct d from Drink d left join fetch d.users where d.id=:id")
	Drink drinksWithUsers(@Param("id") int id);

}
