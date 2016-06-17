.class public final Lcom/wandoujia/api/proto/Detail$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Detail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/Detail;",
        ">;"
    }
.end annotation


# instance fields
.field public app_comment:Lcom/wandoujia/api/proto/CommentSummary;

.field public app_detail:Lcom/wandoujia/api/proto/AppDetail;

.field public article_detail:Lcom/wandoujia/api/proto/ArticleDetail;

.field public gift_detail:Lcom/wandoujia/api/proto/GiftDetail;

.field public ios_app_detail:Lcom/wandoujia/api/proto/IOSAppDetail;

.field public media_press_detail:Lcom/wandoujia/api/proto/MediaPressDetail;

.field public music_detail:Lcom/wandoujia/api/proto/MusicDetail;

.field public publisher_bundle_detail:Lcom/wandoujia/api/proto/PublisherBundleDetail;

.field public publisher_detail:Lcom/wandoujia/api/proto/PublisherDetail;

.field public publisher_time_detail:Lcom/wandoujia/api/proto/PublisherTimeDetail;

.field public scene_detail:Lcom/wandoujia/api/proto/SceneDetail;

.field public share_detail:Lcom/wandoujia/api/proto/ShareDetail;

.field public suggestion_detail:Lcom/wandoujia/api/proto/SuggestionDetail;

.field public today_detail:Lcom/wandoujia/api/proto/TodayDetail;

.field public video_detail:Lcom/wandoujia/api/proto/VideoDetail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 178
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/Detail;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 182
    if-nez p1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail$Builder;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    .line 184
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail;->video_detail:Lcom/wandoujia/api/proto/VideoDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail$Builder;->video_detail:Lcom/wandoujia/api/proto/VideoDetail;

    .line 185
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail;->music_detail:Lcom/wandoujia/api/proto/MusicDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail$Builder;->music_detail:Lcom/wandoujia/api/proto/MusicDetail;

    .line 186
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail;->article_detail:Lcom/wandoujia/api/proto/ArticleDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail$Builder;->article_detail:Lcom/wandoujia/api/proto/ArticleDetail;

    .line 187
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail;->today_detail:Lcom/wandoujia/api/proto/TodayDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail$Builder;->today_detail:Lcom/wandoujia/api/proto/TodayDetail;

    .line 188
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail;->ios_app_detail:Lcom/wandoujia/api/proto/IOSAppDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail$Builder;->ios_app_detail:Lcom/wandoujia/api/proto/IOSAppDetail;

    .line 189
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail;->app_comment:Lcom/wandoujia/api/proto/CommentSummary;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail$Builder;->app_comment:Lcom/wandoujia/api/proto/CommentSummary;

    .line 190
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail;->gift_detail:Lcom/wandoujia/api/proto/GiftDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail$Builder;->gift_detail:Lcom/wandoujia/api/proto/GiftDetail;

    .line 191
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail;->publisher_detail:Lcom/wandoujia/api/proto/PublisherDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail$Builder;->publisher_detail:Lcom/wandoujia/api/proto/PublisherDetail;

    .line 192
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail;->publisher_bundle_detail:Lcom/wandoujia/api/proto/PublisherBundleDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail$Builder;->publisher_bundle_detail:Lcom/wandoujia/api/proto/PublisherBundleDetail;

    .line 193
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail;->publisher_time_detail:Lcom/wandoujia/api/proto/PublisherTimeDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail$Builder;->publisher_time_detail:Lcom/wandoujia/api/proto/PublisherTimeDetail;

    .line 194
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail;->share_detail:Lcom/wandoujia/api/proto/ShareDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail$Builder;->share_detail:Lcom/wandoujia/api/proto/ShareDetail;

    .line 195
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail;->scene_detail:Lcom/wandoujia/api/proto/SceneDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail$Builder;->scene_detail:Lcom/wandoujia/api/proto/SceneDetail;

    .line 196
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail;->suggestion_detail:Lcom/wandoujia/api/proto/SuggestionDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail$Builder;->suggestion_detail:Lcom/wandoujia/api/proto/SuggestionDetail;

    .line 197
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail;->media_press_detail:Lcom/wandoujia/api/proto/MediaPressDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail$Builder;->media_press_detail:Lcom/wandoujia/api/proto/MediaPressDetail;

    goto :goto_0
.end method


# virtual methods
.method public final app_comment(Lcom/wandoujia/api/proto/CommentSummary;)Lcom/wandoujia/api/proto/Detail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/wandoujia/api/proto/Detail$Builder;->app_comment:Lcom/wandoujia/api/proto/CommentSummary;

    .line 250
    return-object p0
