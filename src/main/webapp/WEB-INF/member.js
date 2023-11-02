function loginCheck() {
	if (document.frm.uid.value.length == 0) {
		alert("아이디를 써주세요");
		frm.uid.focus();
		return false;
	}
	if (document.frm.pw.value == "") {
		alert("암호는 반드시 입력해야 합니다.");
		frm.pw.focus();
		return false;
	}
	return true;
}

function idCheck() {
	if (document.frm.uid.value == "") {
		alert('아이디를 입력하여 주십시오.');
		document.formm.uid.focus();
		return;
	}
	var url = "idCheck.do?userid=" + document.frm.uid.value;
	window.open(url, "_blank_1",
					"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}

function idok(userid) {
	opener.frm.uid.value = document.frm.uid.value;
	opener.frm.reid.value = document.frm.uid.value;
	self.close();
}

function joinCheck() {
	if (document.frm.nickname.value.length == 0) {
		alert("이름을 써주세요.");
		frm.nickname.focus();
		return false;
	}
	if (document.frm.uid.value.length == 0) {
		alert("아이디를 써주세요");
		frm.uid.focus();
		return false;
	}
	if (document.frm.uid.value.length < 4) {
		alert("아이디는 4글자이상이어야 합니다.");
		frm.uid.focus();
		return false;
	}
	if (document.frm.pw.value == "") {
		alert("암호는 반드시 입력해야 합니다.");
		frm.pw.focus();
		return false;
	}
	if (document.frm.pw.value != document.frm.pw_check.value) {
		alert("암호가 일치하지 않습니다.");
		frm.pw.focus();
		return false;
	}
	if (document.frm.reid.value.length == 0) {
		alert("중복 체크를 하지 않았습니다.");
		frm.uid.focus();
		return false;
	}
	return true;
}