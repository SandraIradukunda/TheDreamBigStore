package com.big.store.dao;

import com.big.store.enitity.Buyer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface BuyerDAO extends JpaRepository<Buyer,Long> {
    public Buyer findById(@Param("id") Integer id);
}
