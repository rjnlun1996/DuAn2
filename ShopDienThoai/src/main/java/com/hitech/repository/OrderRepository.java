package com.hitech.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Order;
import com.hitech.entities.helper.IReport;
import com.hitech.entities.helper.IReportTotal;
import com.hitech.entities.helper.ITopCustomerBuy;
import com.hitech.entities.helper.ITopSellProduct;

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
	
	@Query("SELECT "
			+ "	SUM(o.total) AS totalReport, "
			+ "	SUM(od.quantity) as totalQuantity,"
			+ "	COUNT(DISTINCT o.id) as totalOrder, "
			+ "	COUNT(DISTINCT o.account.username) as totalCustomer,"
			+ "	(SELECT COUNT(DISTINCT o.id)"
			+ "		FROM Order o, StatusOrder so, OrderDetail od "
			+ "		WHERE o.id  = od.order.id "
			+ "			AND so.order.id  = o.id "
			+ "			AND o.createdAt BETWEEN ?1 AND ?2 "
			+ "			AND so.current = 1 "
			+ "			AND so.status.id != 'DHT') as totalPending "
			+ "FROM Order o, StatusOrder so, OrderDetail od "
			+ "WHERE o.id  = od.order.id "
			+ "AND so.order.id  = o.id "
			+ "AND o.createdAt BETWEEN ?1 AND ?2  "
			+ "AND so.current = 1 "
			+ "AND so.status.id = 'DHT'")
	IReportTotal report(Date first, Date last);
	
	@Query("SELECT "
			+ "p.id as productId, SUM(od.quantity) as quantity "
			+ "FROM Order o, StatusOrder so, OrderDetail od, Product p "
			+ "WHERE o.id  = od.order.id "
			+ "AND so.order.id  = o.id "
			+ "AND p.id  = od.product.id "
			+ "AND o.createdAt BETWEEN ?1 AND ?2  "
			+ "AND so.current = 1 "
			+ "AND so.status.id = 'DHT'"
			+ "GROUP BY p.id "
			+ "ORDER BY quantity DESC")
	List<ITopSellProduct> reportTopSellProduct(Date first, Date last);
	
	@Query("SELECT "
			+ "a.id as customerId, SUM(od.quantity) as quantityProducts, SUM(o.total) as totalBuy "
			+ "FROM Order o, StatusOrder so, OrderDetail od, Account a "
			+ "WHERE o.id  = od.order.id "
			+ "AND so.order.id  = o.id "
			+ "AND o.account.id  = a.id "
			+ "AND o.createdAt BETWEEN ?1 AND ?2  "
			+ "AND so.current = 1 "
			+ "AND so.status.id = 'DHT'"
			+ "GROUP BY a.id "
			+ "ORDER BY totalBuy DESC")
	List<ITopCustomerBuy> reportTopSellCustomer(Date first, Date last);
}
