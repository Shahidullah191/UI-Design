class CompanyInfo{
  String iconUrl;
  String cName;
  String title;
  String address;

  CompanyInfo(this.iconUrl, this.cName, this.title, this.address);

  static List<CompanyInfo> genertaedConoanyInfo(){
    return [
      CompanyInfo("images/arbnb_icon.png", "Airbnb inc,", "VP Busniess Intelegence", "50 Herminia Stravenue, \nCanada"),
      CompanyInfo("images/google_icon.png", "Google LLC", "Prieciple Intelegence", "25 Texas Stravenue, \nUSA"),
    ];
  }
}