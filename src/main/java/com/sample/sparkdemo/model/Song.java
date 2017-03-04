package com.sample.sparkdemo.model;
import java.util.ArrayList;

public class Song {
	String name, code;

	public static ArrayList<Song> songs = new ArrayList<Song>();

	public static ArrayList<Song> all(){
		return songs;
	}

	
	public static void putSong(Song song){
		songs.add(song);
	}

	public static Song findSong(String code){
		for (Song song : songs ) {
			if (code == song.code) {
				return song;
			}
		};
		return null;
	}


	public void setName(String name){
		this.name = name;
	}

	public String getName(){
			return name;
		}
	

	public String getCode(){
		return code;
	}

	public void setCode(String code){
		this.code = code;
	}
}
