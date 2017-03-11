package com.sample.sparkdemo.model;
import com.sample.sparkdemo.model.Song;

import java.util.ArrayList;

public class List {

	ArrayList<Song> list = new ArrayList<Song>();


	public ArrayList<Song> all(){
		return list;
	}


	public void add(Song song){
		list.add(song);
	}


	public Song deleteSongByCode(String code){
		for (Song song : list ) {
			if ( code.equals(song.code)) {
				list.remove(song);
				return null;
			}
		};
		return null;
	}

	public Song findSongByCode(String code){
		for (Song song : list ) {
			if ( code.equals(song.code) ) {
				return song;
			}
		};
		return null;
	}

}

