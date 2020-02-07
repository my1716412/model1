package javaReview;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileTest {
	
	public static void main(String[] args) throws IOException {
		//파일정보
		File file = new File("C:/yedam","ymy.txt");
		System.out.println("파일크기" + file.length());
		
		//폴더목록
		File dir = new File("D:/dev/eclipse");
		String[] list = dir.list();
		for(String temp : list) {
			System.out.println(temp);
		}
		
		//폴더생성
		File newFile = new File("c:/yedam/imges");
		//newFile.mkdir();
		
		//파일삭제
		file.deleteOnExit();
		
		//파일복사
		FileInputStream src = new FileInputStream("C:\\Users\\Public\\Pictures\\Sample Pictures\\Desert.jsp");
		FileOutputStream des = new FileOutputStream("C:/yedam/imges/복사.jsp");
		
		byte[] data = new byte[100];
		int size = 0;
		while ((size=src.read(data))>-1) {
			des.write(data);
		}
		src.close();
		des.close();
	}
}
