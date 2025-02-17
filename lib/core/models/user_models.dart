class UserModel {
  String? name;
  String? phoneNumber;
  String? email;
  String? password;
  // UserModel(this.name,this.phoneNumber,this.email,this.password);
  String? validateName() {
    if (name == '' || name == null) {
      return 'Please Enter Name';
    }
    return null;
  }

  String? validatePhoneNumber() {
    if (phoneNumber == '' || phoneNumber == null) {
      return 'Please Enter phone number';
    }
    return null;
  }

  String? validateEmail() {
    if (email == null || email == '') {
      return 'Please enter email address';
    }
else    if (
        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(email!)) {
          return 'Enter valid email';
            }
    return null;
  
  }

  String? validatePassword() {
    if (password == null || password == '') {
      return 'Please enter Passord';
    }
    return null;
  }
}