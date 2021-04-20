package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.hitech.entities.IReport;
import com.hitech.entities.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer>{
	
	List<Order> findByEnabledTrue();
	
	@Query("SELECT o FROM Order o, Account a WHERE o.account.username = a.username AND o.account.username = ?1")
	List<Order> findOrderByUsername(String username);
	

	@Query("SELECT SUM(o.total) FROM Order o, StatusOrder so WHERE o.id = so.order.id AND o.enabled=1 AND so.enabled=1 AND so.status.id=?1")
	String calTotalRevenue(String status);
	
	@Query("SELECT SUM(od.quantity) FROM Order o, StatusOrder so, OrderDetail od WHERE o.id = so.order.id AND o.id = od.order.id AND o.enabled=1 AND so.enabled=1 AND od.enabled=1 AND so.status.id=?1")
	String calTotalProductSold(String status);
	
	@Query("SELECT COUNT(o) FROM Order o, StatusOrder so WHERE o.id = so.order.id AND o.enabled=1 AND so.enabled=1 AND so.status.id=?1")
	String calTotalOrder(String status);
	
	@Query("SELECT YEAR(o.createdAt) as yearReport, MONTH(o.createdAt) as monthReport, SUM(o.total) AS totalReport FROM Order o GROUP BY YEAR(o.createdAt), MONTH(o.createdAt) ORDER BY YEAR(o.createdAt) DESC, MONTH(o.createdAt) DESC")
	List<IReport> report();
}
