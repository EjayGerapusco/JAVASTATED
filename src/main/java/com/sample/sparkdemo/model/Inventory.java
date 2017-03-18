package com.sample.sparkdemo.model;
import com.sample.sparkdemo.model.Song;

import java.util.ArrayList;

public class Inventory {

	ArrayList<Song> inventory = new ArrayList<Song>();


	public ArrayList<Song> all(){
		return inventory;
	}


	public void add(Song song){
		inventory.add(song);
	}


	public Song deleteSongByCode(String code){
		for (Song song : inventory ) {
			if ( code.equals(song.code) ) {
				inventory.remove(song);
				return null;
			}
		};
		return null;
	}

	public Song findSongByCode(String code){
		for (Song song : inventory ) {
			if ( code.equals(song.code) ) {
				return song;
			}
		};
		return null;
	}

}
