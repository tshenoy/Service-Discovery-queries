package com.man.sba.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.man.sba.helper.CricketHelper;

public class CricketServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("Calling");
		String result = CricketHelper.getCricketScores();
		System.out.println("Result : " + result);

		if (result != null && result.trim().length() == 0) {
			throw new ServletException();
		}
			try {
				resp.setContentType("application/json");
				PrintWriter pw = resp.getWriter();
				pw.print(result);

				pw.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

	}

}
