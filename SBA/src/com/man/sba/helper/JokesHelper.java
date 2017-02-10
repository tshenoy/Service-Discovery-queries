package com.man.sba.helper;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class JokesHelper {

	public static String getJokes() throws ClientProtocolException, IOException {
		@SuppressWarnings("deprecation")
		HttpClient client = new DefaultHttpClient();
		HttpGet request = new HttpGet(
				"http://localhost:8080/Framework/servicerequestor?type=jokes");
		HttpResponse response = client.execute(request);
		BufferedReader rd = new BufferedReader(new InputStreamReader(response
				.getEntity().getContent()));

		String line = "";
		StringBuffer textview = new StringBuffer();
		while ((line = rd.readLine()) != null) {
			textview.append(line);
		}
		String result = textview.toString();
		return result;

	}

}
