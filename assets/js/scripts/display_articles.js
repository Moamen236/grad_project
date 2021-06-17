/*----------- API Articales -------------*/

// let httpRequset = new XMLHttpRequest;
// httpRequset.open("GET" , "https://moamen236.github.io/api/graduation_project/articles.json");
// httpRequset.send();
// let allArticles = [];
// httpRequset.addEventListener("readystatechange" ,function(){
//   if(httpRequset.readyState == 4){
//     allArticles = JSON.parse( httpRequset.response).articles;
//     // console.log(allArticles)
//     displayArticles();
//   }
// })

let allArticles = [];

(async function(){
  var apiResponse = await fetch("https://moamen236.github.io/api/graduation_project/articles.json");
  allArticles = await apiResponse.json();
  allArticles = allArticles.articles;
  displayArticles();
})()

function displayArticles(){
  var articles = ``;
  for(var i=0; i < allArticles.length;i++){
    articles +=`
    <div class="col-lg-4">
      <div class="card bg-white mt-4 shadow" style="min-height: 640px;">
          <img src="${allArticles[i].imageUrl}" class="card-img-top" alt="...">
          <div class="card-body position-relative">
              <h5 class="card-title dark-title ">${allArticles[i].title}</h5>
              <p class="card-text dark-text" style="font-size:16px">${allArticles[i].description}</p>
              <div class="info">
                <div class="row">
                    <div class="col-lg-6 col-6">
                        <i class="fas fa-globe-americas text-blue"> </i>
                        <a href="articale.php?id=${allArticles[i].id}" class="ms-1 dark-text">See more</a>
                    </div>
                    <div class="col-lg-6 col-6">
                        <i class="fas fa-clock text-blue"></i>
                        <span class="ms-1">${allArticles[i].publishedAt}</span>
                    </div>
                  </div>
              </div>
          </div>
      </div>
    </div>
    `;
  }
  document.getElementById('articles').innerHTML = articles;
}