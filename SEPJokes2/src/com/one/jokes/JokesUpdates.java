
package com.one.jokes;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


public class JokesUpdates extends HttpServlet {

	List<String> jokes;

	public void init() {
		jokes = new ArrayList<String>();
		jokes.add("From SEP Jokes 2: Wake up with a smile##It's Perfectly Legal To Kill Someone In Your Dreams, That's Why I Wake Up With A Smile Everyday");
		jokes.add("From SEP Jokes 2: a person driving slow in the fast lane##I’m not judgmental, so when I see a person driving slow in the fast lane, I never assume what gender she is");
		jokes.add("From SEP Jokes 2: guy is such a sweetheart##This guy is such a sweetheart, And he loves me! I am going to treat him like my brother");
		jokes.add("From SEP Jokes 2: addiction with facebook.com##Height of addiction:<br>In a college form, when asked about the “permanent address”, a student wrote www.facebook.com!");
		jokes.add("From SEP Jokes 2: If Microsoft Buy Facebook##If Microsoft Buy Facebook, First Notification We’ll Get is . . You Have To Install Drivers To Add Friends");
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		resp.setContentType("application/json");
		PrintWriter pw = resp.getWriter();

		List<DetailsBean> jokesUpdates = new ArrayList<DetailsBean>();

		DetailsBean bean = new DetailsBean();
		Random r = new Random();
		int rand = r.nextInt(jokes.size()-1);
		String jk = jokes.get(rand);
		bean.setTopic(jk.split("##")[0]);
		bean.setDesc(jk.split("##")[1]);

		jokesUpdates.add(bean);

		Gson gson = new Gson();
		String jsondata = gson.toJson(jokesUpdates);
		pw.print(jsondata);
		pw.close();
	}

}
