/*
 * Copyright (c) 2024 M3U8 Monster. All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import Foundation

/// [🌎 RFC 8216 - HTTP Live Streaming](https://datatracker.ietf.org/doc/html/rfc8216)
public enum M3U8Tag: String, CaseIterable {
    
    // MARK: - Basic Tags: These tags are allowed in both Media Playlists and Master Playlists
    
    /// The EXTM3U tag indicates that the file is an Extended M3U Playlist file
    case EXTM3U = "#EXTM3U"
    
    /// The EXT-X-VERSION tag indicates the compatibility version of the Playlist file, its associated media, and its server
    case EXT_X_VERSION = "#EXT-X-VERSION"
    
    // MARK: - Media Segment Tags: Each Media Segment is specified by a series of Media Segment tags followed by a URI
    
    /// The EXTINF tag specifies the duration of a Media Segment
    case EXTINF = "#EXTINF"
    
    /// The EXT-X-BYTERANGE tag indicates that a Media Segment is a sub-range of the resource identified by its URI
    case EXT_X_BYTERANGE = "#EXT-X-BYTERANGE"
    
    /// The EXT-X-DISCONTINUITY tag indicates a discontinuity between the Media Segment that follows it and the one that preceded it
    case EXT_X_DISCONTINUITY = "#EXT-X-DISCONTINUITY"
    
    /// The EXT-X-KEY tag specifies how to decrypt them
    case EXT_X_KEY = "#EXT-X-KEY"
    
    /// The EXT-X-MAP tag specifies How to obtain the Media Initialization required to parse the applicable Media Segments
    case EXT_X_MAP = "#EXT-X-MAP"
    
    /// The EXT-X-PROGRAM-DATE-TIME tag associates the first sample of a Media Segment with an absolute date and/or time
    case EXT_X_PROGRAM_DATE_TIME = "#EXT-X-PROGRAM-DATE-TIME"
    
    /// The EXT-X-DATERANGE tag associates a Date Range with a set of attribute value pairs
    case EXT_X_DATERANGE = "#EXT-X-DATERANGE"
    
    // MARK: - Media Playlist Tags: Media Playlist tags describe global parameters of the Media Playlist
    
    /// The EXT-X-TARGETDURATION tag specifies the maximum Media Segment duration
    case EXT_X_TARGETDURATION = "#EXT-X-TARGETDURATION"
    
    /// The EXT-X-MEDIA-SEQUENCE tag indicates the Media Sequence Number of the first Media Segment that appears in a Playlist file
    case EXT_X_MEDIA_SEQUENCE = "#EXT-X-MEDIA-SEQUENCE"
    
    /// The EXT-X-DISCONTINUITY-SEQUENCE tag allows synchronization between different Renditions of the same Variant Stream or different Variant Streams that have EXT-X-DISCONTINUITY tags in their Media Playlists.
    case EXT_X_DISCONTINUITY_SEQUENCE = "#EXT-X-DISCONTINUITY-SEQUENCE"
    
    /// The EXT-X-ENDLIST tag indicates that no more Media Segments will be added to the Media Playlist file
    case EXT_X_ENDLIST = "#EXT-X-ENDLIST"
    
    /// The EXT-X-PLAYLIST-TYPE tag provides mutability information about the Media Playlist file
    case EXT_X_PLAYLIST_TYPE = "#EXT-X-PLAYLIST-TYPE"
    
    /// The EXT-X-I-FRAMES-ONLY tag indicates that each Media Segment in the Playlist describes a single I-frame
    case EXT_X_I_FRAMES_ONLY = "#EXT-X-I-FRAMES-ONLY"
    
    // MARK: Computed Properties
    public var tag: String { return self.rawValue }
}
