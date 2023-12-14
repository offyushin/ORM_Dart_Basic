class AquamanMovie {
  bool adult;
  String backdropPath;
  AquamanCollection belongsToCollection;
  int budget;
  List<AquamanGenre> genres;
  String homepage;
  int id;
  String imdbId;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  List<AquamanProductionCompany> productionCompanies;
  List<AquamanProductionCountry> productionCountries;
  String releaseDate;
  int revenue;
  int runtime;
  List<AquamanSpokenLanguage> spokenLanguages;
  String status;
  String tagline;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  AquamanMovie({
    required this.adult,
    required this.backdropPath,
    required this.belongsToCollection,
    required this.budget,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.productionCompanies,
    required this.productionCountries,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.spokenLanguages,
    required this.status,
    required this.tagline,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory AquamanMovie.fromJson(Map<String, dynamic> json) {
    return AquamanMovie(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      belongsToCollection:
          AquamanCollection.fromJson(json['belongs_to_collection']),
      budget: json['budget'],
      genres: List<AquamanGenre>.from(
          json['genres'].map((x) => AquamanGenre.fromJson(x))),
      homepage: json['homepage'],
      id: json['id'],
      imdbId: json['imdb_id'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity'],
      posterPath: json['poster_path'],
      productionCompanies: List<AquamanProductionCompany>.from(
          json['production_companies']
              .map((x) => AquamanProductionCompany.fromJson(x))),
      productionCountries: List<AquamanProductionCountry>.from(
          json['production_countries']
              .map((x) => AquamanProductionCountry.fromJson(x))),
      releaseDate: json['release_date'],
      revenue: json['revenue'],
      runtime: json['runtime'],
      spokenLanguages: List<AquamanSpokenLanguage>.from(json['spoken_languages']
          .map((x) => AquamanSpokenLanguage.fromJson(x))),
      status: json['status'],
      tagline: json['tagline'],
      title: json['title'],
      video: json['video'],
      voteAverage: json['vote_average'],
      voteCount: json['vote_count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'backdrop_path': backdropPath,
      'belongs_to_collection': belongsToCollection.toJson(),
      'budget': budget,
      'genres': List<dynamic>.from(genres.map((x) => x.toJson())),
      'homepage': homepage,
      'id': id,
      'imdb_id': imdbId,
      'original_language': originalLanguage,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'production_companies':
          List<dynamic>.from(productionCompanies.map((x) => x.toJson())),
      'production_countries':
          List<dynamic>.from(productionCountries.map((x) => x.toJson())),
      'release_date': releaseDate,
      'revenue': revenue,
      'runtime': runtime,
      'spoken_languages':
          List<dynamic>.from(spokenLanguages.map((x) => x.toJson())),
      'status': status,
      'tagline': tagline,
      'title': title,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    };
  }
}

class AquamanCollection {
  int id;
  String name;
  String posterPath;
  String backdropPath;

  AquamanCollection({
    required this.id,
    required this.name,
    required this.posterPath,
    required this.backdropPath,
  });

  factory AquamanCollection.fromJson(Map<String, dynamic> json) {
    return AquamanCollection(
      id: json['id'],
      name: json['name'],
      posterPath: json['poster_path'],
      backdropPath: json['backdrop_path'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'poster_path': posterPath,
      'backdrop_path': backdropPath,
    };
  }
}

class AquamanGenre {
  int id;
  String name;

  AquamanGenre({
    required this.id,
    required this.name,
  });

  factory AquamanGenre.fromJson(Map<String, dynamic> json) {
    return AquamanGenre(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}

class AquamanProductionCompany {
  int id;
  String? logoPath;
  String name;
  String originCountry;

  AquamanProductionCompany({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  factory AquamanProductionCompany.fromJson(Map<String, dynamic> json) {
    return AquamanProductionCompany(
      id: json['id'],
      logoPath: json['logo_path'],
      name: json['name'],
      originCountry: json['origin_country'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'logo_path': logoPath,
      'name': name,
      'origin_country': originCountry,
    };
  }
}

class AquamanProductionCountry {
  String iso31661;
  String name;

  AquamanProductionCountry({
    required this.iso31661,
    required this.name,
  });

  factory AquamanProductionCountry.fromJson(Map<String, dynamic> json) {
    return AquamanProductionCountry(
      iso31661: json['iso_3166_1'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'iso_3166_1': iso31661,
      'name': name,
    };
  }
}

class AquamanSpokenLanguage {
  String englishName;
  String iso6391;
  String name;

  AquamanSpokenLanguage({
    required this.englishName,
    required this.iso6391,
    required this.name,
  });

  factory AquamanSpokenLanguage.fromJson(Map<String, dynamic> json) {
    return AquamanSpokenLanguage(
      englishName: json['english_name'],
      iso6391: json['iso_639_1'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'english_name': englishName,
      'iso_639_1': iso6391,
      'name': name,
    };
  }
}
