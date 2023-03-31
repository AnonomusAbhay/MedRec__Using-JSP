let pbox1 = document.querySelector(".pbox1");
let pbox2 = document.querySelector(".pbox2");
let pbox3 = document.querySelector(".pbox3");
let naxtbtn1 = document.querySelector(".naxtbtn1");
let naxtbtn2 = document.querySelector(".naxtbtn2");
let naxtbtn3 = document.querySelector(".naxtbtn3");
let pbox2child2 = document.querySelector(".pbox2child2")
let uage = document.querySelector("#uage");
let disease1 = document.querySelector("#disease1");
let disease2 = document.querySelector("#disease2");
let line1 = document.querySelector(".line1");
let line2 = document.querySelector(".line2");
let line3= document.querySelector(".line3");
// let ugender = document.querySelector("#ugender");
let ugender;
// let ipage = document.querySelector("#ipage");
// let ipgender = document.querySelector("#ipgender");
let age;
let symptomslist=[];

naxtbtn1.addEventListener("click", () => {
    // console.log(uage.value);
   
    age = uage.value;
    if (age > 0 && age < 150)
    {
        
       
    ugender = document.querySelector('input[name="ugender"]:checked').value;
    
        line1.style.border = " 4px solid #82c7ff";
        line2.style.border = " 4px solid #2f82c6";
    pbox1.style.display = "none";
    naxtbtn1.style.display = "none";
    pbox2.style.display = "flex";
    naxtbtn2.style.display = "flex";
 
    }
    else
    {
        
        }
});

naxtbtn2.addEventListener("click", () => {
    line2.style.border = " 4px solid #82c7ff";
    line3.style.border = " 4px solid #2f82c6";
    console.log(age + ugender);
    pbox2.style.display = "none";
    naxtbtn2.style.display = "none";
    pbox3.style.display = "flex";
    naxtbtn3.style.display = "flex";  
  
  //dropdown
//   var selected = [];
//     for (var option of document.getElementsByClassName('sele78').options)
//     {
//         if (option.selected)
//         {
//             selected.push(option.value);
//             }
//     }
//     console.log(selected);
    document.getElementById('demo-multiple-select');
     


    // let url = 'https://sandbox-healthservice.priaid.ch/diagnosis?symptoms=[' + '9' + symptomslist + ']&gender=' + ugender + '&year_of_birth=' + age + '&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6Im0uYS5yLmlzLnNhYWxkLmEwQGdtYWlsLmNvbSIsInJvbGUiOiJVc2VyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvc2lkIjoiMTE3OTUiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3ZlcnNpb24iOiIyMDAiLCJodHRwOi8vZXhhbXBsZS5vcmcvY2xhaW1zL2xpbWl0IjoiOTk5OTk5OTk5IiwiaHR0cDovL2V4YW1wbGUub3JnL2NsYWltcy9tZW1iZXJzaGlwIjoiUHJlbWl1bSIsImh0dHA6Ly9leGFtcGxlLm9yZy9jbGFpbXMvbGFuZ3VhZ2UiOiJlbi1nYiIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvZXhwaXJhdGlvbiI6IjIwOTktMTItMzEiLCJodHRwOi8vZXhhbXBsZS5vcmcvY2xhaW1zL21lbWJlcnNoaXBzdGFydCI6IjIwMjMtMDItMTQiLCJpc3MiOiJodHRwczovL3NhbmRib3gtYXV0aHNlcnZpY2UucHJpYWlkLmNoIiwiYXVkIjoiaHR0cHM6Ly9oZWFsdGhzZXJ2aWNlLnByaWFpZC5jaCIsImV4cCI6MTY3NjQ4NTE3MiwibmJmIjoxNjc2NDc3OTcyfQ.aeNlyR7AtbUfWuf6kjuRo2F0clHFG7vZOAN-E_9uSgU&format=json&language=en-gb';

    let url = 'https://sandbox-healthservice.priaid.ch/diagnosis?symptoms=[' + '9' + symptomslist + ']&gender=' + ugender + '&year_of_birth=' + age + '&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6Im0uYS5yLmlzLnNhYWxkLmEwQGdtYWlsLmNvbSIsInJvbGUiOiJVc2VyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvc2lkIjoiMTE3OTUiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3ZlcnNpb24iOiIyMDAiLCJodHRwOi8vZXhhbXBsZS5vcmcvY2xhaW1zL2xpbWl0IjoiOTk5OTk5OTk5IiwiaHR0cDovL2V4YW1wbGUub3JnL2NsYWltcy9tZW1iZXJzaGlwIjoiUHJlbWl1bSIsImh0dHA6Ly9leGFtcGxlLm9yZy9jbGFpbXMvbGFuZ3VhZ2UiOiJlbi1nYiIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvZXhwaXJhdGlvbiI6IjIwOTktMTItMzEiLCJodHRwOi8vZXhhbXBsZS5vcmcvY2xhaW1zL21lbWJlcnNoaXBzdGFydCI6IjIwMjMtMDItMTQiLCJpc3MiOiJodHRwczovL3NhbmRib3gtYXV0aHNlcnZpY2UucHJpYWlkLmNoIiwiYXVkIjoiaHR0cHM6Ly9oZWFsdGhzZXJ2aWNlLnByaWFpZC5jaCIsImV4cCI6MTY3OTI2MzA3NCwibmJmIjoxNjc5MjU1ODc0fQ.G7VF_f66w8WHmZ7zgAdgsAeTxTAyhOJB1pKtPCO0TuY&format=json&language=en-gb';

    console.log(url);
    fetch(url)
.then(res => res.json()) 
        .then((data) => {
            
            if (data.length > 1) {
                document.querySelector("#disease1").innerHTML = data[0].Issue.Name;
                document.querySelector("#range1").value = data[0].Issue.Accuracy;
                document.querySelector("#perrange1").innerHTML = data[0].Issue.Accuracy;
                document.querySelector("#disease2").innerHTML = data[1].Issue.Name;
                document.querySelector("#range2").value = data[1].Issue.Accuracy;
                document.querySelector("#perrange2").innerHTML = data[1].Issue.Accuracy;
            }else if (data.length == 0)
            {
                document.querySelector("#disease1").innerHTML = "No disease matches with your symptoms";
            }else
            {
                document.querySelector("#disease1").innerHTML = data[0].Issue.Name;
                document.querySelector("#range1").value = data[0].Issue.Accuracy;
                document.querySelector("#perrange1").innerHTML = data[0].Issue.Accuracy;  
            }
                
            
        })

    // 

});

 

function selectvalue()
{  
    let del = document.getElementById('demo-multiple-select').value;
    let count = 0;
    for (let z = 0; z < symptomslist.length; z++)
    {
        if (symptomslist[z] == del)
        {
            count++;
        }
        
    }
    if (count == 0)
    {
        symptomslist.push(del); 
    }
    
}