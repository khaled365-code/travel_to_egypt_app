class cityModel {
  String? image;
  String? name;
  List<placeModel> place;
  cityModel({required this.image, required this.name, required this.place});
}

class placeModel {
  String? image;
  String? name;
  String Description;
  placeModel({required this.image, required this.name,required this.Description});
}

List<cityModel> homeDATA = [
  cityModel(image: 'assets/images/paron.jpg', name: 'Cairo', place: [
    placeModel(image: 'assets/images/paron.jpg', name: 'Paron Palace ',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Baron Empain Palace, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure", ),
    placeModel(image: 'assets/images/omar-elsharawy-pwMbtwA9LRc-unsplash.jpg', name: 'Mosque mohamed ali',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Mohamed Ali Mosque, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),
    placeModel(image: 'assets/images/spencer-davis-5lf4KfVRHso-unsplash.jpg', name: 'The Egyptain Museum',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Egyptaion Museum , inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),
    placeModel(image: 'assets/images/AbdeenPalace.png', name: 'AbdeenPalace',Description:
        "Abdeen Palace, is one of the most famous historical palaces in Egypt. He witnessed many events from the royal era until the emergence of modern Cairo"
        "Abdeen Palace is a rare historical masterpiece in the form that turned it into a museum that reflects the grandeur in which the palace was built and the important events it witnessed since the royal era until the July 1952 revolution"
    ),
  ]),
  cityModel(image: 'assets/images/alex.jpg', name: 'Alex', place: [
    placeModel(image: 'assets/images/alexmuseum.png', name: 'Alex Museum',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the AlexMuseum, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),
    placeModel(image: 'assets/images/roman theater.png', name: 'Roman Theater',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Roman Theater , inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),
    placeModel(image: 'assets/images/img.png', name: 'Roman  museum',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Roman Museum , inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),
    placeModel(image: 'assets/images/img_1.png', name: 'Montaza Palace ',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Montaza Palace, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),
  ]),
  cityModel(image: 'assets/images/luxor.jpg', name: 'luxor', place: [
    placeModel(image: 'assets/images/LuxorTemple.png', name: 'LuxorTemple',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the LuxorTemple , inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),
    placeModel(image: 'assets/images/Deir al-Bahri .png', name: 'Deir al-Bahri ',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Deir al-Bahri, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),
    placeModel(image: 'assets/images/Medinet Habu.png', name: 'Medinet Habu',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Medinet Habu, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),

  ]),
  cityModel(image: 'assets/images/aswan.jpg', name: 'Aswan', place: [
    placeModel(image: 'assets/images/Abu Simbel.png', name: 'Abu Simbel',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Abu Simbel, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure", ),
    placeModel(image: 'assets/images/kom ombo.jpg', name: 'kom ombo',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the kom ombo temple, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),
    placeModel(image: 'assets/images/Asis temple.png', name: 'Asis temple',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Asis temple, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),
    placeModel(image: 'assets/images/Nubian Museum.png', name: 'Nubian Museum',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Nubian Museum, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),
  ]),
  cityModel(image:     'assets/images/mansoura.png',  name: 'Mansoura', place: [
    placeModel(image: 'assets/images/mansoura.png', name: 'Mansoura ',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Mansoura Palace, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure", ),
    placeModel(image: 'assets/images/NewMansoura.jpg', name: 'NewMansoura',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the NewMansoura, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),

  ]),
  cityModel(image:     'assets/images/suez2.png',name: 'Suez', place: [
    placeModel(image: 'assets/images/suez2.png', name: 'Suez ',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Suez city, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure", ),
    placeModel(image: 'assets/images/suezCanal.jpg', name: 'suez Canal',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the suezCanal , inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),
  ]),
  cityModel(image:    'assets/images/splash.jpg', name: 'Giza', place: [
    placeModel(image: 'assets/images/splash.jpg', name: 'Pyramids ',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Pyramids , inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure", ),
    placeModel(image: 'assets/images/sphinx.jpg', name: 'Sphinx ',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the  Sphinx , inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),
  ]),

  cityModel(image:     'assets/images/sharm.jpg', name: 'Sharm', place: [
    placeModel(image: 'assets/images/sharm museum.jpg', name: 'sharm museum',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the sharm museum , inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure", ),
    placeModel(image: 'assets/images/elsahaba2.jpg', name: 'Sahaba Mosque',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Sahaba Mosque , inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),

  ]),
  cityModel(image:         'assets/images/elgouna.jpg', name: 'Elgouna', place: [
    placeModel(image: 'assets/images/elgouna.jpg', name: 'Elgouna',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Elgouna, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure", ),
    placeModel(image: 'assets/images/hurgada.jpg', name: 'Hurgada ',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Hurgada, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),

  ]),
  cityModel(image:     'assets/images/north.jpg',  name: 'NorthSinai', place: [
    placeModel(image: 'assets/images/north.jpg', name: ' NorthSinai ',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the NorthSinai, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure", ),
    placeModel(image: 'assets/images/Sinai Peninsula.jpg', name: 'Sinai Peninsula',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the Sinai Peninsula, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure",),

  ]),
  cityModel(image:     'assets/images/ismalia.jpg', name: 'Ismailia', place: [
    placeModel(image: 'assets/images/ismalia.jpg', name: 'Ismalia ',Description: "On this half-day tour, you'll get the opportunity to explore the unusual palace in the Heliopolis suburb and visit the modern shopping mall in New Cairo."
        " You'll first visit the new Ismalia, inspired by Hindu temples. You'll be able to explore the distinctive exteriors of the palace and learn about the history of the structure", ),

  ]),
  cityModel(image:     'assets/images/south2.jpg', name: 'SouthSinai', place: []),
  cityModel(image:     'assets/images/marsa.jpg', name: 'Matruh', place: []),
  cityModel(image:         'assets/images/minya.jpg',  name: 'Minya', place: []),
  cityModel(image:        'assets/images/qena.jpg', name: 'Qena', place: []),
  cityModel(image:         'assets/images/sohag.jpg', name: 'Sohag', place: []),
  cityModel(image:         'assets/images/fayum.jpg', name: '    Fayyum	', place: []),
  cityModel(image:         'assets/images/portsaid.jpg',  name: 'PortSaid', place: []),






];
