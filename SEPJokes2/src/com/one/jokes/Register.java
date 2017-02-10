package com.one.jokes;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;

public class Register {

	public static void main(String arg[]) throws ClientProtocolException,
			IOException {
		String url = "http://localhost:8080/Framework/register";
		HttpClient client = HttpClientBuilder.create().build();
		HttpPost post = new HttpPost(url);

		List<NameValuePair> urlParameters = new ArrayList<NameValuePair>();
		File file = new File(
				"C:/SOFTWARES/Project Final Deliverables/SerDiQueL and DB Queries/sepJokes.txt");
		BufferedReader buf = new BufferedReader(new FileReader(file));
		String ln = "";
		String serdiquel = "";
		while ((ln = buf.readLine()) != null) {
			serdiquel = serdiquel + ln;
		}

		//serdiquel = "<root>ABCD</root>";
		System.out.println(serdiquel);
		urlParameters.add(new BasicNameValuePair("SerDiQueL", serdiquel));
		urlParameters.add(new BasicNameValuePair("contextPath",
				"http://localhost:8080/SEPJokes2/test"));
		urlParameters.add(new BasicNameValuePair("name", "jokes"));

		urlParameters.add(new BasicNameValuePair("COST", "9500"));

		urlParameters.add(new BasicNameValuePair("RESPONSETIME", "6.5"));

		urlParameters.add(new BasicNameValuePair("QOS", "POPSO"));

		post.setEntity(new UrlEncodedFormEntity(urlParameters));

		HttpResponse response = client.execute(post);
		System.out.println("Response Code : "
				+ response.getStatusLine().getStatusCode());

		BufferedReader rd = new BufferedReader(new InputStreamReader(response
				.getEntity().getContent()));

		StringBuffer result = new StringBuffer();
		String line = "";
		while ((line = rd.readLine()) != null) {
			result.append(line);
		}

		System.out.println(result.toString());

	}
}
