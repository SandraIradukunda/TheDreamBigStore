package com.big.store.dao;

import com.big.store.enitity.Seller;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface SellerDAO extends JpaRepository<Seller,Long> {

    public Seller findById(@Param("id") Integer id);

}
