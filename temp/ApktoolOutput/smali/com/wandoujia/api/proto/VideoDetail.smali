.class public final Lcom/wandoujia/api/proto/VideoDetail;
.super Lcom/squareup/wire/Message;
.source "VideoDetail.java"


# static fields
.field public static final DEFAULT_ACTOR:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMMON_DOWNLOAD_SOURCE:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CREATED_DATE:Ljava/lang/Long; = null

.field public static final DEFAULT_DEFAULT_EPISODE:Ljava/lang/String; = ""

.field public static final DEFAULT_DOWNLOAD_COUNT:Ljava/lang/Long; = null

.field public static final DEFAULT_DURATION:Ljava/lang/Double; = null

.field public static final DEFAULT_EPISODE_DATE:Ljava/lang/Long; = null

.field public static final DEFAULT_EPISODE_NUM:Ljava/lang/Integer; = null

.field public static final DEFAULT_HEIGHT:Ljava/lang/Integer; = null

.field public static final DEFAULT_LARGE_COVER_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_LATEST_EPISODE_DATE:Ljava/lang/Long; = null

.field public static final DEFAULT_LATEST_EPISODE_NUM:Ljava/lang/Integer; = null

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_NO_DOWNLOAD_URLS:Ljava/lang/Boolean; = null

.field public static final DEFAULT_NO_PLAY_INFOS:Ljava/lang/Boolean; = null

.field public static final DEFAULT_NO_PRIVATE_DOWNLOAD_URLS:Ljava/lang/Boolean; = null

.field public static final DEFAULT_PLAY_SOURCE_SET:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PRIVATE_DOWNLOAD_SOURCE:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PROVIDER_NAME:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_RECOMMEND:Ljava/lang/String; = ""

.field public static final DEFAULT_SECTION_RECOMMEND:Ljava/lang/String; = ""

.field public static final DEFAULT_SMALL_COVER_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_SUBSCRIBE_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_SUB_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_TOTAL_EPISODES_NUM:Ljava/lang/Integer; = null

.field public static final DEFAULT_TOTAL_SIZE:Ljava/lang/Long; = null

.field public static final DEFAULT_UPDATED_DATE:Ljava/lang/Long; = null

.field public static final DEFAULT_VIDEO_ID:Ljava/lang/Long; = null

.field public static final DEFAULT_VIDEO_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_VIDEO_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_WIDTH:Ljava/lang/Integer;


# instance fields
.field public final actor:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1d
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final common_download_source:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x19
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final cover:Lcom/wandoujia/api/proto/Image;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1c
    .end annotation
.end field

