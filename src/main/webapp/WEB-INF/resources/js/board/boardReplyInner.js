	'use strict'

 //controller 상호 전달 인수s
 const reqPage = document.getElementById("reqPage").value;
 //const bnum = document.getElementById("bnum").value;
 const origin_pucode = document.getElementById("ucode").value;
 const nowLogedUcode =   document.getElementById("IRnickname").getAttribute("data-sessionUcode");
//로그인 여부체크
 let isLogin =  document.querySelector(".typing").getAttribute("data-isLogin");

console.log("is Login " + (isLogin == 'false'))
 	

//작성창 
const wrtTag = document.getElementById("filloutHere");
const replaceableAreaTag = document.getElementById("replaceableArea")
const innerRe_wrapperTag =  document.querySelector(".innerRe_wrapper")
//inner 댓글 리스트 페이지 수 
let innerRqPage = Number(document.getElementById("showMoreBtn").getAttribute("data-innerRqPage")) ;
	 
	 //document.getElementById("showMoreBtn").getAttribute("data-innerRqPage");	
//목록 불러오기 
list_f();
//마우스 해당구역 벗어날때 메뉴 히든 처리 
// 현재 이벤트가 일어나는 구역 
let clickedTag;// 이전에 클릭한 tag
let clickedBcNum //이전에 클릭한 태그가 속한 댓글의 bcnum
let nowClickedBcNum // 지금 클릭한 태그가 속한 댓글의 bcnum

let tagNowOn; //현재 마우스 포인트가 올라가있는 태그 
let bcNumNowOn; // 현재 마우스 포인트가 올라가있는 태그가 속한 댓글의 bcnum

//댓글 리스트 범위에 이벤트 걸기
innerRe_wrapperTag.addEventListener("click",bcommentTags_f)

innerRe_wrapperTag.addEventListener("mouseover",function(e){
	
	 hideItem(e);



}) //innerRe_wrapperTag

	function hideItem(e){
		//부모 태그가 없을때 익셉션 처리
			if(e.target.closest(".bcomment") == undefined) return;
			tagNowOn = e.target.className;
			bcNumNowOn =e.target.closest(".bcomment").parentElement.getAttribute("data-bcnum");
			
		//댓글 리스트 
		if(clickedTag == undefined ) return;
		if(clickedTag.classList.contains("fas") ){			
		if(clickedBcNum != bcNumNowOn ){     	
		   clickedTag.nextElementSibling.classList.add("hidden")   
		   }
		}
		}



//wrapper 전역 클릭 이벤트 감지 
function bcommentTags_f(e){
	hideItem(e);
	
    //작성창 이벤트 
    //등록 및 취소 버튼 이벤트 
    wrtTag_f(e);

	//ellipsis 버튼 클릭
	//수정 삭제 이벤트   
    ellipsisBtn_f(e);	    

    //답글쓰기 버튼 클릭
    //작성창 추가
    replyWriting_f(e);
    
    //선호 비선호 투표
    voteGoodBad(e);

	
}




//이벤트 리스너 구현 파트
//----------------------------------------------------------------------------------------------------------------	 
function wrtTag_f(e){     	
     //댓글 작성창 파트
     //활성화  타겟 : typing    
    if(e.target.classList.contains("typing") && e.target.tagName == 'DIV'){
  
    if(isLogin == "true"){
     	console.log("타이핑 구역 클릭")        
        e.target.setAttribute("contenteditable", "true");
        e.target.focus();        
        //등록 and 취소 버튼 보이게
        e.target.nextElementSibling.classList.remove("hidden");
         e.target.nextElementSibling.classList.add("shown");
        e.target.classList.add("typable"); 
    	 }else{    		 
    		 toDoLogin();
    	 }
    }
}//wrtTag_f



