package com.easy.test;

import java.util.ArrayList;
import java.util.List;

public class Test5 {

	public static void main(String[] args) {
		List<Student> list = new ArrayList<Student>();
		
		Student s1 = new Student();
		s1.no = 1000;
		s1.name = "Tom";
		Student s2 = new Student();
		s2.no = 2000;
		s2.name = "Lily";
		Student s3 = new Student();
		s3.no = 3000;
		s3.name = "Jim";
		
		list.add(s1);
		list.add(s2);
		list.add(s3);
		
		for (Student student : list) {					// foreach ѭ������
			System.out.println(student.no + "\t" + student.name);
		}
		for (int i = 0; i < list.size(); i++) {			//forѭ������
			System.out.println(list.get(i).no + "\t" + list.get(i).name);
		}
	}
}
