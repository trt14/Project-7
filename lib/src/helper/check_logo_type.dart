String getLogo(String type) {
  String logoUrl = "assets/icons/";
  switch (type) {
    case ("github"):
      logoUrl += "github.png";
      break;
    case ("apk"):
      logoUrl += "apk.png";
      break;
    case ("app-store"):
      logoUrl += "app-store.png";
      break;
    case ("playstore"):
      logoUrl += "playstore.png";
      break;
    case ("figma"):
      logoUrl += "figma.png";
      break;
    case ("pinterest"):
      logoUrl += "pinterest.png";
      break;
    case ("connections"):
      logoUrl += "connections.png";
      break;
    case ("teaching"):
      logoUrl += "teaching.png";
      break;
    case ("video"):
      logoUrl += "video.png";
      break;
    default:
      logoUrl += "connections.png";
  }
  return logoUrl;
}