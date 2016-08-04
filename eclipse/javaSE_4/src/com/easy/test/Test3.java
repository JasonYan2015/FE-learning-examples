package com.easy.test;

public class Test3 {

	//使用main方法才能启动程序
	public static void main(String[] args) {
		Student s1 = new Student();
		s1.no = 100;							// “ . ” 称为对象访问
		s1.name = "Tom";
		System.out.println(s1.no);
		System.out.println(s1.name);
		//创建s2
		Student s2 = new Student();
		s2.no = 200;
		s2.name = "Lily";
		//
		Student[] students = new Student[2];
		students[0]=s1;
		students[1]=s2;
	}
}