.end method

.method public final app_detail(Lcom/wandoujia/api/proto/AppDetail;)Lcom/wandoujia/api/proto/Detail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/wandoujia/api/proto/Detail$Builder;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    .line 205
    return-object p0
.end method

.method public final article_detail(Lcom/wandoujia/api/proto/ArticleDetail;)Lcom/wandoujia/api/proto/Detail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/wandoujia/api/proto/Detail$Builder;->article_detail:Lcom/wandoujia/api/proto/ArticleDetail;

    .line 229
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/Detail$Builder;->build()Lcom/wandoujia/api/proto/Detail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/Detail;
    .locals 2

    .prologue
    .line 316
    new-instance v0, Lcom/wandoujia/api/proto/Detail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/Detail;-><init>(Lcom/wandoujia/api/proto/Detail$Builder;Ld;)V

    return-object v0
.end method

.method public final gift_detail(Lcom/wandoujia/api/proto/GiftDetail;)Lcom/wandoujia/api/proto/Detail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/wandoujia/api/proto/Detail$Builder;->gift_detail:Lcom/wandoujia/api/proto/GiftDetail;

    .line 258
    return-object p0
.end method

.method public final ios_app_detail(Lcom/wandoujia/api/proto/IOSAppDetail;)Lcom/wandoujia/api/proto/Detail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/wandoujia/api/proto/Detail$Builder;->ios_app_detail:Lcom/wandoujia/api/proto/IOSAppDetail;

    .line 242
    return-object p0
.end method

.method public final media_press_detail(Lcom/wandoujia/api/proto/MediaPressDetail;)Lcom/wandoujia/api/proto/Detail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/wandoujia/api/proto/Detail$Builder;->media_press_detail:Lcom/wandoujia/api/proto/MediaPressDetail;

    .line 311
    return-object p0
.end method

.method public final music_detail(Lcom/wandoujia/api/proto/MusicDetail;)Lcom/wandoujia/api/proto/Detail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/wandoujia/api/proto/Detail$Builder;->music_detail:Lcom/wandoujia/api/proto/MusicDetail;

    .line 221
    return-object p0
.end method

.method public final publisher_bundle_detail(Lcom/wandoujia/api/proto/PublisherBundleDetail;)Lcom/wandoujia/api/proto/Detail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/wandoujia/api/proto/Detail$Builder;->publisher_bundle_detail:Lcom/wandoujia/api/proto/PublisherBundleDetail;

    .line 274
    return-object p0
.end method

.method public final publisher_detail(Lcom/wandoujia/api/proto/PublisherDetail;)Lcom/wandoujia/api/proto/Detail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/wandoujia/api/proto/Detail$Builder;->publisher_detail:Lcom/wandoujia/api/proto/PublisherDetail;

    .line 266
    return-object p0
.end method

.method public final publisher_time_detail(Lcom/wandoujia/api/proto/PublisherTimeDetail;)Lcom/wandoujia/api/proto/Detail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/wandoujia/api/proto/Detail$Builder;->publisher_time_detail:Lcom/wandoujia/api/proto/PublisherTimeDetail;

    .line 282
    return-object p0
.end method

.method public final scene_detail(Lcom/wandoujia/api/proto/SceneDetail;)Lcom/wandoujia/api/proto/Detail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/wandoujia/api/proto/Detail$Builder;->scene_detail:Lcom/wandoujia/api/proto/SceneDetail;

    .line 295
    return-object p0
.end method

.method public final share_detail(Lcom/wandoujia/api/proto/ShareDetail;)Lcom/wandoujia/api/proto/Detail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/wandoujia/api/proto/Detail$Builder;->share_detail:Lcom/wandoujia/api/proto/ShareDetail;

    .line 287
    return-object p0
.end method

.method public final suggestion_detail(Lcom/wandoujia/api/proto/SuggestionDetail;)Lcom/wandoujia/api/proto/Detail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/wandoujia/api/proto/Detail$Builder;->suggestion_detail:Lcom/wandoujia/api/proto/SuggestionDetail;

    .line 303
    return-object p0
.end method

.method public final today_detail(Lcom/wandoujia/api/proto/TodayDetail;)Lcom/wandoujia/api/proto/Detail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/wandoujia/api/proto/Detail$Builder;->today_detail:Lcom/wandoujia/api/proto/TodayDetail;

    .line 237
    return-object p0
.end method

.method public final video_detail(Lcom/wandoujia/api/proto/VideoDetail;)Lcom/wandoujia/api/proto/Detail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/wandoujia/api/proto/Detail$Builder;->video_detail:Lcom/wandoujia/api/proto/VideoDetail;

    .line 213
    return-object p0
.end method