//부모&자식 댓글 파트
//ellipsis 버튼 클릭 이벤트 	
function ellipsisBtn_f(e){
	
    if(e.target.classList.contains("fa-ellipsis-v")  && e.target.tagName == 'I'){    	
        //새로이 찍은 태그가 속한 댓글의 bcnum
     	nowClickedBcNum  =  e.target.closest(".bcomment").parentElement.getAttribute("data-bcnum");
        // 최초 클릭 clickedTag  == undefined
        if(clickedTag == undefined){                    	
            //클릭타겟이 바뀌면 BCNum도 같이 바뀌어야함.
            clickedTag = e.target; 
            clickedBcNum = nowClickedBcNum;          
        //다른 ellipsis 버튼을 클랙했을때 
        } else if(clickedBcNum != nowClickedBcNum){
            //이전에 클릭한 태그 숨김    
        	clickedTag.nextElementSibling.classList.add("hidden");
        	//target 바꾸기
        	  clickedTag = e.target;
              clickedBcNum =nowClickedBcNum;
              //이번에 클릭한 태그 보이기 
              e.target.nextElementSibling.classList.remove("hidden");    
              
         } else if(clickedBcNum == nowClickedBcNum){
        	 //버튼 visible
        	 e.target.nextElementSibling.classList.remove("hidden");    
  }
     
}
}


//수정 삭제 버튼 이벤트    	
function modDelBtn_f(e){
	let _bccontent = e.closest(".bcomment").parentElement.querySelector(".typed").textContent;
	let bcnum = e.closest(".bcomment").parentElement.getAttribute("data-bcnum");
	let nickname = document.getElementById("IRnickname").textContent
	
	
    switch(e.textContent){
        case "수정":         	
        	
 
        if(e.tagName == 'BUTTON'){         
            let str = ''; 
            str += `<div class="filloutHere bcomment" >`;
            str += `<div class="profile"><div  class="profileImg">${nickname.substring(0,1) }</div></div>`;
            str += `<div class="userinfo">`;            
            str += `<div class="typed typing" contenteditable="true" data-placeholder="댓글 입력..." > ${_bccontent}</div>`
            str += `<div class=" rbtnGrp shown" id="rbtnGrp"> `
            str += `<button class="btn" id="rwriteBtn" onClick="mod_f(this)">수정</button>`
            str += `<button class="btn" id="rcancelBtn" onClick="list_f(this)">취소</button>`
            str += `</div>`
            str += `</div>`
            str += `</div>`
            //tag 속성 수정모드로 변경
            e.closest(".bcomment").parentElement.innerHTML = str;            
            }
     
        break;
        case "삭제":
            if(e.tagName == 'BUTTON'){
                console.log("삭제 버튼 클릭됨")                  
                if(confirm("삭제하시겠습니까")){            
                	del_f(bcnum);
                }
            }
        break;           
    }
}


//댓글 수정 취소 
function list_f(e){
	const xhttp = new XMLHttpRequest();
	xhttp.addEventListener("readystatechange", ajaxCall);
	const url = `http://localhost:9080/pfpkg/bcomment/${bnum}/1`;
	xhttp.open('get',url)
	xhttp.setRequestHeader('Content-Type','application/json;charset=utf-8')
	xhttp.send();      
}


//댓글 수정 처리
function mod_f(e){
	
	
	
	const xhttp = new XMLHttpRequest();
	xhttp.addEventListener("readystatechange", ajaxCall);	
	   let bcnum ;
	   let _bccontent;
	   let reqMsg = {};	   
	   bcnum = e.closest(".bcomment").parentElement.getAttribute("data-bcnum");	     	   
	   _bccontent =   e.parentElement.previousElementSibling.textContent;

	   reqMsg.bnum = bnum;
       reqMsg.bccontent = _bccontent;
       reqMsg.bcnum = bcnum;      
       
       console.log("bcnum +=================" + bcnum);
	   console.log("_bccontent +=================" + _bccontent);
	
	const changeIntoJson = JSON.stringify(reqMsg);
	const url = `http://localhost:9080/pfpkg/bcomment/modify/${reqPage}`;
	xhttp.open('post',url)
	xhttp.setRequestHeader('Content-Type','application/json;charset=utf-8')
	xhttp.send(changeIntoJson);        
}
//댓글 삭제 처리
function del_f(bcnum){
	const xhttp = new XMLHttpRequest();
	xhttp.addEventListener("readystatechange", function(e){
	list_f();
		
	});	
	
	let reqMsg = {};
    reqMsg.bnum = bnum;
    reqMsg.bcnum = bcnum;     
    const changeIntoJson = JSON.stringify(reqMsg);
	const url = `http://localhost:9080/pfpkg/bcomment/delete/${innerRqPage}`;
	xhttp.open('post',url)
	xhttp.setRequestHeader('Content-Type','application/json;charset=utf-8')
	xhttp.send(changeIntoJson);          
	
}



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



