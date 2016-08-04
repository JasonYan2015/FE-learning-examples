package com.easy.test;

import java.util.List;

public class Test7 {
	public static void main(String[] args) {
		//调用Test6的方法
		Test6.main(null);
		int x = Test6.f3(34 , 56);
		System.out.println(x);
		
		int f = f0();
		List<Student> y = f1();
	}
	public static int f0() {
		return 0;
	}
	public static List<Student> f1() {
		return null;
	}
}
