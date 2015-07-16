function display_assignments(event) {
  var id_to_use = document.getElementById("all_assign");
  
  event.preventDefault();
  
  req = new XMLHttpRequest();
  req.responseType = "json";
  req.open("get", "/api/assignments")
  
  req.addEventListener("load", function() {
    var assign_list = this.response;
    
    for (var x=0; x < assign_list.length; x++) {
      var node_to_add = document.createElement("li");
      var text_to_add = document.createTextNode(assign_list[x].description);
      var new_link = document.createElement("a");
      new_link.setAttribute("href", "/api/assignments/" + assign_list[x].id);
      new_link.setAttribute("data-link", assign_list[x].id );
      id_to_use.appendChild(node_to_add).appendChild(new_link).appendChild(text_to_add);
      
    }
    
    var link_to_drop  = document.getElementById("assign_link");
    link_to_drop.removeAttribute("href");

  })
  req.send();
  
  
}

document.getElementById("show_assign").onclick = display_assignments;


// function display_resources(event) {
//   var rec_id_to_use = document.getElementById("all_resource")
//
//   event.preventDefault();
//
//   req = new XMLHttpRequest();
//   req.responseType = "json";
//   req.open("get", "/api/resources")
//
//   req.addEventListener("load", function() {
//     var resource_list = this.response;
//
//     for (var x=0; x < resource_list.length; x++) {
//       var rec_node_to_add = document.createElement("li");
//       var rec_text_to_add = document.createTextNode(resource_list[x].link);
//       var rec_new_link = document.createElement("a");
//       rec_new_link.setAttribute("href", "/api/resources/" + resource_list[x].id)
//       rec_id_to_use.appendChild(rec_node_to_add).appendChild(rec_new_link).appendChild(rec_text_to_add);
//     }
//
//     var rec_link_to_drop  = document.getElementById("resource_link");
//     rec_link_to_drop.removeAttribute("href");
//
//   })
//   req.send();
//
// }
//
// document.getElementById("show_resource").onclick = display_resources;
//
// function display_all_for_assignment(event) {
//   var assign_id_to_use = this
//
//   event.preventDefault();
//
//   req = new XMLHttpRequest();
//   req.responseType = "json";
//   req.open("get", "/api/assignments/" + assign_id_to_use.data-link);
//
//   req.addEventListener("load", function() {
//     var all_info_list = this.response;
//
//     for (var x=0; x < all_info_list.length; x++) {
//       var assign_node_to_add = document.createElement("li");
//       if (all_info_list[x].github === undefined) {
//         if (all_info_list[x].link === undefined) {
//           var assign_text_to_add = document.createTextNode(all_info_list[x].classmates_id);
//         } else {
//             var assign_text_to_add = document.createTextNode(all_info_list[x].link);
//         }
//         else {
//           var assign_text_to_add = document.createTextNode(all_info_list[x].github);
//         }
//       }
//       rec_id_to_use.appendChild(assign_node_to_add).appendChild(assign_text_to_add);
//     }
//   })
//   req.send();
//
// }
// var link_list = document.querySelectorAll('[data-link]');
//
// for (var i=0; i < link_list.length; i++) {
//   link_list[i].onclick = display_all_for_assignment;
// }
