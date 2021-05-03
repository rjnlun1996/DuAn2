package com.hitech.entities.helper;

import com.hitech.entities.Account;

public class TopCustomerBuy {
	
	private int quantity;
	private Account account;
	private Long totalBuy;
	
	public TopCustomerBuy() {
		super();
	}
	
	public TopCustomerBuy(Account account, int quantity, Long totalBuy) {
		super();
		this.quantity = quantity;
		this.account = account;
		this.totalBuy = totalBuy;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Long getTotalBuy() {
		return totalBuy;
	}

	public void setTotalBuy(Long totalBuy) {
		this.totalBuy = totalBuy;
	}	
	
	
}
