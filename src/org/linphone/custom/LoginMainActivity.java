package org.linphone.custom;

import org.linphone.R;
import org.linphone.setup.SetupActivity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;

public class LoginMainActivity extends Fragment implements OnClickListener{

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		View v = inflater.inflate(R.layout.login_main, container, false);
		v.findViewById(R.id.btn_login_1).setOnClickListener(this);
		v.findViewById(R.id.btn_login_2).setOnClickListener(this);
		v.findViewById(R.id.btn_login_3).setOnClickListener(this);
		return v;
	}
	
	@Override
	public void onClick(View arg0) {
		// TODO Auto-generated method stub
		
		((SetupActivity)getActivity()).onClick(arg0);
		//startActivity(new Intent(getActivity(), LoginProviderActivity.class));
	}
}
