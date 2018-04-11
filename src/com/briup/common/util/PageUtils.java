package com.briup.common.util;

public class PageUtils {
	public static int getPage(int size) {
		int pageNum = 0;
		if(size%10==0){
			pageNum = size/10;
		}else{
			pageNum = size/10+1;
		}
		return pageNum;
	}
}
