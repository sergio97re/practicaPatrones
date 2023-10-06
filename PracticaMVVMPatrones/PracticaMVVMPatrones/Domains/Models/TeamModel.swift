//
//  TeamModel.swift
//  PracticaMVVMPatrones
//
//  Created by Sergio Reina Montes on 06/10/2023.
//

import Foundation

//TYPEALIAS para pagar el array que tenemos en DATOS RECIBIDOS con las variables del MODELO
typealias TeamsModel = [TeamModel]

//MODELO
struct TeamModel {
    var name: String
    var league: String
    var image: String?
    var description: String
}


//DATOS RECIBIDOS
var sampleTeamData: TeamsModel = [
    TeamModel(name: "Atletico de Madrid",
                   league: "Spain League",
                   image: "atletico_madrid",
                   description: "El Atlético de Madrid, un fuerte competidor en la liga española, ha mostrado su valía en la Champions League, siendo frecuentemente un rival difícil. Es conocido por su juego defensivo sólido y su apasionada base de fans."),
    TeamModel(name: "Real Madrid",
                   league: "Spain League",
                   image: "real_madrid",
                   description: "El Real Madrid ostenta el récord con 13 títulos de la Champions League. Con una historia rica y un equipo estelar, siempre es un contendiente formidable y es mundialmente reconocido por su éxito y estilo de juego."),
    TeamModel(name: "Real Sociedad",
                   league: "Spain League",
                   image: "real_sociedad",
                   description: "La Real Sociedad, con base en San Sebastián, España, es conocida por su juego atractivo. Aunque no es tan laureada en la Champions, su presencia siempre añade calidad y competencia al torneo."),
    TeamModel(name: "Manchester City",
                   league: "Premier League",
                   image: "manchester_city",
                   description: "El Manchester City, representante de la Premier League, ha crecido exponencialmente en la última década, convirtiéndose en un habitual aspirante en la Champions, gracias a su sólida plantilla y ambiciones."),
    TeamModel(name: "Manchester United",
                   league: "Premier League",
                   image: "manchester_united",
                   description: ": Este gigante inglés, el Manchester United, ha alzado la Champions League en tres ocasiones. Con una historia profundamente arraigada en el éxito y la tragedia, el equipo siempre entra en la competición europea con una mezcla de nobleza y una fuerte ambición de ganar."),
    TeamModel(name: "PSG",
                   league: "France League",
                   image: "psg",
                   description: "El Paris Saint-Germain, con una plantilla estelar y abundantes recursos, es siempre un fuerte contendiente en la Champions League, buscando ansiosamente su primer título en la competición."),
    TeamModel(name: "Bayern Munich",
                   league: "Germany League",
                   image: "bayern",
                   description: "El Bayern Munich, un gigante del fútbol alemán, ha levantado la Champions League en seis ocasiones. Con un equipo poderoso y una rica historia, siempre es un favorito en la competición."),
    TeamModel(name: "Oporto",
                   league: "Portugal League",
                   image: "oporto",
                   description: "El FC Oporto, con dos títulos de la Champions, es un orgulloso representante de Portugal en Europa. A menudo desafiando a equipos más ricos, el Oporto es conocido por su táctica astuta y espíritu luchador."),
    TeamModel(name: "Galatasaray",
                   league: "Turkey League",
                   image: "galatasaray",
                   description: "Representando a Turquía, el Galatasaray ha hecho historia en la Champions League, siendo el equipo más exitoso del país en competiciones europeas y conocido por la ferviente pasión de sus seguidores."),
    TeamModel(name: "Inter",
                   league: "Italy League",
                   image: "inter",
                   description: "El Inter de Milán, icónico en el fútbol italiano, ha capturado tres títulos de la Champions League. Con su rica historia y su tradición de fortaleza defensiva, el equipo lombardo es siempre un competidor respetado y un retador fuerte en el escenario europeo.")
]

