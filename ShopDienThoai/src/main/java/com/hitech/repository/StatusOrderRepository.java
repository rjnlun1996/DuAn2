package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.hitech.entities.StatusOrder;

@Repository
public interface StatusOrderRepository extends JpaRepository<StatusOrder, Integer>{
	
	List<StatusOrder> findByEnabledTrue();
	
	List<StatusOrder> findByEnabledTrueAndCurrentTrue();
	@Query("SELECT o from HopeOnline.dbo.StatusOrder o INNER JOIN HopeOnline.dbo.Status s ON o.statusId= s.statusId where o.orderId= 1 and s.isEnabled=1 ")
	List<StatusOrder> findByOrderIdAndEnabledTrue(Integer orderId);
}   
	
	@Query("SELECT s FROM StatusOrder s, Order o WHERE o.id = s.order.id AND s.current = 1 AND s.order.id = ?1")
	List<StatusOrder> getStatusOrderByCurrentTrueAndOrderId(int id);
	
	List<StatusOrder> findDistinctByEnabledTrueAndCurrentTrue();

}
