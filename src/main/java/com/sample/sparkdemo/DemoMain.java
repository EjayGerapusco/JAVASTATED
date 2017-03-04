package com.sample.sparkdemo;

import com.sample.sparkdemo.model.Song;

import java.util.HashMap;
import java.util.Map;

import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import static spark.Spark.*;

public class DemoMain {

public static void main(String[] args) {
    staticFiles.location("/css"); // Static files


    get("/view", (req, res) -> {
        Song s = new Song();
        s.setName("test");
        s.setCode("testing");

        Song.putSong(s);

        Map<String, Object> model = new HashMap<>();

        model.put("title", "Viewing Page");
        model.put("songs", Song.all());
        model.put("foundsong", Song.findSong("p"));

        return new ModelAndView(model, "view.ftl"); // located in src/test/resources/spark/template/freemarker
       
           
       }, new FreeMarkerEngine());
    
    
    get("/", (req, res) -> {
        Map<String, Object> model = new HashMap<>();
        
        model.put("title","Javastated");
       
        
        return new ModelAndView(model, "index.ftl"); // located in src/test/resources/spark/template/freemarker
   
       
   }, new FreeMarkerEngine());




get("/adding", (request, response) -> {
        Map<String, Object> model = new HashMap<>();
        model.put("forms", "Share Your Playlist");
        return new ModelAndView(model, "adding.ftl");
    }, new FreeMarkerEngine());




 post("/adding", (req,res) -> {
            String from_input1;
            String from_input2;

            from_input1 = req.queryParams("song");
            from_input2 = req.queryParams("artist");
        
            Map<String, Object> model = new HashMap<>();
        model.put("song_name", from_input1);
        model.put("song_artist", from_input2);
        return new ModelAndView(model, "songs.ftl");
    }, new FreeMarkerEngine());

}

}
