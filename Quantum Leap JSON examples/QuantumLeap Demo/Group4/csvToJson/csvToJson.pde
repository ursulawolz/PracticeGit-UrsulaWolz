// The following short CSV file called "mammals.csv" is parsed 
// in the code below. It must be in the project's "data" folder.
//


Table table;
PrintWriter output;
JSONArray jobjects;


void setup() {

  table = loadTable("Group4.csv", "header");
  jobjects = new JSONArray();

  println(table.getRowCount() + " total rows in table"); 
  int i = 0;
  String [] fieldNames = {"Name", "Qentry", "Lattitude", "Longitude", "Marker", "InfoWindow","EssayTitle", "EssayLink", "NextTitle", "OtherLink"};
  for (TableRow row : table.rows()) {
    JSONObject obj = new JSONObject();
    obj = new JSONObject();
    for (String fieldName : fieldNames) obj.setString(fieldName, row.getString(fieldName));
    jobjects.setJSONObject(i, obj);
  //  println("The object:" + obj);
    println("In objects file: " + jobjects.getJSONObject(i));
    i++;
  }
  saveJSONArray(jobjects, "data/Group4.json");
}