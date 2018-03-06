// window.fbAsyncInit = function() {
//     FB.init({
//       appId            : '392870361184712',
//       autoLogAppEvents : true,
//       xfbml            : true,
//       version          : 'v2.12'
//     });
//   };
//
//   (function(d, s, id){
//      var js, fjs = d.getElementsByTagName(s)[0];
//      if (d.getElementById(id)) {return;}
//      js = d.createElement(s); js.id = id;
//      js.src = "https://connect.facebook.net/en_US/sdk.js";
//      fjs.parentNode.insertBefore(js, fjs);
//    }(document, 'script', 'facebook-jssdk'));
//
// function checkLoginState() {
//   FB.getLoginStatus(function(response) {
//     // statusChangeCallback(response);
//     // console.log(response);
//     if (response)
//     {
//       FB.api(
//         '/me?fields=email,name',
//         function(response) {
//           console.log(response);
//           $.post({
//             url: '/users',
//             data: {
//               user: {
//                 name: response.name,
//                 email: response.email,
//                 password: "password"
//               }
//             }
//           });
//       });
//     }
//
//   });
// }
