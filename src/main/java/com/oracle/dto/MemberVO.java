package com.oracle.dto;

public class MemberVO {
	private String nickname;
	private String userid;
	private String pwd;
	private int subscription;
	private int pref_subj;
	private int pref_press;
	private String birth;
	private int gender;
	private String email;
	private String kakao_id;

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public int getSubscription() {
		return subscription;
	}

	public void setSubscription(int subscription) {
		this.subscription = subscription;
	}

	public int getPref_subj() {
		return pref_subj;
	}

	public void setPref_subj(int pref_subj) {
		this.pref_subj = pref_subj;
	}

	public int getPref_press() {
		return pref_press;
	}

	public void setPref_press(int pref_press) {
		this.pref_press = pref_press;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getKakao_id() {
		return kakao_id;
	}

	public void setKakao_id(String kakao_id) {
		this.kakao_id = kakao_id;
	}

	@Override
	public String toString() {
		return "MemberVO [name=" + nickname + ", userid=" + userid + ", pwd=" + pwd
				+ "subscription=" + subscription + "pref_subj" + Integer.toString(pref_subj)
				+ "pref_press=" + pref_press + "birth=" + birth + "gender" + gender
				+ ", email=" + email + ", phone=" + kakao_id
				+ "]";
	}
}
