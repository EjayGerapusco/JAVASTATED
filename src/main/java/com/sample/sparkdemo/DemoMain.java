package com.sample.sparkdemo;

import com.sample.sparkdemo.model.Song;
import com.sample.sparkdemo.model.List;

import java.util.HashMap;
import java.util.Map;

import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import static spark.Spark.*;

public class DemoMain {

    public static String render( Map<String, Object> model, String template){
        return new FreeMarkerEngine().render( new ModelAndView(model, template) );
    };

public static void main(String[] args) {
    staticFiles.location("/css"); // Static files

    List list = new List();

    get("/list", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title", "List Inventory");
            model.put("inventory", list.all());
            return render(model, "list.ftl");
        });
    
    
    get("/", (req, res) -> {
        Map<String, Object> model = new HashMap<>();
        
        model.put("title","Javastated");
        return render(model, "index.ftl");

    });

get("/adding", (request, response) -> {
        Map<String, Object> model = new HashMap<>();
        model.put("forms", "Share Your Playlist");
        return render(model, "adding.ftl");
    });




 post("/adding", (req,res) -> {

     Map<String, Object> model = new HashMap<>();
            String code = request.queryParams("code");
            String name = request.queryParams("name");

            Song song = new Song();
            song.setName(name);
            song.setCode(code);

            list.add(song);
        
        model.put("title", "New Song");
        model.put("song", song);
        return render(model, "songs.ftl");
    });

    get("/delete/:code", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.params(":code");
            Song song = list.findSongByCode(code);
            
            model.put("title", "Delete Song");
            model.put("item", song);
            // model.put("searchcode", code);
            // model.put("founditem", item);
            return render(model, "delete.ftl");
        });

    post("/delete", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.queryParams("code");
            Song song = list.findSongByCode(code);
            list.deleteSongByCode(code);
            
            model.put("title", "Deleted Item");
            model.put("item", song);
            return render(model, "deleted.ftl");
        });

}

}
