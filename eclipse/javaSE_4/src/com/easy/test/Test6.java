package com.easy.test;

public class Test6 {

	public static void main(String[] args) {
		f1();
		f2(2, 3);
		int x=f3(23, 34);
		System.out.println(x);
	}
	//���÷���
	//1.��static		��static-->�� �����	CLASS��.������();
	//	2.������			�����ʹ������
	//	  3.������ֵ����		��һ��ֵ
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
		//��ͬ��syso(a > b ? a : b);
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