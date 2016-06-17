.class public final Lcom/wandoujia/api/proto/Detail;
.super Lcom/squareup/wire/Message;
.source "Detail.java"


# instance fields
.field public final app_comment:Lcom/wandoujia/api/proto/CommentSummary;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
    .end annotation
.end field

.field public final app_detail:Lcom/wandoujia/api/proto/AppDetail;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
    .end annotation
.end field

.field public final article_detail:Lcom/wandoujia/api/proto/ArticleDetail;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field

.field public final gift_detail:Lcom/wandoujia/api/proto/GiftDetail;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
    .end annotation
.end field

.field public final ios_app_detail:Lcom/wandoujia/api/proto/IOSAppDetail;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
    .end annotation
.end field

.field public final media_press_detail:Lcom/wandoujia/api/proto/MediaPressDetail;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
    .end annotation
.end field

.field public final music_detail:Lcom/wandoujia/api/proto/MusicDetail;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
    .end annotation
.end field

.field public final publisher_bundle_detail:Lcom/wandoujia/api/proto/PublisherBundleDetail;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
    .end annotation
.end field

.field public final publisher_detail:Lcom/wandoujia/api/proto/PublisherDetail;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
    .end annotation
.end field

.field public final publisher_time_detail:Lcom/wandoujia/api/proto/PublisherTimeDetail;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
    .end annotation
.end field

.field public final scene_detail:Lcom/wandoujia/api/proto/SceneDetail;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
    .end annotation
.end field

.field public final share_detail:Lcom/wandoujia/api/proto/ShareDetail;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
    .end annotation
.end field

.field public final suggestion_detail:Lcom/wandoujia/api/proto/SuggestionDetail;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
    .end annotation
.end field

.field public final today_detail:Lcom/wandoujia/api/proto/TodayDetail;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
    .end annotation
.end field

