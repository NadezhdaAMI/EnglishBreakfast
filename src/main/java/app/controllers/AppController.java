package app.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AppController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView welcome() {
        ModelAndView model = new ModelAndView();
        model.setViewName("index");     //change for "login" and fix error 405(HTTP Status 405 – Method Not Allowed)
        return model;
    }

    @RequestMapping("/login")
    public String getLogin(@RequestParam(value = "error", required = false) String error,
                           @RequestParam(value = "logout", required = false) String logout,
                           Model model) {
        model.addAttribute("error", error != null);
        model.addAttribute("logout", logout != null);
        return "login";
    }

    @RequestMapping("/loginwow")
    public String getLoginwow(@RequestParam(value = "error", required = false) String error,
                           @RequestParam(value = "logout", required = false) String logout,
                           Model model) {
//        model.addAttribute("error", error != null);
//        model.addAttribute("logout", logout != null);
        return "loginwow";
    }


//    @RequestMapping(value = "/helloworld", method = RequestMethod.GET)
//    public ModelAndView welcomePage() {
//        ModelAndView model = new ModelAndView();
//        model.addObject("title", "Spring Security Tutorial");
//        model.addObject("message", "Welcome Page !");
//        model.setViewName("helloworld");
//        return model;
//    }
//
//    @RequestMapping(value = "/protected**", method = RequestMethod.GET)
//    public ModelAndView protectedPage() {
//
//        ModelAndView model = new ModelAndView();
//        model.addObject("title", "Spring Security 3.2.4 Hello World Tutorial");
//        model.addObject("message", "This is protected page - Only for Admin Users!");
//        model.setViewName("protected");
//        return model;
//
//    }
//
//    @RequestMapping(value = "/confidential**", method = RequestMethod.GET)
//    public ModelAndView adminPage() {
//
//        ModelAndView model = new ModelAndView();
//        model.addObject("title", "Spring Security 3.2.4 Hello World Tutorial");
//        model.addObject("message", "This is confidential page - Need Super Admin Role!");
//        model.setViewName("protected");
//
//        return model;
//
//    }
}
