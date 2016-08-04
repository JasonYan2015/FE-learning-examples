package com.easy.model;

public class Book {
	private int id;					//���
	private String bookname;		//����
	private String author;			//����
	private String press;			//������	
	private String pressdate;		//����ʱ��
	
	public int getId() {								//source���get and set
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPress() {
		return press;
	}
	public void setPress(String press) {
		this.press = press;
	}
	public String getPressdate() {
		return pressdate;
	}
	public void setPressdate(String pressdate) {
		this.pressdate = pressdate;
	}
	
	public Book() {										//�޲ι��췽��source���constructor from superclass
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Book(int id, String bookname, String author, String press,			//�вι��췽��source���constructor using fields
			String pressdate) {
		super();
		this.id = id;
		this.bookname = bookname;
		this.author = author;
		this.press = press;
		this.pressdate = pressdate;
	}
	
	@Override																	//source���toString
	public String toString() {
		return "Book [id=" + id + ", bookname=" + bookname + ", author="
				+ author + ", press=" + press + ", pressdate=" + pressdate
				+ "]";
	}
	
	
}