//답글쓰기 버튼 

function replyWriting_f(e){
 if(e.target.classList.contains("reReply")  && e.target.tagName == 'BUTTON'){   
	//로그인 체크 메소드
	
		if(isLogin == 'true'){
if(e.target.closest(".bcomment").parentElement.childElementCount  < 2){	
 	addWindow(e);}
}else{
	toDoLogin();
}

}
}


//댓글 입력창 추가 메소드 
function addWindow(e){
let nickname = document.getElementById("IRnickname").textContent
let str = ''; 
str += `<div class="filloutHere bcomment" >`;
str += `<div class="profile"><div  class="profileImg">${nickname.substring(0,1) }</div></div>`;
str += `<div class="userinfo">`;
str += `<div><span class="IRnickname">${nickname }</span></div>`;
str += `<div class="typing" contenteditable="false" data-placeholder="댓글 입력..."></div>`
str += `<div class=" rbtnGrp hidden" id="rbtnGrp"> `
str += `<button class="btn" id="rwriteBtn" onClick="rbtnGrpTag_f(this)">등록</button>`
str += `<button class="btn" id="rcancelBtn" onClick="rbtnGrpTag_f(this)">취소</button>`
str += `</div>`
str += `</div>`
str += `</div>`
e.target.closest(".bcomment").parentElement.innerHTML += str;

}


//등록 취소 버튼 이벤트 추가(onclick= method on button tag)
//입력창 등록 취소  버튼 
function rbtnGrpTag_f(e){  
  if(e.textContent == '등록' && e.tagName == 'BUTTON'){    
		console.log(" 등록 시작")
     const reqMsg = {};     
  		let bcgrp;
  		let pucode;
  		let bcindent = 0;
  		let bccontent = e.parentElement.previousElementSibling.textContent;                 
  		
  		if(bccontent.length == '0'){		   
 		   alert("최소 한자이상 입력해주세요.")
 	   }
  		
  		
  		
  	     //부모 댓글  작성 -- 작성창 상위에 parent / child tag없음.    
            reqMsg.bnum = bnum;
            reqMsg.pucode = origin_pucode;   
            reqMsg.bccontent = bccontent;           
            reqMsg.bcindent = bcindent;
  		
  		
     //부모 댓글의 자식 댓글
       if(e.closest(".bcomment").parentElement.className == 'parent'){ 
       //자식댓글인 경우 추가로 부모댓글의 bcnum을 grp번호로 가진다.    
    	   bcgrp = e.closest(".bcomment").parentElement.getAttribute("data-bcnum");         
        pucode = e.closest(".bcomment").parentElement.querySelector(".IRnickname").getAttribute("data-nickname");
        bcindent = 1;        
        reqMsg.bcgrp = bcgrp;  
        reqMsg.pucode = pucode;   
        reqMsg.bcindent = bcindent;
        
           
        }
      //자식 댓글의 댓글
      if(e.closest(".bcomment").parentElement.className == 'children'){ 
       //자식댓글인 경우 추가로 부모댓글의 bcnum을 grp번호로 가진다.    
        
    	 bcgrp = e.closest(".bcomment").parentElement.getAttribute("data-bcgrp"); 
        pucode = e.closest(".bcomment").parentElement.querySelector(".IRnickname").getAttribute("data-nickname");
        bcindent = 1;
        
        reqMsg.bcgrp = bcgrp;  
        reqMsg.pucode = pucode;   
        reqMsg.bcindent = bcindent;
        console.log("자식글에 댓글 달기 bcgrp ======" + bcgrp);           
        }
      register(reqMsg); 
      
  }else if(e.textContent == '취소' && e.tagName == 'BUTTON'){
      console.log("취소")    
      
      //댓글의 댓글 작성창의 취소버튼 클릭시
if(e.closest(".bcomment").parentElement.getAttribute("data-bcnum") != 0    ){
	let parent = e.closest(".bcomment").parentElement;
	parent.removeChild(parent.children[1]);
	   	  return;
      }
    }
  
  e.parentElement.classList.add("hidden");
  e.parentElement.classList.remove("shown");
   e.parentElement.previousElementSibling.textContent ="";
  e.parentElement.previousElementSibling.setAttribute("contenteditable", "false");
  e.parentElement.previousElementSibling.classList.remove("typable");
    	    
} //rbtnGrpTag_f 




