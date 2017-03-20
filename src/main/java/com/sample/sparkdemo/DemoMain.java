package com.sample.sparkdemo;

import com.sample.sparkdemo.model.Song;
import com.sample.sparkdemo.model.Inventory;
import java.util.HashMap;
import java.util.Map;
import java.util.*;
import java.util.ArrayList;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import static spark.Spark.*;

public class DemoMain {

    public static String render( Map<String, Object> model, String template){
        return new FreeMarkerEngine().render( new ModelAndView(model, template) );
    };   

    public static void main(String[] args) {
        staticFiles.location("/public"); // Static files

        Inventory inventory = new Inventory();
        

         
        get("/", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            
            model.put("title","JAVASTATED");
            model.put("inventory", inventory.all());
            
            return render(model, "index.ftl");
        });
        get("/about", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            
            return render(model, "about.ftl");
        });
        get("/team", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            
            return render(model, "team.ftl");
        });
            get("/contact", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            
            return render(model, "contact.ftl");
        });
        get("/slist", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title", "List of Songs");
            model.put("inventory", inventory.all());
            return render(model, "slist.ftl");
        });

        get("/adding", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("forms", "Share Your Playlist");
            return render(model, "adding.ftl");
        });
        get("/songs", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title", "List of Songs");
            model.put("inventory", inventory.all());
            return render(model, "songs.ftl");
        });
        


        post("/adding", (request,response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.queryParams("code");
            String name = request.queryParams("name");

            Song song = new Song();
            song.setCode(code);
            song.setName(name);

            inventory.add(song);

            model.put("title", "New Song");
            model.put("song", song);
            // response.redirect("/show/"+code);
            // return "";
            return render(model, "view.ftl");
        });


        // get("/delete/:code", (request, response) -> {
        //     Map<String, Object> model = new HashMap<>();
        //     String code = request.params(":code");
        //     Item item = inventory.deleteItemByCode(code);
            
        //     model.put("title", "Delete Item");
        //     model.put("item_code", item.code());
        //     model.put("item_name", item.name());
        //     return render(model, "delete.ftl");
        // });

        get("/delete/:code", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.params(":code");
            Song song = inventory.findSongByCode(code);
            
            model.put("title", "Delete Item");
            model.put("song", song);
            // model.put("searchcode", code);
            // model.put("founditem", item);
            return render(model, "delete.ftl");
        });

        post("/delete", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.queryParams("code");
            Song song = inventory.findSongByCode(code);
            inventory.deleteSongByCode(code);
            
            model.put("title", "Deleted Item");
            model.put("song", song);
            return render(model, "deleted.ftl");
        });




        // get("/edit/:code", (request, response) -> {
        //     Map<String, Object> model = new HashMap<>();
        //     String code = request.params(":code");
        //     Item item = inventory.findItemByCode(code);
            
        //     model.put("title", "Edit Item");
        //     model.put("item_code", item.code());
        //     model.put("item_name", item.name());
        //     return render(model, "edit.ftl");
        // });


        get("/show/:code", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.params(":code");
            Song song = inventory.findSongByCode(code);
            
            model.put("title", "View Song");
            model.put("song", song);
            // model.put("searchcode", code);
            // model.put("founditem", item);
            return render(model, "view.ftl");
        });


        get("/list", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title", "List of Songs");
            model.put("inventory", inventory.all());
            return render(model, "songs.ftl");
        });


    }

}
