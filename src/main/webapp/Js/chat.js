const inputField = document.querySelector(".msg"),
submitbtn = document.querySelector(".submitbtn"),
chatBox = document.querySelector(".message-content");
let  incoming_id = document.querySelector("#incoming_id").value;
let searchval =""
inputField.focus();
inputField.onkeyup = () => {
  if (inputField.value != "") {
    submitbtn.classList.add("active");
  } else {
    submitbtn.classList.remove("active");
  }
};

const insertmsg = () => {

  let msg = document.getElementById("msg").value;
  let xhr = new XMLHttpRequest();

    xhr.open("POST","insertmsgchat.jsp", true);
  
    xhr.onload = () => {
      if (xhr.readyState === XMLHttpRequest.DONE) {
        if (xhr.status === 200) {
        
          inputField.value = "";
          scrollToBottom();
        }
      }
    };
 
  xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send(
      "msg="+msg+"&incoming_id="+incoming_id
    );
  };

chatBox.onmouseenter = () => {
  chatBox.classList.add("active");
};

chatBox.onmouseleave = () => {
  chatBox.classList.remove("active");
};

inputField.addEventListener("keypress",(e)=>{
if(e.key === "Enter")
{
  insertmsg();
}
})

const chat = () =>{
  
  incoming_id = document.querySelector("#incoming_id").value;
  let xhr = new XMLHttpRequest();
  xhr.open("POST", "getchat.jsp", true);

  xhr.onload = () => {

    if (xhr.readyState === XMLHttpRequest.DONE) {
      if (xhr.status === 200) {
        let data = xhr.response;
        chatBox.innerHTML = data;
      
        if (!chatBox.classList.contains("active")) {
          scrollToBottom();
        }
      }
    }
  };
  xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  if(incoming_id != 0)
  {
  xhr.send("incoming_id=" + incoming_id);
  }
}


const search = () =>{
  searchval = document.querySelector("#searchbox").value;
  let xhr = new XMLHttpRequest();
  xhr.open("POST", "searchuser.jsp", true);

  xhr.onload = () => {

    if (xhr.readyState === XMLHttpRequest.DONE) {
      if (xhr.status === 200) {
       
        document.getElementsByClassName("user-det")[1].innerHTML = xhr.response;
    
      }
    }
   
  };
  xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xhr.send("searchval=" + searchval);
}


setInterval(() => {
chat();
}, 500);

function scrollToBottom() {
  chatBox.scrollTop = chatBox.scrollHeight;
}