//댓글 등록 버튼 클릭시
function register(reqMsg){   
	

const xhttp = new XMLHttpRequest();    
xhttp.addEventListener("readystatechange", ajaxCall);  
 //ajax 요청메시지 작성
console.log("reqMsg.bcindent ========="+reqMsg.bcindent);
//요청메시지   --> json                   
     const changeIntoJson = JSON.stringify(reqMsg);     

// 원본 댓글-- to be parent ___ indent : 0

   let url ;
if(reqMsg.bcindent == 0){
	   //요청 메소드 + 요청URL 
    url =`http://localhost:9080/pfpkg/bcomment/replyP/${innerRqPage}`;
}

//댓글의 댓글 child on parent /child on child     ___ indent : 1
if(reqMsg.bcindent == 1){	
	 url =`http://localhost:9080/pfpkg/bcomment/replyC/${innerRqPage}`;
}
xhttp.open('post',url)
xhttp.setRequestHeader('Content-Type','application/json;charset=utf-8')
xhttp.send(changeIntoJson);          
}//register

//ajax 응답 
    function ajaxCall(e){
        //서버 응답
        if(e.target.readyState == 4 && e.target.status == 200){            	
        	const jsonObj = JSON.parse(e.target.responseText);  
            if(jsonObj.result ==  'OK'){
                          
                showUpList(jsonObj.list);
            }else{
                console.log("등록 실패")
            }
            }
    } //ajax
    
//댓글 리스트 표현
    //댓글 더보기 

function showUpList(list){
	showMoreBtnToggle(list);
	
 //값들어왔을때 화면처리 할 코드  
	let nickname = document.getElementById("IRnickname").textContent
              replaceableAreaTag.innerHTML ='';
				let str ='';
             Array.from(list).forEach(data=>{
            	 
            	 
             	 //날짜 포맷 설정
            	 let _sysdate = new Date(data.udate);
            	 let sysdate = _sysdate.format('MM-dd');
            	 
                	if(data.bcindent == 0){
                		//부모댓글일 경우
                		
                		str += `<div class="parent" data-bcnum="${data.bcnum}">`                            
                    }else{
                		//자식댓글일 경우
           
                		str += `<div class="children" data-bcnum="${data.bcnum}" data-bcgrp="${data.bcgrp}">`                          
                    }                	
                		str += `<div class="bcomment">`
                		    str += `<div class="profile"> <div  class="profileImg">${data.nickname.substring(0,1) }</div></div>`
                		    str += `<div class="userinfo">`
                		        str += `<div>`
                		        	 str += `<span class="IRnickname" data-nickname="${data.ucode }">${data.nickname}</span>`
                		            str += `<span class="goodOrBad"><i class="far fa-thumbs-up"></i>${data.bcgood}</span>`
                		            str += `<span class="goodOrBad"><i class="far fa-thumbs-down"></i>${data.bcbad}</span>`
                		        str += `</div>`
                		        	 str += `<div class="udate"><span>${sysdate}</span><button class="btn reReply"  >답글쓰기</button></div>`
                		        str += `<div class="innerRe_area">`
                		            str += `<span class="IRnickname">To.${data.pnickname}</span>`
                		            	 str += `<div class="typed" contenteditable="false">${data.bccontent}</div>`                    		      
                		        str += `</div>`
                		    str += `</div>`
                		    	
                		    	if(isLogin == "true" && nowLogedUcode == data.ucode ){            		    	
                		     str += ` <div class="ellipsis"><i class="fas fa-ellipsis-v"  ></i>`       
                		        str += `<!-- 수정/삭제 히든메뉴 -->`
                		        	str += ` <div class="ellipsis  hiddenMenu hidden" >`
                		            str += `<div>`
                		                str += `       <button type="button" onClick="modDelBtn_f(this)">수정</button>`
                		                str += `<button type="button" onClick="modDelBtn_f(this)">삭제</button>`
                		            str += `</div>`
                		        str += `</div>`
                		    str += `</div>`
                		    	}      
                		str += `</div>`                   	
                	str += `</div>`        		                		
                	replaceableAreaTag.innerHTML +=  str;    
                   str ='';
                })                     
             
} //showUpList
//Math.floor(Math.random()*16777215).toString(16);

    


