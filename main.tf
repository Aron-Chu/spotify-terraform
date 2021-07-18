terraform {
  required_providers {
    spotify = {
      version = "~> 0.1.5"
      source  = "conradludgate/spotify"
    }
  }
}

variable "spotify_api_key" {
  type = string
}

provider "spotify" {
  api_key = var.spotify_api_key
}

resource "spotify_playlist" "playlist" {
  name        = "Aron Terraform Playlist"
  description = "This playlist was created by Terraform"
  public      = true

  tracks = [
    data.spotify_search_track.by_artist.tracks[0].id,
    data.spotify_search_track.by_artist.tracks[4].id,
    data.spotify_search_track.edith.tracks[6].id,
    data.spotify_search_track.edith.tracks[7].id,
    data.spotify_search_track.billie.tracks[5].id,
    data.spotify_search_track.billie.tracks[1].id,
    data.spotify_search_track.billie.tracks[9].id,
    data.spotify_search_track.weeknd.tracks[1].id,
    data.spotify_search_track.weeknd.tracks[4].id,
    data.spotify_track.early_morning_breeze_by_id.spotify_id,
    data.spotify_track.joji.spotify_id,
    data.spotify_track.joni.spotify_id,
    data.spotify_track.beatles.spotify_id,
    data.spotify_track.post.spotify_id,
    data.spotify_track.vance.spotify_id,
    data.spotify_track.tame.spotify_id,
    data.spotify_track.lewis.spotify_id,
    data.spotify_track.pink.spotify_id,
    data.spotify_track.frank.spotify_id,
    data.spotify_track.rat.spotify_id,
    data.spotify_track.neighbour.spotify_id,
  ]
}

data "spotify_search_track" "by_artist" {
  artists = ["Jack Stauber"]
  #  album = "Pop Food"
  #  name  = "Buttercup"
}

data "spotify_search_track" "billie" {
  artists = ["Billie Eilish"]
  album = "WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?"
  #  name  = "Buttercup"
}
data "spotify_search_track" "weeknd" {
  artists = ["The Weeknd"]
  #  album = "Pop Food"
  #  name  = "Buttercup"
}
data "spotify_search_track" "edith" {
  artists = ["Edith Piaf"]
  album = "Edith Piaf - All The Best"
  #  =name  = "Buttercup"
}
data "spotify_track" "early_morning_breeze_by_id" {
  spotify_id = "0QZ5yyl6B6utIWkxeBDxQN"
}
data "spotify_track" "joji" {
  spotify_id = "0rKtyWc8bvkriBthvHKY8d"
}
data "spotify_track" "joni" {
  spotify_id = "7shVwhUdVbHpykOfbzvDc1"
}
data "spotify_track" "beatles" {
  spotify_id = "2EqlS6tkEnglzr7tkKAAYD"
}
data "spotify_track" "post" {
  spotify_id = "21jGcNKet2qwijlDFuPiPb"
}
data "spotify_track" "vance" {
  spotify_id = "3JvrhDOgAt6p7K8mDyZwRd"
}
data "spotify_track" "tame" {
  spotify_id = "6K4t31amVTZDgR3sKmwUJJ"
}
data "spotify_track" "lewis" {
  spotify_id = "2TIlqbIneP0ZY1O0EzYLlc"
}
data "spotify_track" "pink" {
  spotify_id = "5HNCy40Ni5BZJFw1TKzRsC"
}
data "spotify_track" "frank" {
  spotify_id = "3spdoTYpuCpmq19tuD0bOe"
}
data "spotify_track" "rat" {
  spotify_id = "02JIdsrod3BYucThfUFDUX"
}
data "spotify_track" "neighbour" {
  spotify_id = "2QjOHCTQ1Jl3zawyYOpxh6"
}


output "tracks" {
  value = data.spotify_search_track.weeknd.tracks
}

output "tracks2" {
  value = data.spotify_search_track.billie.tracks
}