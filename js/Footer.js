// Dans l'ordre d'index
var listePage = {
    0: {
        title: "Accueil",
        icon: "../img/house.svg",
        url: "accueil.qml"
    },
    1: {
        title: "En cours",
        icon: "../img/chronometer.svg",
        url: "live_course_detail.qml"
    },
    2: {
        title: "Inscription course",
        icon: "../img/plus.svg",
        url: "inscription_course.qml"
    },
    3: {
        title: "Déconnexion",
        icon: "../img/exit.svg",
        url: "connexion.qml"
    }
}


function setTitle(index){
       return listePage[index].title;
}

function setIcon(index){
      return listePage[index].icon;

}

function setURL(index){
     return listePage[index].url;
}
