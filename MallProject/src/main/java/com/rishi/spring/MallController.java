package com.rishi.spring;

import java.text.*;
import java.util.*;

import org.springframework.ui.Model; 
import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class MallController {
	@Autowired
	private MallDB db;

	boolean adminStatus;
	boolean[] userStatus=new boolean[500];
	
	@RequestMapping("/")
	public String home(Model mode) {
		return "home";
	}
	@RequestMapping("/login")
	public String loginForm(Model model)  
	{  
		User res=new User();
		model.addAttribute("loginAttribute", res);
		return "loginPage";
	}  
	@RequestMapping("/register")  
	public String  registerForm(Model model)  
	{  
		User res=new User();
		model.addAttribute("registerAttribute", res);
		return "register";  
	}  
	@RequestMapping("/user={userid}/logout")
	public ModelAndView logout(@PathVariable("userid") Integer userid)  
	{  
		userStatus[userid]=false;
		return new ModelAndView(new RedirectView("/", true));
	}  
	@RequestMapping("/admin/logout-admin")
	public ModelAndView logoutAdmin() {
		adminStatus=false;
		return new ModelAndView(new RedirectView("/", true));
	}
	@RequestMapping(value="/user={userid}", method=RequestMethod.GET)  
	public ModelAndView userDashboard(@PathVariable("userid") Integer userid)  
	{  
		if(userStatus[userid]) {
			

			ModelAndView m=new ModelAndView();
			User l =db.getUser(userid);
			List<UserSpace> us=db.getUserBooked(userid);
			
			m.addObject("l",l);
			m.addObject("us",us);
			m.setViewName("profile");
			return m;
		}
		else {
			return new ModelAndView(new RedirectView("/login", true));
		}
	} 
	
	@RequestMapping(value="/admin", method=RequestMethod.GET)  
	public ModelAndView adminPage(Model model)  
	{  
		if(adminStatus) {
			
			ModelAndView m=new ModelAndView();
			m.addObject("msg","Welcome admin");
			List<Integer> l=db.spaceCost();
			m.addObject("l", l);
			m.addObject("cu", db.getUserDetails());
			m.setViewName("adminPage");
			return m;
		}
		else {
			return new ModelAndView(new RedirectView("/login", true));
		}
	} 
	@RequestMapping("/error")  
	public ModelAndView loginError(ModelAndView m)  
	{  
		m.addObject("msg", "Incorrect email or password");
		m.addObject("loginAttribute",new User());
		m.setViewName("loginPage");
		return m;
	}
	@RequestMapping("/register-error={errorMsg}")  
	public ModelAndView registerError(@PathVariable("errorMsg") String errorMsg,ModelAndView m)  
	{  
		m.addObject("msg", errorMsg);
		m.addObject("registerAttribute",new User());
		m.setViewName("register");
		return m;
	}
	@RequestMapping("/registerAccess")  
	public ModelAndView registerAccess(@ModelAttribute("registerAttribute") User res,Model model)  
	{  
		if(res.getName()=="" || res.getEmail()=="" || res.getNumber()=="" || res.getPass()=="") {
			model.addAttribute("errorMsg", "Fields can not be empty");
			return new ModelAndView(new RedirectView("/register-error={errorMsg}", true));
		}
		else if(res.getPass().equals(res.getPass2())) {
			
			if(db.emailExist(res.getEmail())) {
				model.addAttribute("errorMsg", "Email already exist!");
				return new ModelAndView(new RedirectView("/register-error={errorMsg}", true));
			}
			else {
				db.addUser(res);
				int userid=db.getUserId(res.getEmail(),res.getPass());
				userStatus[userid]=true;
				model.addAttribute("userid", userid);
				return new ModelAndView(new RedirectView("/user={userid}", true));												
			}
			
		}
		else {
			model.addAttribute("errorMsg", "Password did not match");
			return new ModelAndView(new RedirectView("/register-error={errorMsg}", true));
		}
		
	} 
	@RequestMapping(value="/loginAccess", method=RequestMethod.POST)
	public ModelAndView loginServlet(@ModelAttribute("loginAttribute") User res,Model model) {
		
		String pass,email;
		email=res.getEmail();
		pass=res.getPass();
		db.validate(email, pass);
		int userid=db.getUserId(email,pass);
		if(userid==0) {
			return new ModelAndView(new RedirectView("/error", true));
		}
		else if(userid==29) {
			adminStatus=true;
			return new ModelAndView(new RedirectView("/admin", true));
		}
		else {
			userStatus[userid]=true;
			model.addAttribute("userid", userid);
			return new ModelAndView(new RedirectView("/user={userid}", true));
		}
	}
	@RequestMapping(value="/user={userid}/mybooking")
	public ModelAndView mybooking(@PathVariable("userid") Integer userid,Model model) {
		model.addAttribute("userid", userid);
		return new ModelAndView(new RedirectView("/user={userid}", true));
	}
	@RequestMapping(value="/user={userid}/booking")
	public ModelAndView booking(@PathVariable("userid") Integer userid,Model model) {
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date fromDate=new Date();
		Date toDate=new Date();
		model.addAttribute("from", df.format(fromDate));
		model.addAttribute("to", df.format(toDate));
		return new ModelAndView(new RedirectView("/user={userid}/booking-from={from}-to={to}", true));
	}
	@RequestMapping(value="/user={userid}/booking-from={from}-to={to}")
	public ModelAndView bookingDate(@PathVariable("userid") Integer userid,@PathVariable("from") String fromDate,@PathVariable("to") String toDate) {
		ModelAndView m=new ModelAndView();
		m.addObject("userid", userid);
		m.addObject("from", fromDate);
		m.addObject("to", toDate);
		List<AvailabilitySpaces> asl=db.getAvailability(fromDate, toDate);
		m.addObject("asl", asl);
		m.setViewName("booking");
		return m;
	}
	@RequestMapping(value="/user={userid}/refresh&{from}&{to}")
	public ModelAndView refresh(@PathVariable("userid") Integer userid,@PathVariable("from") String fromDate,@PathVariable("to") String toDate,Model model) {
		model.addAttribute("from",fromDate);
		model.addAttribute("to",toDate);
		return new ModelAndView(new RedirectView("/user={userid}/booking-from={from}-to={to}", true));
	}
	@RequestMapping(value="/admin/shops")
	public ModelAndView shopDetails(Model model) {
		ModelAndView m=new ModelAndView();
		m.addObject("shopCost", db.shopRate());
		m.addObject("roomList", db.roomList());
		m.setViewName("shopAdmin");
		return m;
	}
	@RequestMapping(value="/admin/registerSpace")
	public ModelAndView registerSpace(@RequestParam("category") String category, Model model){
		int spaceId=db.getSpaceId(category);
		db.registerSpace(spaceId, category);
		return new ModelAndView(new RedirectView("/admin/shops", true));
	}
	@RequestMapping(value="/admin/edit")
	public ModelAndView editSpace(@RequestParam("spaceId") String spaceId,@RequestParam("weekdays") String weekdays,
			@RequestParam("weekend") String weekend,@RequestParam("holidays") String holidays) {
		int id,weekDays,weekEnd,holiDays;
		id=Integer.parseInt(spaceId);
		weekDays=Integer.parseInt(weekdays);
		weekEnd=Integer.parseInt(weekend);
		holiDays=Integer.parseInt(holidays);
		if(id==6) {
			db.edit(6, weekDays,"all-days");
		}
		else {
			db.edit(id, weekDays,"week-days");
			db.edit(id, weekEnd,"week-end");
			db.edit(id, holiDays,"public-holidays");
		}
		return new ModelAndView(new RedirectView("/admin/shops", true));
	}
	@RequestMapping(value="/user={userid}/shop-rate")
	public ModelAndView shopRate(@PathVariable("userid") Integer userid,Model model) {
		ModelAndView m=new ModelAndView();
		m.addObject("userid", userid);
		m.addObject("shopCost", db.shopRate());
		m.addObject("roomList", db.roomList());
		m.setViewName("shopUser");
		return m;
	}
	@RequestMapping(value="/user={userid}/confirm")
	public ModelAndView confirmPage(@PathVariable("userid") Integer userid,
			@ModelAttribute("ubc") UserSpace ubc,
			Model model) {
		if(ubc.getSpaceId()==7) {
			ubc.setCost(ubc.getCost()*ubc.getSqFt());
		}	
		db.userBook(ubc);
		model.addAttribute("userid", userid);
		return new ModelAndView(new RedirectView("/user={userid}", true));
	}
	@RequestMapping(value="/user={userid}/calculate&{from}&{to}&{roomId}")
	public ModelAndView calculateCost(@PathVariable("userid") Integer userid,@PathVariable("from") String fromDate,
			@PathVariable("to") String toDate,@PathVariable("roomId") Integer roomId,Model model) throws ParseException {
		UserSpace ub=db.calculate(fromDate, toDate, roomId);
		ub.setId(userid);
		ModelAndView m=new ModelAndView();
		m.addObject("ub", ub);
		UserSpace ubc=new UserSpace();
		m.addObject("ubc", ubc);
		m.setViewName("confirm");
		return m;
	}
	@RequestMapping(value="/user={userid}/cancel&{bookId}")
	public ModelAndView cancel(@PathVariable("userid") Integer userid,@PathVariable("bookId") Integer bookId,Model model) {
		db.cancelBook(bookId);
		model.addAttribute("userid", userid);
		return new ModelAndView(new RedirectView("/user={userid}", true));
	}
	@RequestMapping(value="/user={userid}/complaint")
	public ModelAndView complaintPage(@PathVariable("userid") Integer userid) {
		ModelAndView m=new ModelAndView();
		m.addObject("cu", db.complaintList(userid));
		m.setViewName("complaintUser");
		return m;
	}
	@RequestMapping(value="/user={userid}/registerComplaint")
	public ModelAndView complaintRegister(@PathVariable("userid") Integer userid,
			@RequestParam("roomId") Integer roomId,
			@RequestParam("category2") String category2,
			@RequestParam("description") String description,
			Model model) {
		complaintUser cu=new complaintUser();
		cu.setId(userid);
		cu.setRoomId(roomId);
		cu.setCategory(category2);
		cu.setDescription(description);
		db.complaintRegister(userid, roomId, category2, description);
		model.addAttribute("userid", userid);		
		return new ModelAndView(new RedirectView("/user={userid}/complaint", true));
	}
	@RequestMapping(value="/admin/complaint")
	public ModelAndView complaintAdmin(Model model) {
		ModelAndView m =new ModelAndView();
		m.addObject("cu", db.complaintList2());
		m.setViewName("complaintAdmin");
		return m;
	}
	@RequestMapping(value="/admin/revenue")
	public ModelAndView revenue(Model model) {
		ModelAndView m =new ModelAndView();
		m.addObject("cu", db.getUserBooked2());
		m.addObject("total", db.totalCost());
		m.setViewName("revenue");
		return m;
	}
	@RequestMapping(value="/admin/dashboard")
	public ModelAndView dashboard(Model model) {
		return new ModelAndView(new RedirectView("/admin", true));
	}
	@RequestMapping(value="/user={userid}/profile")
	public ModelAndView profileView(@PathVariable("userid") Integer userid,Model model) {
		ModelAndView m =new ModelAndView();
		User l =db.getUser(userid);
		m.addObject("l", l);
		m.setViewName("profileView");
		return m;
	}
	@RequestMapping(value="/user={userid}/editProfile")
	public ModelAndView profileEdit(@PathVariable("userid") Integer userid,
			Model model) {
		ModelAndView m =new ModelAndView();
		User l =db.getUser(userid);
		m.addObject("l", l);
		m.setViewName("profileEdit");
		return m;
	}
	@RequestMapping(value="/user={userid}/saveProfile")
	public ModelAndView profileSave(@PathVariable("userid") Integer userid,
			@RequestParam("name") String name,
			@RequestParam("number") String number,Model model) {
		db.editUser(userid, name, number);
		return new ModelAndView(new RedirectView("/user={userid}/profile", true));
	}
	@RequestMapping(value="/user={userid}/booked")
	public ModelAndView booked(@PathVariable("userid") Integer userid,Model model) {
		DateFormat df = new SimpleDateFormat("yyyy-MM");
		Date mnth=new Date();
		model.addAttribute("mnth", df.format(mnth));
		return new ModelAndView(new RedirectView("/user={userid}/AvailableSpaces={mnth}", true));
	}
	@RequestMapping(value="/user={userid}/AvailableSpaces={mnth}")
	public ModelAndView bookedUser(@PathVariable("userid") Integer userid,
			@PathVariable("mnth") String mnth,
			Model model) throws ParseException {
		ModelAndView m =new ModelAndView();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date startDate,endDate;
		String s=mnth+"-01";
		startDate=df.parse(s);
		endDate=df.parse(s);
		Calendar start = Calendar.getInstance();
		start.setTime(startDate);
		Calendar end = Calendar.getInstance();
		end.setTime(endDate);
		end.add(Calendar.MONTH, 1);
		List<List<String>> bookedList=new ArrayList<List<String>>();
		for (Calendar st = start; start.before(end); start.add(Calendar.DATE, 1)) {
			List<String> l = new ArrayList<String>();
			String dt=df.format(st.getTime());
			l.add(dt);
			List<Integer> book=db.spacesBooked(dt);
			for(int i=1;i<=7;i++) {
				if(book.contains(i)) {
					l.add("free");
				}
				else {
					l.add("book");
				}
			}
			bookedList.add(l);
		}
		m.addObject("l", bookedList);
		m.addObject("mnth", mnth);
		m.setViewName("booked");
		return m;
	}
	@RequestMapping(value="/admin/booked&{spaceName}")
	public ModelAndView bookedAdmin(@PathVariable("spaceName") String spaceName, Model model) {
		DateFormat df = new SimpleDateFormat("yyyy-MM");
		Date mnth=new Date();
		model.addAttribute("spaceName", spaceName);
		model.addAttribute("mnth", df.format(mnth));
		return new ModelAndView(new RedirectView("/admin/AvailableSpaces&{spaceName}&{mnth}", true));
	}
	@RequestMapping(value="/admin/AvailableSpaces&{spaceName}&{mnth}")
	public ModelAndView availableAdmin(@PathVariable("spaceName") String spaceName,
			@PathVariable("mnth") String mnth, Model model) throws ParseException {
		ModelAndView m =new ModelAndView();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date startDate,endDate;
		String s=mnth+"-01";
		startDate=df.parse(s);
		endDate=df.parse(s);
		Calendar start = Calendar.getInstance();
		start.setTime(startDate);
		Calendar end = Calendar.getInstance();
		end.setTime(endDate);
		end.add(Calendar.MONTH, 1);
		List<Integer> roomIdList = db.getRoomIdList(spaceName);
		List<List<String>> bookedList=new ArrayList<List<String>>();
		for (Calendar st = start; start.before(end); start.add(Calendar.DATE, 1)) {
			String dt=df.format(st.getTime());
			List<String> dateList = new ArrayList<String>();
			dateList.add(dt);
			dateList.addAll(db.getAvailableRoomId(spaceName, dt));
			bookedList.add(dateList);
		}
		m.addObject("spaceName", spaceName);
		m.addObject("mnth", mnth);
		m.addObject("roomIdList", roomIdList);
		m.addObject("bookedList", bookedList);
		m.setViewName("bookedAdmin");
		return m;
	}
	
	@RequestMapping(value="/admin/user={userid}")
	public ModelAndView userBooked(@PathVariable("userid") Integer userid,Model model) {
		ModelAndView m=new ModelAndView();
		User l =db.getUser(userid);
		List<UserSpace> us=db.getUserBooked(userid);		
		m.addObject("l",l);
		m.addObject("us",us);
		m.setViewName("userView");
		return m;
	}
	@RequestMapping(value="/admin/user&{userid}&cancel&{bookId}")
	public ModelAndView cancelAdmin(@PathVariable("userid") Integer userid,@PathVariable("bookId") Integer bookId,Model model) {
		db.cancelBook(bookId);
		model.addAttribute("userid", userid);
		return new ModelAndView(new RedirectView("/admin/user={userid}", true));
	}
}
