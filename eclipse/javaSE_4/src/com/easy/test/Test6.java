package com.easy.test;

public class Test6 {

	public static void main(String[] args) {
		f1();
		f2(2, 3);
		int x=f3(23, 34);
		System.out.println(x);
	}
	//调用方法
	//1.看static		有static-->用 类访问	CLASS名.方法名();
	//	2.看参数			按类型传入参数
	//	  3.看返回值类型		接一下值
	public static void f1() {
		System.out.println("f1");
	}
	
	public static void f2(int a,int b) {
		if (a>b) {
			System.out.println(a);
		}
		else {
			System.out.println(b);
		}
		//等同于syso(a > b ? a : b);
	}
	public static int f3(int a,int b) {
		if (a>b) {
			return a;
		}
		else {
			return b;
		}
		
	}
}
