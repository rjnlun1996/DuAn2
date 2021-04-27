package com.hitech.services;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;

import com.hitech.entities.Order;
import com.hitech.entities.helper.IReport;
import com.hitech.entities.helper.IReportTotal;
import com.hitech.entities.helper.ITopCustomerBuy;
import com.hitech.entities.helper.ITopSellProduct;

public interface OrderService extends IBaseService<Order, Integer>{
	
	boolean deleteByEnable(Integer id);
	
	List<Order> findByEnabledTrue();
	
	List<Order> findOrderByUsername(String username);
	
	boolean existsById(int id);
	
	String calTotalRevenue(String status);
	
	String calTotalProductSold(String status);
	
	String calTotalOrder(String status);
	
	List<IReport> report();
	
	IReportTotal report(Date first, Date last);
	
	IReportTotal reportAll();
	
	List<ITopSellProduct> reportTopSellProduct(Date first, Date last);
	
	List<ITopSellProduct> reportTopSellProductAll();
	
	List<ITopCustomerBuy> reportTopSellCustomerAll();	
	
	List<ITopCustomerBuy> reportTopSellCustomer(Date first, Date last);
}