.field public final created_date:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final default_episode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x15
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final download_count:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final duration:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1e
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final episode_date:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x16
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final episode_num:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x17
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final height:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x20
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final large_cover_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final latest_episode_date:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final latest_episode_num:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1b
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final no_download_urls:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final no_play_infos:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final no_private_download_urls:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final play_source_set:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1a
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final private_download_source:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x18
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final provider_name:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final recommend:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final section_recommend:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final small_cover_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sub_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x14
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final subscribe_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final total_episodes_num:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final total_size:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final updated_date:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final video_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final video_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final video_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final width:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1f
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_NO_PLAY_INFOS:Ljava/lang/Boolean;

    .line 20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_NO_DOWNLOAD_URLS:Ljava/lang/Boolean;

    .line 21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_NO_PRIVATE_DOWNLOAD_URLS:Ljava/lang/Boolean;

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_TOTAL_EPISODES_NUM:Ljava/lang/Integer;

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_LATEST_EPISODE_NUM:Ljava/lang/Integer;

    .line 24
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_VIDEO_ID:Ljava/lang/Long;

    .line 25
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_TOTAL_SIZE:Ljava/lang/Long;

    .line 26
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_CREATED_DATE:Ljava/lang/Long;

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_UPDATED_DATE:Ljava/lang/Long;

    .line 28
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_DOWNLOAD_COUNT:Ljava/lang/Long;

    .line 29
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_LATEST_EPISODE_DATE:Ljava/lang/Long;

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_PROVIDER_NAME:Ljava/util/List;

    .line 40
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_EPISODE_DATE:Ljava/lang/Long;

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_EPISODE_NUM:Ljava/lang/Integer;

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_PRIVATE_DOWNLOAD_SOURCE:Ljava/util/List;

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_COMMON_DOWNLOAD_SOURCE:Ljava/util/List;

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_PLAY_SOURCE_SET:Ljava/util/List;

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_ACTOR:Ljava/util/List;

    .line 47
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_DURATION:Ljava/lang/Double;

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_WIDTH:Ljava/lang/Integer;

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/VideoDetail;->DEFAULT_HEIGHT:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/VideoDetail$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 155
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->no_play_infos:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->no_play_infos:Ljava/lang/Boolean;

    .line 156
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->no_download_urls:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->no_download_urls:Ljava/lang/Boolean;

    .line 157
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->no_private_download_urls:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->no_private_download_urls:Ljava/lang/Boolean;

    .line 158
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->total_episodes_num:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->total_episodes_num:Ljava/lang/Integer;

    .line 159
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->latest_episode_num:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->latest_episode_num:Ljava/lang/Integer;

    .line 160
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->video_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->video_id:Ljava/lang/Long;

    .line 161
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->total_size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->total_size:Ljava/lang/Long;

    .line 162
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->created_date:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->created_date:Ljava/lang/Long;

    .line 163
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->updated_date:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->updated_date:Ljava/lang/Long;

    .line 164
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->download_count:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->download_count:Ljava/lang/Long;

    .line 165
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->latest_episode_date:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->latest_episode_date:Ljava/lang/Long;

    .line 166
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->recommend:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->recommend:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->video_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->video_title:Ljava/lang/String;

    .line 168
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->subscribe_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->subscribe_url:Ljava/lang/String;

    .line 169
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->large_cover_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->large_cover_url:Ljava/lang/String;

    .line 170
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->small_cover_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->small_cover_url:Ljava/lang/String;

    .line 171
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->section_recommend:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->section_recommend:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->provider_name:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/VideoDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->provider_name:Ljava/util/List;

    .line 173
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->video_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->video_type:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->sub_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->sub_type:Ljava/lang/String;

    .line 175
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->default_episode:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->default_episode:Ljava/lang/String;

    .line 176
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->episode_date:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->episode_date:Ljava/lang/Long;

    .line 177
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->episode_num:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->episode_num:Ljava/lang/Integer;

    .line 178
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->private_download_source:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/VideoDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->private_download_source:Ljava/util/List;

    .line 179
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->common_download_source:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/VideoDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->common_download_source:Ljava/util/List;

    .line 180
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->play_source_set:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/VideoDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->play_source_set:Ljava/util/List;

    .line 181
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->name:Ljava/lang/String;

    .line 182
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->cover:Lcom/wandoujia/api/proto/Image;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->cover:Lcom/wandoujia/api/proto/Image;

    .line 183
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->actor:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/VideoDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->actor:Ljava/util/List;

    .line 184
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->duration:Ljava/lang/Double;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->duration:Ljava/lang/Double;

    .line 185
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->width:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->width:Ljava/lang/Integer;

    .line 186
    iget-object v0, p1, Lcom/wandoujia/api/proto/VideoDetail$Builder;->height:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->height:Ljava/lang/Integer;

    .line 187
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/VideoDetail$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/VideoDetail;-><init>(Lcom/wandoujia/api/proto/VideoDetail$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-static {p0}, Lcom/wandoujia/api/proto/VideoDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-static {p0}, Lcom/wandoujia/api/proto/VideoDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-static {p0}, Lcom/wandoujia/api/proto/VideoDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-static {p0}, Lcom/wandoujia/api/proto/VideoDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-static {p0}, Lcom/wandoujia/api/proto/VideoDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    if-ne p1, p0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/VideoDetail;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 193
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/VideoDetail;

    .line 194
    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->no_play_infos:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->no_play_infos:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->no_download_urls:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->no_download_urls:Ljava/lang/Boolean;

    .line 195
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->no_private_download_urls:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->no_private_download_urls:Ljava/lang/Boolean;

    .line 196
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->total_episodes_num:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->total_episodes_num:Ljava/lang/Integer;

    .line 197
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->latest_episode_num:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->latest_episode_num:Ljava/lang/Integer;

    .line 198
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->video_id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->video_id:Ljava/lang/Long;

    .line 199
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->total_size:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->total_size:Ljava/lang/Long;

    .line 200
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->created_date:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->created_date:Ljava/lang/Long;

    .line 201
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->updated_date:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->updated_date:Ljava/lang/Long;

    .line 202
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->download_count:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->download_count:Ljava/lang/Long;

    .line 203
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->latest_episode_date:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->latest_episode_date:Ljava/lang/Long;

    .line 204
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->recommend:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->recommend:Ljava/lang/String;

    .line 205
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->video_title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->video_title:Ljava/lang/String;

    .line 206
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->subscribe_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->subscribe_url:Ljava/lang/String;

    .line 207
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->large_cover_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->large_cover_url:Ljava/lang/String;

    .line 208
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->small_cover_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->small_cover_url:Ljava/lang/String;

    .line 209
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->section_recommend:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->section_recommend:Ljava/lang/String;

    .line 210
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->provider_name:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->provider_name:Ljava/util/List;

    .line 211
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->video_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->video_type:Ljava/lang/String;

    .line 212
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->sub_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->sub_type:Ljava/lang/String;

    .line 213
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->default_episode:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->default_episode:Ljava/lang/String;

    .line 214
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->episode_date:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->episode_date:Ljava/lang/Long;

    .line 215
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->episode_num:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->episode_num:Ljava/lang/Integer;

    .line 216
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->private_download_source:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->private_download_source:Ljava/util/List;

    .line 217
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->common_download_source:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->common_download_source:Ljava/util/List;

    .line 218
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->play_source_set:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->play_source_set:Ljava/util/List;

    .line 219
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->name:Ljava/lang/String;

    .line 220
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->cover:Lcom/wandoujia/api/proto/Image;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->cover:Lcom/wandoujia/api/proto/Image;

    .line 221
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->actor:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->actor:Ljava/util/List;

    .line 222
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->duration:Ljava/lang/Double;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->duration:Ljava/lang/Double;

    .line 223
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->width:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->width:Ljava/lang/Integer;

    .line 224
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->height:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/VideoDetail;->height:Ljava/lang/Integer;

    .line 225
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/VideoDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 230
    iget v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->hashCode:I

    .line 231
    if-nez v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->no_play_infos:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->no_play_infos:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    .line 233
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->no_download_urls:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->no_download_urls:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    .line 234
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->no_private_download_urls:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->no_private_download_urls:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    .line 235
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->total_episodes_num:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->total_episodes_num:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    .line 236
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->latest_episode_num:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->latest_episode_num:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    .line 237
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->video_id:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->video_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    .line 238
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->total_size:Ljava/lang/Long;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->total_size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    .line 239
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->created_date:Ljava/lang/Long;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->created_date:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    .line 240
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->updated_date:Ljava/lang/Long;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->updated_date:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v3

    .line 241
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->download_count:Ljava/lang/Long;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->download_count:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v3

    .line 242
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->latest_episode_date:Ljava/lang/Long;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->latest_episode_date:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v3

    .line 243
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->recommend:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->recommend:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v3

    .line 244
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->video_title:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->video_title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v3

    .line 245
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->subscribe_url:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->subscribe_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v3

    .line 246
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->large_cover_url:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->large_cover_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v3

    .line 247
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->small_cover_url:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->small_cover_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v3

    .line 248
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->section_recommend:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->section_recommend:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v3

    .line 249
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->provider_name:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->provider_name:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v3

    .line 250
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->video_type:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->video_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v3

    .line 251
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->sub_type:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->sub_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v3

    .line 252
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->default_episode:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->default_episode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v3

    .line 253
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->episode_date:Ljava/lang/Long;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->episode_date:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v3

    .line 254
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->episode_num:Ljava/lang/Integer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->episode_num:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v0, v3

    .line 255
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->private_download_source:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->private_download_source:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v3

    .line 256
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->common_download_source:Ljava/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->common_download_source:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_18
    add-int/2addr v0, v3

    .line 257
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->play_source_set:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->play_source_set:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v3

    .line 258
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->name:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1a
    add-int/2addr v0, v3

    .line 259
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->cover:Lcom/wandoujia/api/proto/Image;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->cover:Lcom/wandoujia/api/proto/Image;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Image;->hashCode()I

    move-result v0

    :goto_1b
    add-int/2addr v0, v3

    .line 260
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/wandoujia/api/proto/VideoDetail;->actor:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->actor:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    .line 261
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->duration:Ljava/lang/Double;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->duration:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_1c
    add-int/2addr v0, v2

    .line 262
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->width:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->width:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1d
    add-int/2addr v0, v2

    .line 263
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/VideoDetail;->height:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/wandoujia/api/proto/VideoDetail;->height:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    .line 264
    iput v0, p0, Lcom/wandoujia/api/proto/VideoDetail;->hashCode:I

    .line 266
    :cond_2
    return v0

    :cond_3
    move v0, v1

    .line 232
    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 233
    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 234
    goto/16 :goto_2

    :cond_6
    move v0, v1

    .line 235
    goto/16 :goto_3

    :cond_7
    move v0, v1

    .line 236
    goto/16 :goto_4

    :cond_8
    move v0, v1

    .line 237
    goto/16 :goto_5

    :cond_9
    move v0, v1

    .line 238
    goto/16 :goto_6

    :cond_a
    move v0, v1

    .line 239
    goto/16 :goto_7

    :cond_b
    move v0, v1

    .line 240
    goto/16 :goto_8

    :cond_c
    move v0, v1

    .line 241
    goto/16 :goto_9

    :cond_d
    move v0, v1

    .line 242
    goto/16 :goto_a

    :cond_e
    move v0, v1

    .line 243
    goto/16 :goto_b

    :cond_f
    move v0, v1

    .line 244
    goto/16 :goto_c

    :cond_10
    move v0, v1

    .line 245
    goto/16 :goto_d

    :cond_11
    move v0, v1

    .line 246
    goto/16 :goto_e

    :cond_12
    move v0, v1

    .line 247
    goto/16 :goto_f

    :cond_13
    move v0, v1

    .line 248
    goto/16 :goto_10

    :cond_14
    move v0, v2

    .line 249
    goto/16 :goto_11

    :cond_15
    move v0, v1

    .line 250
    goto/16 :goto_12

    :cond_16
    move v0, v1

    .line 251
    goto/16 :goto_13

    :cond_17
    move v0, v1

    .line 252
    goto/16 :goto_14

    :cond_18
    move v0, v1

    .line 253
    goto/16 :goto_15

    :cond_19
    move v0, v1

    .line 254
    goto/16 :goto_16

    :cond_1a
    move v0, v2

    .line 255
    goto/16 :goto_17

    :cond_1b
    move v0, v2

    .line 256
    goto/16 :goto_18

    :cond_1c
    move v0, v2

    .line 257
    goto/16 :goto_19

    :cond_1d
    move v0, v1

    .line 258
    goto/16 :goto_1a

    :cond_1e
    move v0, v1

    .line 259
    goto/16 :goto_1b

    :cond_1f
    move v0, v1

    .line 261
    goto :goto_1c

    :cond_20
    move v0, v1

    .line 262
    goto :goto_1d
.end method
