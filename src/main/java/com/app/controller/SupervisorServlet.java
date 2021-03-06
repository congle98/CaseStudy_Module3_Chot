package com.app.controller;

import com.app.model.*;
import com.app.service.addressservice.AddressService;
import com.app.service.addressservice.IAddressService;
import com.app.service.classservice.ClassService;
import com.app.service.classservice.IClassService;
import com.app.service.moduleservice.IModuleService;
import com.app.service.moduleservice.ModuleService;
import com.app.service.statusservice.IStatusService;
import com.app.service.statusservice.StatusService;
import com.app.service.studentservice.IStudentService;
import com.app.service.studentservice.StudentService;
import com.app.service.supervisorservice.ISupervisorService;
import com.app.service.supervisorservice.SupervisorService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/Supervisor")
public class SupervisorServlet extends HttpServlet {
    static Supervisor supervisorMain = UserServlet.supervisorUser;
    IClassService classService = new ClassService();
    IStudentService studentService = new StudentService();
    IModuleService moduleService = new ModuleService();
    IAddressService addressService = new AddressService();
    IStatusService statusService = new StatusService();
    ISupervisorService supervisorService = new SupervisorService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action==null){
            action = "";
        }
        switch (action){
            case "logOut":
                LoginPage(req,resp);
                break;
            case "showStudents":
                showFormStudent(req,resp);
                break;
            case "accountManager":
                showFormAccount(req,resp);
                break;
            case "home":
                supervisorHomePage(req,resp);
                break;
            case "editScore":
                showFormEditScore(req,resp);
                break;
            case "showAchievementsStudent":
                showAchievementsStudent(req,resp);
                break;
            default:
                supervisorHomePage(req,resp);
                break;
        }

    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action==null){
            action = "";
        }
        switch (action){
            case "accountManager":
                accountManager(req,resp);
                break;
            case "editScore":
                editScore(req,resp);
                break;
            default:
                supervisorHomePage(req,resp);
                break;
        }
    }



    private void accountManager(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String url = req.getParameter("url");
        LocalDate dob = LocalDate.parse(req.getParameter("dob"));
        Address address = addressService.findById(Integer.parseInt(req.getParameter("address_id")));
        Status status = statusService.findById(supervisorMain.getStatus().getId());
        Supervisor supervisor = new Supervisor(id,name,email,password,url,address,dob,status);
        supervisorService.edit(supervisor.getId(),supervisor);
        supervisorMain = supervisor;
        supervisorHomePage(req,resp);
    }

    private void supervisorHomePage(HttpServletRequest req, HttpServletResponse resp){
        req.setAttribute("supervisor",supervisorMain);
        RequestDispatcher rd = req.getRequestDispatcher("/supervisor/supervisorHome.jsp");
        try {
            rd.forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void LoginPage(HttpServletRequest req, HttpServletResponse resp) {
        try {
            resp.sendRedirect("/index.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void showAchievementsStudent(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        List<Module> moduleList = moduleService.findByStudentId(id);
        List<Double> scoreList = new ArrayList<>();
        for (Module m: moduleList
             ) {
            double score = studentService.findScoreByStudentIModuleId(id,m.getId());
            scoreList.add(score);
        }
        req.setAttribute("supervisor",supervisorMain);
        req.setAttribute("moduleList",moduleList);
        req.setAttribute("scoreList",scoreList);
        req.setAttribute("studentId",id);

        RequestDispatcher rd = req.getRequestDispatcher("/supervisor/showAchievementsStudent.jsp");
        try {
            rd.forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }


    }

    private void showFormEditScore(HttpServletRequest req, HttpServletResponse resp) {
        int module_id = Integer.parseInt(req.getParameter("idModule"));
        int student_id = Integer.parseInt(req.getParameter("idStudent"));
        double score = studentService.findScoreByStudentIModuleId(student_id,module_id);
        RequestDispatcher rd = req.getRequestDispatcher("/supervisor/editScore.jsp");
        req.setAttribute("score",score);
        req.setAttribute("supervisor",supervisorMain);
        try {
            rd.forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void editScore(HttpServletRequest req, HttpServletResponse resp) {
        int module_id = Integer.parseInt(req.getParameter("idModule"));
        int student_id = Integer.parseInt(req.getParameter("idStudent"));
        double score = Double.parseDouble(req.getParameter("score"));
        studentService.updateScoreByStudentIModuleId(student_id,module_id,score);
        supervisorHomePage(req,resp);
    }


    private void showFormAccount(HttpServletRequest req, HttpServletResponse resp) {
        req.setAttribute("supervisor",supervisorMain);
        List<Address> addressList = addressService.findAll();
        req.setAttribute("addressList",addressList);
        RequestDispatcher rd = req.getRequestDispatcher("/supervisor/accountManager.jsp");
        try {
            rd.forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void showFormStudent(HttpServletRequest req, HttpServletResponse resp) {
        List<Student> studentList = studentService.findAll();
        req.setAttribute("studentList",studentList);
        req.setAttribute("supervisor",supervisorMain);
        RequestDispatcher rd = req.getRequestDispatcher("/supervisor/studentList.jsp");
        try {
            rd.forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }


    }



}
