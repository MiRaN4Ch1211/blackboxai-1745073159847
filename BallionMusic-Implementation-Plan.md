# BallionMusic Android App - Implementation Plan

## Phase 1: Core Features
- Implement music loading from device storage (MP3 and other formats)
- Implement optional cover art and song title upload/edit
- Implement playlist creation and deletion
- Implement track deletion
- Support offline mode (local storage)
- Optional: server-side sync (deferred)

Files:
- data/MusicRepository.kt (load music)
- model/Track.kt, Playlist.kt
- ui/music player screens and playlist management UI
- local database (Room) for playlists and tracks

## Phase 2: Background Playback
- Implement background playback service with notification controls
- Controls: rewind 10 sec, pause/resume, forward 10 sec, next/previous track
- Show track title in notification
- Fix bug: no track skip when opening player control menu

Files:
- service/PlaybackService.kt
- notification layouts and controls

## Phase 3: VIP Features
- VIP section UI with benefits description
- Buy/Renew button with blurred popup showing card number and VIP expiration
- Promo codes: BALLION (3 months), BALLIONFOREVER (lifetime)
- Price display: 29 UAH/month
- VIP status management and persistence

Files:
- ui/vip/VIPFragment.kt and layouts
- purchase popup dialog
- VIP status storage and promo code handling

## Phase 4: Restrictions for Non-VIP
- Limit to 3 playlists
- Disable background playback
- Enforce 1-minute break every 10-15 minutes with VIP ad message
- Limit music listening to 3 hours per day

Files:
- playback logic enforcement
- UI for break message
- playlist management restrictions

## Phase 5: Language Selection and Themes
- Language selection UI with blurred background menu
- Support 11 languages (Azerbaijani, Arabic, Belarusian, Belgian, English, French, German, Hindi, Polish, Russian, Ukrainian)
- Themes selection UI with 11 themes (Light, Dark, Gray, Light Gray, Dark Gray, Light White, Dark White, Purple, Pink, Red-Purple, Orange)
- Apply selected theme and language dynamically

Files:
- ui/settings/LanguageFragment.kt, ThemeFragment.kt
- resources for languages and themes

## Phase 6: Listening Statistics
- Track listening time and statistics per track and overall
- Display statistics in UI

Files:
- data/statistics storage
- UI for statistics display

## Phase 7: Bug Fixes and Polishing
- Fix track skip bug on player control menu open
- Fix image format issues (.png vs .jpg)
- UI/UX polishing with modern design and gradients
- Testing and bug fixing

---

## Follow-up Steps
- Confirm plan with user
- Implement phases incrementally with user feedback
- Provide testing instructions and demo

---

Please confirm if you approve this implementation plan or want to adjust priorities or scope.
