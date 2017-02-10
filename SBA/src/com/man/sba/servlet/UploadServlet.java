package com.man.sba.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;

public class UploadServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
			FileItemFactory fact = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(fact);
			boolean isMultipartContent = upload.isMultipartContent(req);
			String serDiQuel = "";
			String service = "";
			if (isMultipartContent) {
				List<FileItem> fields = upload.parseRequest(req);
				for (int i = 0; i < fields.size(); i++) {
					FileItem item = fields.get(i);
					if (item.getFieldName().equals("serdiquel")) {
						serDiQuel = item.getString();

					} else if (item.getFieldName().equals("service")) {
						service = item.getString();
					}
				}

			}

			String url = "http://localhost:8080/Framework/upload";
			HttpClient client = HttpClientBuilder.create().build();
			HttpPost post = new HttpPost(url);

			System.out.println("SBA .. "+serDiQuel);
			List<NameValuePair> urlParameters = new ArrayList<NameValuePair>();
			urlParameters.add(new BasicNameValuePair("serdiquel", serDiQuel));
			urlParameters.add(new BasicNameValuePair("service", service));

			post.setEntity(new UrlEncodedFormEntity(urlParameters));

			client.execute(post);
			resp.sendRedirect("admin.jsp?res=success");

		} catch (Exception e) {
			e.printStackTrace();
			resp.sendRedirect("admin.jsp?res=failure");
		}
	}
}
