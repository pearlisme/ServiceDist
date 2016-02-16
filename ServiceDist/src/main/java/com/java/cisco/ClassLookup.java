package com.java.cisco;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.jar.JarEntry;
import java.util.jar.JarInputStream;

import org.json.JSONArray;
import org.json.JSONObject;

public class ClassLookup {

	public static JSONObject getLookupMethods(String sdjarname) {

		JSONArray listofclasses = new JSONArray();
		JSONObject sdobject = new JSONObject();
		
		try {
			JarInputStream sdjarfile = new JarInputStream(
new FileInputStream(sdjarname));
			
			JarEntry sdjar;

			while (true) {
				sdjar = sdjarfile.getNextJarEntry();
				if (sdjar == null) {

					break;
				}
				if ((sdjar.getName().endsWith(".class"))) {

					String classname = sdjar.getName().replaceAll("/", "\\.");
					String myclass = classname.substring(0, classname.lastIndexOf('.'));
					listofclasses.put(myclass);
				}
			}
			sdobject.put("jar file name", sdjarname);
			sdobject.put("list of class", listofclasses);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return sdobject;
	}

	public static void main(String args[]) {

		
		//JSONObject mylist = getLookupMethods("../source/rt.jar");
		// JSONObject mylist =
		// getLookupMethods("E:/repo/ServiceDist/src/main/source/rt.jar");
		JSONObject mylist = getLookupMethods("/ServiceDist/src/main/webapp/source/rt.jar");
		System.out.println(mylist);
	}
}
