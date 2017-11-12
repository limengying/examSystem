package test;


import org.junit.Test;

import entity.Examinee;
import entity.User;
import service.ExamineeService;
import service.SingleChoiceService;
import service.UserService;

public class UnitTest1 {

	@Test
	public void test() {
		UserService userService=new UserService();
		User user=userService.login(10001, "10001");
		System.out.println(user);
	}
	@Test
	public void test1() {
		ExamineeService examineeService=new ExamineeService();
		Examinee examinee=examineeService.login(20001, "20001");
		System.out.println(examinee);
	}
	@Test
	public void test2() {
		SingleChoiceService singleChoiceService=new SingleChoiceService();
		singleChoiceService.getSingleChoicesInRandom("装配", 2);
	}
}