//inner 댓글 더보기 버튼
function showMore_f(e){	
	//onClick event는 target사용 안함	
	
	console.log(" 댓글 더보기 버튼 클릭시 "  + innerRqPage)	
	if(e.classList.contains("btn-showMore") && e.tagName =="BUTTON" ){	
		callList(e);		
		e.setAttribute("data-innerRqPage", innerRqPage)
	}
}


let listLength = 0;
//더보기 버튼 토글
function showMoreBtnToggle(list){
let innerRe_wrapperTag = document.querySelector(".innerRe_wrapper")
let last = innerRe_wrapperTag.lastElementChild
console.log(" ((Number(innerRqPage)*10)  =====================" + (Number(innerRqPage)*10) )		
console.log(" 리스트 길이)  =====================" + list.length )		
if(list.length < (Number(innerRqPage)*10) ){   		
	last.innerHTML = '불러올 목록이 없습니다.';
	last.setAttribute("disabled", " true");
	//last.classList.remove("btn");
}else{
	last.innerHTML = '더보기';
	last.classList.add("btn");	
	last.removeAttribute("disabled");
	innerRqPage +=1; 	
}
}



//댓글 리스트 호출
function callList(e){
console.log("innerRqPage ===== "  + innerRqPage)	
const xhttp = new XMLHttpRequest();    
xhttp.addEventListener("readystatechange",(e)=>{
	ajaxCallMore(e);			
}); 
//ajax 요청메시지 
const url = `http://localhost:9080/pfpkg/bcomment/${bnum}/${innerRqPage}`;
xhttp.open('GET', url);
//xhttp.setReqeustheader('Content-type', 'application/json;charset=utf-8');
xhttp.send();

}
function ajaxCallMore(e){
    //서버 응답
    if(e.target.readyState == 4 && e.target.status == 200){            	
    	const jsonObj = JSON.parse(e.target.responseText);            
      
        if(jsonObj.result ==  'OK'){
            console.log("댓글등록 성공 및 목록가져와서 나타내기")                 
            showUpListMore(jsonObj.list);
        }else{
            console.log("등록 실패")
        }
        }
} //ajax
    

    function showUpListMore(list){
    	//값들어왔을때 화면처리 할 코드
    	showMoreBtnToggle(list);
                 let str ='';
                 Array.from(list).forEach(data=>{
                 	 //날짜 포맷 설정
                	 let _sysdate = new Date(data.udate);
                	 let sysdate = _sysdate.format('MM-dd');
                    	if(data.bcindent == 0){
                    		//부모댓글일 경우
                    		console.log("부모 댓글")
                    		str += `<div class="parent" data-bcnum="${data.bcnum}">`                            
                        }else{
                    		//자식댓글일 경우
                    		console.log("자식 댓글")
                    		str += `<div class="children" data-bcnum="${data.bcnum}" data-bcgrp="${data.bcgrp}">`                          
                        }                	
                    		str += `<div class="bcomment">`
                    		    str += `<div class="profile"> <div  class="profileImg">${data.nickname.substring(0,1) }</div></div>`
                    		    str += `<div class="userinfo">`
                    		        str += `<div>`
                    		        	 str += `<span class="IRnickname" data-nickname="${data.ucode }">${data.nickname}</span>`
                    		            str += `<span class="goodOrBad"><i class="far fa-thumbs-up"></i>${data.bcgood}</span>`
                    		            str += `<span class="goodOrBad"><i class="far fa-thumbs-down"></i>${data.bcbad}</span>`
                    		        str += `</div>`
                    		        str += `<div class="udate"><span>${sysdate}</span><button class="btn reReply"  >답글쓰기</button></div>`
                    		        str += `<div class="innerRe_area">`
                    		            str += `<span class="IRnickname">To.${data.pnickname}</span>`
                    		            	 str += `<div class="typed" contenteditable="false">${data.bccontent}</div>`                    		      
                    		        str += `</div>`
                    		    str += `</div>`
                    		    	
                    		    	if(isLogin == "true" && nowLogedUcode == data.ucode ){            		    	    	
                    		     str += ` <div class="ellipsis"><i class="fas fa-ellipsis-v"  ></i>`       
                    		        str += `<!-- 수정/삭제 히든메뉴 -->`
                    		        	str += ` <div class="ellipsis  hiddenMenu hidden" >`
                    		            str += `<div>`
                    		                str += `       <button type="button" onClick="modDelBtn_f(this)">수정</button>`
                    		                str += `<button type="button" onClick="modDelBtn_f(this)">삭제</button>`
                    		            str += `</div>`
                    		        str += `</div>`
                    		    str += `</div>`
                    		    	}      
                    		str += `</div>`                   	
                    	str += `</div>`                    		
                    		
                    	replaceableAreaTag.innerHTML +=  str;
                        str ='';
                    })      
    	
    	
    	
    }
    
    
