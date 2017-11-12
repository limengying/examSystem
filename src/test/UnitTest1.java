package test;


import org.junit.Test;

import entity.User;
import service.UserService;

public class UnitTest1 {

	@Test
	public void test() {
		UserService userService=new UserService();
		User user=userService.login(10001, "10001");
		System.out.println(user);
	}

}
