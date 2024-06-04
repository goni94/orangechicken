package controller.login;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import data.service.UsersService;
import data.dto.UsersDto;

@Controller
public class LoginController {

    @Autowired
    private UsersService usersService;
    
    @GetMapping("/users/login")
    public String isLogin(
            @RequestParam(defaultValue = "no") String saveid,
            @RequestParam String username,
            @RequestParam String password,
            HttpSession session,
            Model model) {
        
        String direction;
        boolean loginStatus = usersService.isLoginCheck(username, password);
        System.out.println(loginStatus);
        UsersDto dto = usersService.getUserByUsername(username,password);
        
        if(loginStatus) {
        	session.setAttribute("userid", dto.getUser_id());
        	System.out.println(dto.toString());
        	System.out.println(dto.getUser_id()+"session");
        	Object a=session.getAttribute("userid");
        	System.out.println("Login ID= "+a);
        	session.setAttribute("status", "true");
        	direction = "redirect:/menu/menu";
        }else {
        	model.addAttribute("status", "false");
        	direction = "redirect:/";
        }
        
        return direction;
    }
    
    @GetMapping("/menu/menu")
    public String goMenu() {
    	return "menu/menu";
    }
    
    @GetMapping("/users/logout")
    public String userLogout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }


}
