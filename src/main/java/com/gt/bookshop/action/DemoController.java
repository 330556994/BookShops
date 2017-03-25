package com.gt.bookshop.action;

import com.gt.bookshop.entity.User;
import com.gt.bookshop.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * Created by Administrator on 2017/2/19/019.
 */
@Controller
public class DemoController {
    //声明数据库访问类
    @Autowired
    private UserMapper userMapper;

    @RequestMapping("/hello")
    public String getPage(){
        return "hello";
    }

    @RequestMapping("/test/*/*/ak")
    public String testAntPath(){
        System.out.print("test antpath");
        return "demo/result";
    }

    @RequestMapping("/test/pathvariable/{id}")
    public String testPathvarible(@PathVariable() Integer id,Model model){
        System.out.print("test Pathvarible");
        model.addAttribute("id",id);
        return "demo/result";
    }

    @RequestMapping(value = "/test/restful/order",method = RequestMethod.POST)
    public String testRestfulPost(){
        System.out.print("testRestfulPost ...");
        return "demo/result";
    }

    @RequestMapping(value = "/test/restful/order/{id}",method = RequestMethod.GET)
    public String testRestfulGet(@PathVariable("id") Integer id){
        System.out.print("testRestfulGet ... id为"+id);
        return "demo/result";
    }

    @RequestMapping(value = "test/restful/order/{id}",method = RequestMethod.PUT)
    public String testRestfulPut(@PathVariable("id") Integer id){
        System.out.print("testRestfulPut ... id为"+id);
        return "demo/result";
    }

    //使用 restful 风格的 url

    @RequestMapping(value = "test/restful/order/{id}",method = RequestMethod.DELETE)
    public String testRestfulDelete(@PathVariable("id") Integer id){
        System.out.print("testRestfulDelete ... id为"+id);
        return "demo/result";
    }

    @RequestMapping(value="test/requestParam",method=RequestMethod.GET)
    public String testRequestParams(@RequestParam(value = "name") String name,@RequestParam(value = "age") int age){
        System.out.print("testRequestParams,name:"+name+",age:"+age);
        return "demo/result";
    }

    //这是为了测试 ModelAttribute 的特性的方法
    @ModelAttribute
    public void setUserModle(){


    }

    @RequestMapping(value = "test/edituser/{id}",method = RequestMethod.GET)
    public String editUser(@PathVariable("id") Integer id , ModelMap map){
        map.addAttribute("user",userMapper.getUserById(id));
        return "demo/result";
    }

    @RequestMapping(value = "test/edituser" , method = RequestMethod.POST)
    public String testModelAttribute(User user){
        System.out.print(user);
        return "demo/result";
    }





}
