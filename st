<html>
<head>
<body>
    <div id="copythis">
        <script>
            function httpGet(theUrl) {
                var xmlHttp = new XMLHttpRequest();
                xmlHttp.open("GET", theUrl, true); // false for synchronous request
                xmlHttp.send(null);
        
                xmlHttp.onreadystatechange = (e) => {
                    if (xmlHttp.readyState==4 && xmlHttp.status==200)
                    {
                    myhit.innerHTML = xmlHttp.responseText;
                    }
                }
                 
            }
            function dohit(img){
                    httpGet('https://rmilab.nkust.edu.tw'+'/projects/addone'+ '?id=' + 'c111130135@nkust.edu.tw')
             
            }
            function dohit2(img){
                //var url = 'https://rmilab.nkust.edu.tw/projects/addone?id=linchao@nkust.edu.tw';
                //fetch(url)
                fetch('/projects/addone' + new URLSearchParams({
                    id: 'c111130135@nkust.edu.tw',
                    
                }))
               .then(function (response) {
                   return response.text();
                   
                }).then(function (data) {
                        myhit.innerHTML = data;
                }).catch(function () {
                    console.log("Booo");
                });
            }
            window.addEventListener("load", function (event) {
                var userid = 'c111130135@nkust.edu.tw';
                    httpGet('https://rmilab.nkust.edu.tw'+'/projects/hitcount' + "?id=" + userid)
            
            });
        </script>
        <button onclick="dohit(this)"><img src="https://s.yimg.com/ny/api/res/1.2/2Tw_tAFl5loPD8nnQyxCpQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTM1OQ--/https://s.yimg.com/uu/api/res/1.2/_wKUMZQIjFOErbvHVttWzA--~B/aD0yODY7dz01MTA7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/zh-tw/setn.com.tw/94e569eb3e1e8062b98ec83c22bb5288"></button>
        點次數:<label id="myhit">99</label><br>
        
        </div>
<p>這是第一個段落</p>

git.init.
<br/>
git.add.
<br/>
git commit -m "my message"
<br/>
git push
<br>
git pull
<br/>


</body>
</html>
