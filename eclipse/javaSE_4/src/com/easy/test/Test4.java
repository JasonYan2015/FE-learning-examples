package com.easy.test;

import java.util.ArrayList;
import java.util.List;

public class Test4 {

	public static void main(String[] args) {
		
		//集合
		List<String> list = new ArrayList<String>();
			//<>中表示List中的数据类型，若是整形不用int，因为这里应该是引用类型而int是基本类型
		list.add("Tom");
		list.add("Lily");
		list.add("Jim");
		
		for (int i = 0; i < list.size(); i++) {					//遍历

			System.out.println(list.get(i));
		}
	}
}
