
data "spotify_search_track" "by_artist" {
    artist = "Diljit Dosanjh"
    # limit = 10
}

resource "spotify_playlist" "Diljit_Dosanjh_Playlist" {
    name = "Terraform Playlist"
    description = "This playlist is created and managed by terraform."
    public = false

    tracks = [
            data.spotify_search_track.by_artist.tracks[0].id,
            data.spotify_search_track.by_artist.tracks[1].id,
            data.spotify_search_track.by_artist.tracks[2].id
        ]
}