//댓글 선호 비선호 처리 메소드 
function voteGoodBad(e){

	if(e.target.classList.contains("far") && e.target.tagName == 'I'){
		if(isLogin == 'true'){
	const xhttp = new XMLHttpRequest();
	xhttp.addEventListener("readystatechange", ajaxCall)	
const reqMsg = {};
	reqMsg.bnum = bnum;
	reqMsg.bcnum = e.target.closest(".bcomment").parentElement.getAttribute("data-bcnum");

	let voted = '';
	if(e.target.classList.contains("fa-thumbs-up")){		
		reqMsg.voted = 'GOOD'		
	}else if(e.target.classList.contains("fa-thumbs-down") ){
		reqMsg.voted = 'BAD'					
    }
	
	const intoJson = JSON.stringify(reqMsg);
	
	const url = `http://localhost:9080/pfpkg/bcomment/vote/${innerRqPage}`
	xhttp.open("post" , url)
	xhttp.setRequestHeader('Content-Type', 'application/json;charset=utf-8');
	xhttp.send(intoJson);
		}else{
			toDoLogin();
		}
	}
	
	
}
	

//로그인 체크 메소드
function toDoLogin(){	
		if(confirm("로그인을 해야 사용할 수 있습니다. 로그인 하시겠습니까?")){
		location.href = `http://localhost:9080/pfpkg/loginForm`;			
		return;
		}
}


	//날짜 포맷 설정 함수


Date.prototype.format = function (f) {

    if (!this.valueOf()) return " ";



    var weekKorName = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];

    var weekKorShortName = ["일", "월", "화", "수", "목", "금", "토"];

    var weekEngName = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];

    var weekEngShortName = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];

    var d = this;



    return f.replace(/(yyyy|yy|MM|dd|KS|KL|ES|EL|HH|hh|mm|ss|a\/p)/gi, function ($1) {

        switch ($1) {

            case "yyyy": return d.getFullYear(); // 년 (4자리)

            case "yy": return (d.getFullYear() % 1000).zf(2); // 년 (2자리)

            case "MM": return (d.getMonth() + 1).zf(2); // 월 (2자리)

            case "dd": return d.getDate().zf(2); // 일 (2자리)

            case "KS": return weekKorShortName[d.getDay()]; // 요일 (짧은 한글)

            case "KL": return weekKorName[d.getDay()]; // 요일 (긴 한글)

            case "ES": return weekEngShortName[d.getDay()]; // 요일 (짧은 영어)

            case "EL": return weekEngName[d.getDay()]; // 요일 (긴 영어)

            case "HH": return d.getHours().zf(2); // 시간 (24시간 기준, 2자리)

            case "hh": return ((h = d.getHours() % 12) ? h : 12).zf(2); // 시간 (12시간 기준, 2자리)

            case "mm": return d.getMinutes().zf(2); // 분 (2자리)

            case "ss": return d.getSeconds().zf(2); // 초 (2자리)

            case "a/p": return d.getHours() < 12 ? "오전" : "오후"; // 오전/오후 구분

            default: return $1;

        }

    });

};



String.prototype.string = function (len) { var s = '', i = 0; while (i++ < len) { s += this; } return s; };

String.prototype.zf = function (len) { return "0".string(len - this.length) + this; };

Number.prototype.zf = function (len) { return this.toString().zf(len); };
	
	
	
	
	
	
	
	
	
	
	
	
	
	
