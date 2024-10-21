package com.hl.BMS;

public class Book {

	int bookId;
	String bookName;
	String authorName;
	double pages;
	int price;
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public double getPages() {
		return pages;
	}
	public void setPages(double pages) {
		this.pages = pages;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Book(int bookId, String bookName, String authorName, double pages, int price) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.authorName = authorName;
		this.pages = pages;
		this.price = price;
	}
	public Book() {
		super();
	}
	
		
}
