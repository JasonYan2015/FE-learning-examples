package com.easy.model;

public class Book {
	private int id;					//编号
	private String bookname;		//书名
	private String author;			//作者
	private String press;			//出版社	
	private String pressdate;		//出版时间
	
	public int getId() {								//source里的get and set
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
	
	public Book() {										//无参构造方法source里的constructor from superclass
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Book(int id, String bookname, String author, String press,			//有参构造方法source里的constructor using fields
			String pressdate) {
		super();
		this.id = id;
		this.bookname = bookname;
		this.author = author;
		this.press = press;
		this.pressdate = pressdate;
	}
	
	@Override																	//source里的toString
	public String toString() {
		return "Book [id=" + id + ", bookname=" + bookname + ", author="
				+ author + ", press=" + press + ", pressdate=" + pressdate
				+ "]";
	}
	
	
}
