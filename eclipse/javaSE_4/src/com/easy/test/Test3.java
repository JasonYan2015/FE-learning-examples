package com.easy.test;

public class Test3 {

	//ʹ��main����������������
	public static void main(String[] args) {
		Student s1 = new Student();
		s1.no = 100;							// �� . �� ��Ϊ�������
		s1.name = "Tom";
		System.out.println(s1.no);
		System.out.println(s1.name);
		//����s2
		Student s2 = new Student();
		s2.no = 200;
		s2.name = "Lily";
		//
		Student[] students = new Student[2];
		students[0]=s1;
		students[1]=s2;
	}
}
