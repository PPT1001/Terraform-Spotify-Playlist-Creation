data "spotify_search_track" "Chasing_Echoes_Block" {
  artist = "Anirudh Ravichander"
  limit = 10
  year = "2020"
}

resource "spotify_playlist" "Chasing_Echoes" {
  name = "Chasing Echoes"
  description = "A playlist of songs that make you feel like you're chasing echoes."
  public = false
  tracks = flatten([data.spotify_search_track.Chasing_Echoes_Block.tracks[*].id,
  ])
}