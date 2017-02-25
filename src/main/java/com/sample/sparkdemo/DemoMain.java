package com.sample.sparkdemo;

import java.util.HashMap;
import java.util.Map;

import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import static spark.Spark.*;

public class DemoMain {

    public static void main(String[] args) {
        staticFiles.location("/public"); // Static files
        
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

                from_input1 = req.queryParams("Item1");
                from_input2 = req.queryParams("Item1Details");
            
                Map<String, Object> model = new HashMap<>();
            model.put("song_name", from_input1);
            model.put("song_artist", from_input2);
            return new ModelAndView(model, "songs.ftl");
        }, new FreeMarkerEngine());

 }

}
