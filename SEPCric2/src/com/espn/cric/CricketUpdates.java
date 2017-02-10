
package com.espn.cric;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


public class CricketUpdates extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		resp.setContentType("application/json");
		PrintWriter pw = resp.getWriter();

		List<DetailsBean> circUpdates = new ArrayList<DetailsBean>();

		DetailsBean bean = new DetailsBean();
		bean.setTopic("SEP2:IND vs AUS, World T20 International - March 2016");
		bean.setDesc("IND : 50/0 <br>8.4 Overs<br>S Dhawan 28(20)*<br>R Sharma 22(32)*");

		DetailsBean bean2 = new DetailsBean();
		bean2.setTopic("SEP2:PAK vs WI, World T20 International - March 2016");
		bean2.setDesc("Match starts on 31-Mar-2016 21:00 IST");

		circUpdates.add(bean);
		circUpdates.add(bean2);

		Gson gson = new Gson();
		String jsondata = gson.toJson(circUpdates);
		pw.print(jsondata);
		pw.close();
	}

}
