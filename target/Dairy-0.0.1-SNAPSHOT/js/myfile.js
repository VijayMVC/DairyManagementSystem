/**
 * 
 */
 function createUser()
 {
    var data="<div class='container'><h2>Add Users</h2><form role='form'><div class='form-group'>  <label for='usrs'>:</label><input type='text' class='form-control' id='usrs' placeholder='Enter User Name'> </div><div class='form-group'><label for='pwd'>Password:</label> <input type='password' class='form-control' id='pwd' placeholder='Enter password'></div> <div class='checkbox'><label><input type='checkbox'> Remember me</label></div> <button type='submit' class='btn btn-default'>Submit</button> </form></div>";
    var data1="<div class='panel panel-info'><div class='panel-heading'><p>Add User<p></div><div class='panel-body'><form role='form'  method='post' action='.././saveuser.html'><div class='form-group'>  <label for='usrs'>User Name:</label><input type='text' class='form-control' name='uname' id='usrs' placeholder='Enter User Name'> </div><div class='form-group'><label for='sel1'>User Type:</label><select class='form-control' id='sel1' name='utype'><option>SuperAdmin</option> <option>Admin</option><option>Editor</option> <option>4</option></select></div><div class='form-group'><label for='pwd'>Password:</label> <input type='password' name='upassword' class='form-control' id='pwd' placeholder='Enter password'></div> <div class='checkbox'><label><input type='checkbox'> Remember me</label></div> <button type='submit' class='btn btn-default'>Submit</button> </form></div></div>"; 
    var data2="<div class='table-responsive'> <table class='table'><thead> <tr>   <th>UserNo:</th><th>Username</th> <th>Usertype</th><th>password</th> <th>edit</th><th>delete</th> </tr></thead> <tbody>  <tr>        <td>1</td> <td>Edit</td> <td>Pitt</td><td>35</td> <td>edit</td>  <td>Delete</td></tr></tbody> </table></div>";
    var x=document.getElementById("test"); 
	x.innerHTML=data1+""+data2;
 }
 function createUserType()
 {
	 var data="<div class='panel panel-default'><div class='panel-heading'>ADD USERTYPES:</div><div class='panel-body'><form role='form' method='post' action='.././save.html'><div class='form-group'><label for='utype'>User Type</label> <input type='text'class='form-control' name='utype' value='' id='utype'></div><button type='submit' class='btn btn-default'>Submit</button></form></div></div>";
	 var data1="<h2>USER TYPE</h2><div class='table-responsive'><table class='table'><thead><tr><th>NO:</th><th>Usertype:</th> </tr></thead><tbody><tr> <td>1</td> <td>Anna</td> </tr> </tbody></table> </div>";
	 var x=document.getElementById("test");
	 x.innerHTML=data+""+data1;
	 
	 
 }
 function calMilkAmount()
 {
	 
	 var a=document.getElementById("pdquantity").value;
	 var b=document.getElementById("pdfatquan").value;
	 var c=document.getElementById("pdfatlit").value;
	 var totamount=a*b*c;
	 document.getElementById("tamount").value=totamount;
	 	 
 }
 
 