.field public final video_detail:Lcom/wandoujia/api/proto/VideoDetail;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/api/proto/Detail$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 96
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail$Builder;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    .line 97
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail$Builder;->video_detail:Lcom/wandoujia/api/proto/VideoDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail;->video_detail:Lcom/wandoujia/api/proto/VideoDetail;

    .line 98
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail$Builder;->music_detail:Lcom/wandoujia/api/proto/MusicDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail;->music_detail:Lcom/wandoujia/api/proto/MusicDetail;

    .line 99
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail$Builder;->article_detail:Lcom/wandoujia/api/proto/ArticleDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail;->article_detail:Lcom/wandoujia/api/proto/ArticleDetail;

    .line 100
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail$Builder;->today_detail:Lcom/wandoujia/api/proto/TodayDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail;->today_detail:Lcom/wandoujia/api/proto/TodayDetail;

    .line 101
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail$Builder;->ios_app_detail:Lcom/wandoujia/api/proto/IOSAppDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail;->ios_app_detail:Lcom/wandoujia/api/proto/IOSAppDetail;

    .line 102
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail$Builder;->app_comment:Lcom/wandoujia/api/proto/CommentSummary;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail;->app_comment:Lcom/wandoujia/api/proto/CommentSummary;

    .line 103
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail$Builder;->gift_detail:Lcom/wandoujia/api/proto/GiftDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail;->gift_detail:Lcom/wandoujia/api/proto/GiftDetail;

    .line 104
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail$Builder;->publisher_detail:Lcom/wandoujia/api/proto/PublisherDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail;->publisher_detail:Lcom/wandoujia/api/proto/PublisherDetail;

    .line 105
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail$Builder;->publisher_bundle_detail:Lcom/wandoujia/api/proto/PublisherBundleDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail;->publisher_bundle_detail:Lcom/wandoujia/api/proto/PublisherBundleDetail;

    .line 106
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail$Builder;->publisher_time_detail:Lcom/wandoujia/api/proto/PublisherTimeDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail;->publisher_time_detail:Lcom/wandoujia/api/proto/PublisherTimeDetail;

    .line 107
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail$Builder;->share_detail:Lcom/wandoujia/api/proto/ShareDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail;->share_detail:Lcom/wandoujia/api/proto/ShareDetail;

    .line 108
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail$Builder;->scene_detail:Lcom/wandoujia/api/proto/SceneDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail;->scene_detail:Lcom/wandoujia/api/proto/SceneDetail;

    .line 109
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail$Builder;->suggestion_detail:Lcom/wandoujia/api/proto/SuggestionDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail;->suggestion_detail:Lcom/wandoujia/api/proto/SuggestionDetail;

    .line 110
    iget-object v0, p1, Lcom/wandoujia/api/proto/Detail$Builder;->media_press_detail:Lcom/wandoujia/api/proto/MediaPressDetail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Detail;->media_press_detail:Lcom/wandoujia/api/proto/MediaPressDetail;

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/Detail$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/Detail;-><init>(Lcom/wandoujia/api/proto/Detail$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    if-ne p1, p0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/Detail;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 117
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/Detail;

    .line 118
    iget-object v2, p0, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Detail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Detail;->video_detail:Lcom/wandoujia/api/proto/VideoDetail;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Detail;->video_detail:Lcom/wandoujia/api/proto/VideoDetail;

    .line 119
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Detail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Detail;->music_detail:Lcom/wandoujia/api/proto/MusicDetail;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Detail;->music_detail:Lcom/wandoujia/api/proto/MusicDetail;

    .line 120
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Detail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Detail;->article_detail:Lcom/wandoujia/api/proto/ArticleDetail;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Detail;->article_detail:Lcom/wandoujia/api/proto/ArticleDetail;

    .line 121
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Detail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Detail;->today_detail:Lcom/wandoujia/api/proto/TodayDetail;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Detail;->today_detail:Lcom/wandoujia/api/proto/TodayDetail;

    .line 122
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Detail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Detail;->ios_app_detail:Lcom/wandoujia/api/proto/IOSAppDetail;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Detail;->ios_app_detail:Lcom/wandoujia/api/proto/IOSAppDetail;

    .line 123
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Detail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Detail;->app_comment:Lcom/wandoujia/api/proto/CommentSummary;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Detail;->app_comment:Lcom/wandoujia/api/proto/CommentSummary;

    .line 124
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Detail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Detail;->gift_detail:Lcom/wandoujia/api/proto/GiftDetail;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Detail;->gift_detail:Lcom/wandoujia/api/proto/GiftDetail;

    .line 125
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Detail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Detail;->publisher_detail:Lcom/wandoujia/api/proto/PublisherDetail;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Detail;->publisher_detail:Lcom/wandoujia/api/proto/PublisherDetail;

    .line 126
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Detail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Detail;->publisher_bundle_detail:Lcom/wandoujia/api/proto/PublisherBundleDetail;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Detail;->publisher_bundle_detail:Lcom/wandoujia/api/proto/PublisherBundleDetail;

    .line 127
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Detail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Detail;->publisher_time_detail:Lcom/wandoujia/api/proto/PublisherTimeDetail;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Detail;->publisher_time_detail:Lcom/wandoujia/api/proto/PublisherTimeDetail;

    .line 128
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Detail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Detail;->share_detail:Lcom/wandoujia/api/proto/ShareDetail;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Detail;->share_detail:Lcom/wandoujia/api/proto/ShareDetail;

    .line 129
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Detail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Detail;->scene_detail:Lcom/wandoujia/api/proto/SceneDetail;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Detail;->scene_detail:Lcom/wandoujia/api/proto/SceneDetail;

    .line 130
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Detail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Detail;->suggestion_detail:Lcom/wandoujia/api/proto/SuggestionDetail;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Detail;->suggestion_detail:Lcom/wandoujia/api/proto/SuggestionDetail;

    .line 131
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Detail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Detail;->media_press_detail:Lcom/wandoujia/api/proto/MediaPressDetail;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Detail;->media_press_detail:Lcom/wandoujia/api/proto/MediaPressDetail;

    .line 132
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Detail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 137
    iget v0, p0, Lcom/wandoujia/api/proto/Detail;->hashCode:I

    .line 138
    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/AppDetail;->hashCode()I

    move-result v0

    .line 140
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->video_detail:Lcom/wandoujia/api/proto/VideoDetail;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->video_detail:Lcom/wandoujia/api/proto/VideoDetail;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/VideoDetail;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 141
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->music_detail:Lcom/wandoujia/api/proto/MusicDetail;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->music_detail:Lcom/wandoujia/api/proto/MusicDetail;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/MusicDetail;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->article_detail:Lcom/wandoujia/api/proto/ArticleDetail;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->article_detail:Lcom/wandoujia/api/proto/ArticleDetail;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/ArticleDetail;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 143
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->today_detail:Lcom/wandoujia/api/proto/TodayDetail;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->today_detail:Lcom/wandoujia/api/proto/TodayDetail;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/TodayDetail;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 144
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->ios_app_detail:Lcom/wandoujia/api/proto/IOSAppDetail;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->ios_app_detail:Lcom/wandoujia/api/proto/IOSAppDetail;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/IOSAppDetail;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 145
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->app_comment:Lcom/wandoujia/api/proto/CommentSummary;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->app_comment:Lcom/wandoujia/api/proto/CommentSummary;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/CommentSummary;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 146
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->gift_detail:Lcom/wandoujia/api/proto/GiftDetail;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->gift_detail:Lcom/wandoujia/api/proto/GiftDetail;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/GiftDetail;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 147
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->publisher_detail:Lcom/wandoujia/api/proto/PublisherDetail;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->publisher_detail:Lcom/wandoujia/api/proto/PublisherDetail;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/PublisherDetail;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 148
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->publisher_bundle_detail:Lcom/wandoujia/api/proto/PublisherBundleDetail;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->publisher_bundle_detail:Lcom/wandoujia/api/proto/PublisherBundleDetail;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/PublisherBundleDetail;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 149
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->publisher_time_detail:Lcom/wandoujia/api/proto/PublisherTimeDetail;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->publisher_time_detail:Lcom/wandoujia/api/proto/PublisherTimeDetail;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/PublisherTimeDetail;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 150
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->share_detail:Lcom/wandoujia/api/proto/ShareDetail;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->share_detail:Lcom/wandoujia/api/proto/ShareDetail;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/ShareDetail;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 151
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->scene_detail:Lcom/wandoujia/api/proto/SceneDetail;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->scene_detail:Lcom/wandoujia/api/proto/SceneDetail;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/SceneDetail;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 152
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->suggestion_detail:Lcom/wandoujia/api/proto/SuggestionDetail;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/wandoujia/api/proto/Detail;->suggestion_detail:Lcom/wandoujia/api/proto/SuggestionDetail;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/SuggestionDetail;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    .line 153
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/Detail;->media_press_detail:Lcom/wandoujia/api/proto/MediaPressDetail;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/Detail;->media_press_detail:Lcom/wandoujia/api/proto/MediaPressDetail;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/MediaPressDetail;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 154
    iput v0, p0, Lcom/wandoujia/api/proto/Detail;->hashCode:I

    .line 156
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 139
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 140
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 141
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 142
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 143
    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 144
    goto/16 :goto_5

    :cond_8
    move v0, v1

    .line 145
    goto :goto_6

    :cond_9
    move v0, v1

    .line 146
    goto :goto_7

    :cond_a
    move v0, v1

    .line 147
    goto :goto_8

    :cond_b
    move v0, v1

    .line 148
    goto :goto_9

    :cond_c
    move v0, v1

    .line 149
    goto :goto_a

    :cond_d
    move v0, v1

    .line 150
    goto :goto_b

    :cond_e
    move v0, v1

    .line 151
    goto :goto_c

    :cond_f
    move v0, v1

    .line 152
    goto :goto_d
.end method
