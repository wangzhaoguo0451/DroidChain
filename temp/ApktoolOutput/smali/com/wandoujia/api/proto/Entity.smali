.class public final Lcom/wandoujia/api/proto/Entity;
.super Lcom/squareup/wire/Message;
.source "Entity.java"


# static fields
.field public static final DEFAULT_ALLOW_SAVE_IMAGE:Ljava/lang/Boolean; = null

.field public static final DEFAULT_ALLOW_SHARE_IMAGE:Ljava/lang/Boolean; = null

.field public static final DEFAULT_ATTACHMENT:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ATTACH_ENTITY:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BADGE:Ljava/lang/Integer; = null

.field public static final DEFAULT_CHANNEL:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CLOSED_GUESS:Ljava/lang/Boolean; = null

.field public static final DEFAULT_CONTENT_TYPE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType; = null

.field public static final DEFAULT_COVER:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COVER_TOTAL_COUNT:Ljava/lang/Integer; = null

.field public static final DEFAULT_DATEPUBLISHED:Ljava/lang/Long; = null

.field public static final DEFAULT_DESCRIPTION:Ljava/lang/String; = ""

.field public static final DEFAULT_DETAIL_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_FOLLOW_COUNT:Ljava/lang/Long; = null

.field public static final DEFAULT_ICON:Ljava/lang/String; = ""

.field public static final DEFAULT_ID:Ljava/lang/Long; = null

.field public static final DEFAULT_ID_STRING:Ljava/lang/String; = ""

.field public static final DEFAULT_IMAGE:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_IMAGE_TOTAL_COUNT:Ljava/lang/Integer; = null

.field public static final DEFAULT_MUSIC:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Music;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MUSIC_TOTAL_COUNT:Ljava/lang/Integer; = null

.field public static final DEFAULT_NEED_FILTER:Ljava/lang/Boolean; = null

.field public static final DEFAULT_RECOMMEND_REASON:Ljava/lang/String; = ""

.field public static final DEFAULT_SECTION_AUTO_GRID_ROWS:Ljava/lang/Integer; = null

.field public static final DEFAULT_SNIPPET:Ljava/lang/String; = ""

.field public static final DEFAULT_STRATEGY_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_SUBSCRIBED:Ljava/lang/Boolean; = null

.field public static final DEFAULT_SUB_ENTITY:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SUB_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_SUMMARY:Ljava/lang/String; = ""

.field public static final DEFAULT_SUPPORT_RIPPLE:Ljava/lang/Boolean; = null

.field public static final DEFAULT_SYMBOL:Ljava/lang/String; = ""

.field public static final DEFAULT_TAG:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Tag;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_TAG_LINE:Ljava/lang/String; = ""

.field public static final DEFAULT_TEMPLATE:Ljava/lang/Integer; = null

.field public static final DEFAULT_TEMPLATE_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_TEMPLATE_TYPE:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType; = null

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Ljava/lang/Integer; = null

.field public static final DEFAULT_VERTICAL:Ljava/lang/String; = ""

.field public static final DEFAULT_VIDEO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Video;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_VIDEO_TOTAL_COUNT:Ljava/lang/Integer;


# instance fields
.field public final action:Lcom/wandoujia/api/proto/Action;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
    .end annotation
.end field

.field public final action_positive:Lcom/wandoujia/api/proto/Action;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x21
    .end annotation
.end field

.field public final allow_save_image:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2f
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final allow_share_image:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x30
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final attach_entity:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x22
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public final attachment:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0xc
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public final badge:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1f
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final channel:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public final closed_guess:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2e
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final content_type:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x25
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final cover:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;"
        }
    .end annotation
.end field

.field public final cover_total_count:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1b
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final datePublished:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->FIXED64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x20
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final detail:Lcom/wandoujia/api/proto/Detail;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
    .end annotation
.end field

.field public final detail_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final favorite_summary:Lcom/wandoujia/api/proto/FavoriteSummary;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
    .end annotation
.end field

.field public final follow_count:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2c
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final icon:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final icon_image:Lcom/wandoujia/api/proto/Image;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2a
    .end annotation
.end field

.field public final id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->SFIXED64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final id_string:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x28
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final image:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;"
        }
    .end annotation
.end field

.field public final image_total_count:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1a
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final music:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Music;",
            ">;"
        }
    .end annotation
.end field

.field public final music_total_count:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1d
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final need_filter:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x31
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final provider:Lcom/wandoujia/api/proto/Entity;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field

.field public final recommend_reason:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2b
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final section_auto_grid_rows:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x32
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final share_summary:Lcom/wandoujia/api/proto/ShareSummary;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x19
    .end annotation
.end field

.field public final snippet:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x14
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final strategy_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2d
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sub_entity:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public final sub_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final subscribed:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final summary:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final support_ripple:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x17
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final symbol:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x24
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final tag:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x23
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Tag;",
            ">;"
        }
    .end annotation
.end field

.field public final tag_line:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x29
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final template:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final template_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x16
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final template_type:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x26
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final vertical:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1e
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final video:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x7
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Video;",
            ">;"
        }
    .end annotation
.end field

.field public final video_total_count:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1c
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_ID:Ljava/lang/Long;

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_TYPE:Ljava/lang/Integer;

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_TEMPLATE:Ljava/lang/Integer;

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_IMAGE:Ljava/util/List;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_COVER:Ljava/util/List;

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_DATEPUBLISHED:Ljava/lang/Long;

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_SUB_ENTITY:Ljava/util/List;

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_SUPPORT_RIPPLE:Ljava/lang/Boolean;

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_BADGE:Ljava/lang/Integer;

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_ATTACH_ENTITY:Ljava/util/List;

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_TAG:Ljava/util/List;

    .line 43
    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->NOT_SUPPORT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_CONTENT_TYPE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 44
    sget-object v0, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->NOT_SUPPORT:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_TEMPLATE_TYPE:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_VIDEO:Ljava/util/List;

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_MUSIC:Ljava/util/List;

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_IMAGE_TOTAL_COUNT:Ljava/lang/Integer;

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_COVER_TOTAL_COUNT:Ljava/lang/Integer;

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_VIDEO_TOTAL_COUNT:Ljava/lang/Integer;

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_MUSIC_TOTAL_COUNT:Ljava/lang/Integer;

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_CHANNEL:Ljava/util/List;

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_SUBSCRIBED:Ljava/lang/Boolean;

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_ATTACHMENT:Ljava/util/List;

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_FOLLOW_COUNT:Ljava/lang/Long;

    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_CLOSED_GUESS:Ljava/lang/Boolean;

    .line 59
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_ALLOW_SAVE_IMAGE:Ljava/lang/Boolean;

    .line 60
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_ALLOW_SHARE_IMAGE:Ljava/lang/Boolean;

    .line 61
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_NEED_FILTER:Ljava/lang/Boolean;

    .line 62
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Entity;->DEFAULT_SECTION_AUTO_GRID_ROWS:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/Entity$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 352
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->id:Ljava/lang/Long;

    .line 353
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->type:Ljava/lang/Integer;

    .line 354
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->template:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->template:Ljava/lang/Integer;

    .line 355
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->icon:Ljava/lang/String;

    .line 356
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->icon_image:Lcom/wandoujia/api/proto/Image;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->icon_image:Lcom/wandoujia/api/proto/Image;

    .line 357
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->provider:Lcom/wandoujia/api/proto/Entity;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->provider:Lcom/wandoujia/api/proto/Entity;

    .line 358
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->image:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->image:Ljava/util/List;

    .line 359
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->cover:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->cover:Ljava/util/List;

    .line 360
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->title:Ljava/lang/String;

    .line 361
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->sub_title:Ljava/lang/String;

    .line 362
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->summary:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->summary:Ljava/lang/String;

    .line 363
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->snippet:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->snippet:Ljava/lang/String;

    .line 364
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->tag_line:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->tag_line:Ljava/lang/String;

    .line 365
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    .line 366
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    .line 367
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->datePublished:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->datePublished:Ljava/lang/Long;

    .line 368
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->detail_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->detail_url:Ljava/lang/String;

    .line 369
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->sub_entity:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->sub_entity:Ljava/util/List;

    .line 370
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->template_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->template_name:Ljava/lang/String;

    .line 371
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->support_ripple:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->support_ripple:Ljava/lang/Boolean;

    .line 372
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->vertical:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->vertical:Ljava/lang/String;

    .line 373
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->badge:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->badge:Ljava/lang/Integer;

    .line 374
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->description:Ljava/lang/String;

    .line 375
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->action_positive:Lcom/wandoujia/api/proto/Action;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    .line 376
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->attach_entity:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->attach_entity:Ljava/util/List;

    .line 377
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->tag:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->tag:Ljava/util/List;

    .line 378
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->symbol:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->symbol:Ljava/lang/String;

    .line 379
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->content_type:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->content_type:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 380
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->template_type:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->template_type:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    .line 381
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->id_string:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->id_string:Ljava/lang/String;

    .line 382
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->strategy_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->strategy_name:Ljava/lang/String;

    .line 383
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->video:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->video:Ljava/util/List;

    .line 384
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->music:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->music:Ljava/util/List;

    .line 385
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->image_total_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->image_total_count:Ljava/lang/Integer;

    .line 386
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->cover_total_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->cover_total_count:Ljava/lang/Integer;

    .line 387
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->video_total_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->video_total_count:Ljava/lang/Integer;

    .line 388
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->music_total_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->music_total_count:Ljava/lang/Integer;

    .line 389
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->channel:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->channel:Ljava/util/List;

    .line 390
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->subscribed:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->subscribed:Ljava/lang/Boolean;

    .line 391
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->attachment:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/Entity;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->attachment:Ljava/util/List;

    .line 392
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->favorite_summary:Lcom/wandoujia/api/proto/FavoriteSummary;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->favorite_summary:Lcom/wandoujia/api/proto/FavoriteSummary;

    .line 393
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->share_summary:Lcom/wandoujia/api/proto/ShareSummary;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->share_summary:Lcom/wandoujia/api/proto/ShareSummary;

    .line 394
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->recommend_reason:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->recommend_reason:Ljava/lang/String;

    .line 395
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->follow_count:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->follow_count:Ljava/lang/Long;

    .line 396
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->closed_guess:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->closed_guess:Ljava/lang/Boolean;

    .line 397
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->allow_save_image:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->allow_save_image:Ljava/lang/Boolean;

    .line 398
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->allow_share_image:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->allow_share_image:Ljava/lang/Boolean;

    .line 399
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->need_filter:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->need_filter:Ljava/lang/Boolean;

    .line 400
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity$Builder;->section_auto_grid_rows:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Entity;->section_auto_grid_rows:Ljava/lang/Integer;

    .line 401
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/Entity$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/Entity;-><init>(Lcom/wandoujia/api/proto/Entity$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Lcom/wandoujia/api/proto/Entity;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 405
    if-ne p1, p0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 406
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/Entity;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 407
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/Entity;

    .line 408
    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->id:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->type:Ljava/lang/Integer;

    .line 409
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->template:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->template:Ljava/lang/Integer;

    .line 410
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->icon:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->icon:Ljava/lang/String;

    .line 411
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->icon_image:Lcom/wandoujia/api/proto/Image;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->icon_image:Lcom/wandoujia/api/proto/Image;

    .line 412
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->provider:Lcom/wandoujia/api/proto/Entity;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->provider:Lcom/wandoujia/api/proto/Entity;

    .line 413
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->image:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->image:Ljava/util/List;

    .line 414
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->cover:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->cover:Ljava/util/List;

    .line 415
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->title:Ljava/lang/String;

    .line 416
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->sub_title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->sub_title:Ljava/lang/String;

    .line 417
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->summary:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->summary:Ljava/lang/String;

    .line 418
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->snippet:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->snippet:Ljava/lang/String;

    .line 419
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->tag_line:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->tag_line:Ljava/lang/String;

    .line 420
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    .line 421
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    .line 422
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->datePublished:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->datePublished:Ljava/lang/Long;

    .line 423
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->detail_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->detail_url:Ljava/lang/String;

    .line 424
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->sub_entity:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->sub_entity:Ljava/util/List;

    .line 425
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->template_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->template_name:Ljava/lang/String;

    .line 426
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->support_ripple:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->support_ripple:Ljava/lang/Boolean;

    .line 427
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->vertical:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->vertical:Ljava/lang/String;

    .line 428
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->badge:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->badge:Ljava/lang/Integer;

    .line 429
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->description:Ljava/lang/String;

    .line 430
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    .line 431
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->attach_entity:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->attach_entity:Ljava/util/List;

    .line 432
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->tag:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->tag:Ljava/util/List;

    .line 433
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->symbol:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->symbol:Ljava/lang/String;

    .line 434
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->content_type:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->content_type:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 435
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->template_type:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->template_type:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    .line 436
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->id_string:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->id_string:Ljava/lang/String;

    .line 437
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->strategy_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->strategy_name:Ljava/lang/String;

    .line 438
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->video:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->video:Ljava/util/List;

    .line 439
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->music:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->music:Ljava/util/List;

    .line 440
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->image_total_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->image_total_count:Ljava/lang/Integer;

    .line 441
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->cover_total_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->cover_total_count:Ljava/lang/Integer;

    .line 442
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->video_total_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->video_total_count:Ljava/lang/Integer;

    .line 443
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->music_total_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->music_total_count:Ljava/lang/Integer;

    .line 444
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->channel:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->channel:Ljava/util/List;

    .line 445
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->subscribed:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->subscribed:Ljava/lang/Boolean;

    .line 446
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->attachment:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->attachment:Ljava/util/List;

    .line 447
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->favorite_summary:Lcom/wandoujia/api/proto/FavoriteSummary;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->favorite_summary:Lcom/wandoujia/api/proto/FavoriteSummary;

    .line 448
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->share_summary:Lcom/wandoujia/api/proto/ShareSummary;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->share_summary:Lcom/wandoujia/api/proto/ShareSummary;

    .line 449
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->recommend_reason:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->recommend_reason:Ljava/lang/String;

    .line 450
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->follow_count:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->follow_count:Ljava/lang/Long;

    .line 451
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->closed_guess:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->closed_guess:Ljava/lang/Boolean;

    .line 452
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->allow_save_image:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->allow_save_image:Ljava/lang/Boolean;

    .line 453
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->allow_share_image:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->allow_share_image:Ljava/lang/Boolean;

    .line 454
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->need_filter:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->need_filter:Ljava/lang/Boolean;

    .line 455
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->section_auto_grid_rows:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->section_auto_grid_rows:Ljava/lang/Integer;

    .line 456
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Entity;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 461
    iget v0, p0, Lcom/wandoujia/api/proto/Entity;->hashCode:I

    .line 462
    if-nez v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->id:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 464
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    .line 465
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->template:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->template:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    .line 466
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->icon:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->icon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    .line 467
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->icon_image:Lcom/wandoujia/api/proto/Image;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->icon_image:Lcom/wandoujia/api/proto/Image;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Image;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    .line 468
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->provider:Lcom/wandoujia/api/proto/Entity;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->provider:Lcom/wandoujia/api/proto/Entity;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    .line 469
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->image:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->image:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    .line 470
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->cover:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->cover:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    .line 471
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->title:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v3

    .line 472
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->sub_title:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->sub_title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v3

    .line 473
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->summary:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->summary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v3

    .line 474
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->snippet:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->snippet:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v3

    .line 475
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->tag_line:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->tag_line:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v3

    .line 476
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Detail;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v3

    .line 477
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Action;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v3

    .line 478
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->datePublished:Ljava/lang/Long;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->datePublished:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v3

    .line 479
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->detail_url:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->detail_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v3

    .line 480
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->sub_entity:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->sub_entity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v3

    .line 481
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->template_name:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->template_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v3

    .line 482
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->support_ripple:Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->support_ripple:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v3

    .line 483
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->vertical:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->vertical:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v3

    .line 484
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->badge:Ljava/lang/Integer;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->badge:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v3

    .line 485
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->description:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v0, v3

    .line 486
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Action;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v3

    .line 487
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->attach_entity:Ljava/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->attach_entity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_18
    add-int/2addr v0, v3

    .line 488
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->tag:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->tag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v3

    .line 489
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->symbol:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->symbol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1a
    add-int/2addr v0, v3

    .line 490
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->content_type:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->content_type:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->hashCode()I

    move-result v0

    :goto_1b
    add-int/2addr v0, v3

    .line 491
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->template_type:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->template_type:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->hashCode()I

    move-result v0

    :goto_1c
    add-int/2addr v0, v3

    .line 492
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->id_string:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->id_string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1d
    add-int/2addr v0, v3

    .line 493
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->strategy_name:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->strategy_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1e
    add-int/2addr v0, v3

    .line 494
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->video:Ljava/util/List;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->video:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1f
    add-int/2addr v0, v3

    .line 495
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->music:Ljava/util/List;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->music:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_20
    add-int/2addr v0, v3

    .line 496
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->image_total_count:Ljava/lang/Integer;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->image_total_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_21
    add-int/2addr v0, v3

    .line 497
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->cover_total_count:Ljava/lang/Integer;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->cover_total_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_22
    add-int/2addr v0, v3

    .line 498
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->video_total_count:Ljava/lang/Integer;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->video_total_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_23
    add-int/2addr v0, v3

    .line 499
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->music_total_count:Ljava/lang/Integer;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->music_total_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_24
    add-int/2addr v0, v3

    .line 500
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->channel:Ljava/util/List;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->channel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_25
    add-int/2addr v0, v3

    .line 501
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->subscribed:Ljava/lang/Boolean;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->subscribed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v3

    .line 502
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/wandoujia/api/proto/Entity;->attachment:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->attachment:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    .line 503
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->favorite_summary:Lcom/wandoujia/api/proto/FavoriteSummary;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->favorite_summary:Lcom/wandoujia/api/proto/FavoriteSummary;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/FavoriteSummary;->hashCode()I

    move-result v0

    :goto_27
    add-int/2addr v0, v2

    .line 504
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->share_summary:Lcom/wandoujia/api/proto/ShareSummary;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->share_summary:Lcom/wandoujia/api/proto/ShareSummary;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/ShareSummary;->hashCode()I

    move-result v0

    :goto_28
    add-int/2addr v0, v2

    .line 505
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->recommend_reason:Ljava/lang/String;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->recommend_reason:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_29
    add-int/2addr v0, v2

    .line 506
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->follow_count:Ljava/lang/Long;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->follow_count:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2a
    add-int/2addr v0, v2

    .line 507
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->closed_guess:Ljava/lang/Boolean;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->closed_guess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_2b
    add-int/2addr v0, v2

    .line 508
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->allow_save_image:Ljava/lang/Boolean;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->allow_save_image:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_2c
    add-int/2addr v0, v2

    .line 509
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->allow_share_image:Ljava/lang/Boolean;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->allow_share_image:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_2d
    add-int/2addr v0, v2

    .line 510
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->need_filter:Ljava/lang/Boolean;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/wandoujia/api/proto/Entity;->need_filter:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_2e
    add-int/2addr v0, v2

    .line 511
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/Entity;->section_auto_grid_rows:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/wandoujia/api/proto/Entity;->section_auto_grid_rows:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    .line 512
    iput v0, p0, Lcom/wandoujia/api/proto/Entity;->hashCode:I

    .line 514
    :cond_2
    return v0

    :cond_3
    move v0, v1

    .line 463
    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 464
    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 465
    goto/16 :goto_2

    :cond_6
    move v0, v1

    .line 466
    goto/16 :goto_3

    :cond_7
    move v0, v1

    .line 467
    goto/16 :goto_4

    :cond_8
    move v0, v1

    .line 468
    goto/16 :goto_5

    :cond_9
    move v0, v2

    .line 469
    goto/16 :goto_6

    :cond_a
    move v0, v2

    .line 470
    goto/16 :goto_7

    :cond_b
    move v0, v1

    .line 471
    goto/16 :goto_8

    :cond_c
    move v0, v1

    .line 472
    goto/16 :goto_9

    :cond_d
    move v0, v1

    .line 473
    goto/16 :goto_a

    :cond_e
    move v0, v1

    .line 474
    goto/16 :goto_b

    :cond_f
    move v0, v1

    .line 475
    goto/16 :goto_c

    :cond_10
    move v0, v1

    .line 476
    goto/16 :goto_d

    :cond_11
    move v0, v1

    .line 477
    goto/16 :goto_e

    :cond_12
    move v0, v1

    .line 478
    goto/16 :goto_f

    :cond_13
    move v0, v1

    .line 479
    goto/16 :goto_10

    :cond_14
    move v0, v2

    .line 480
    goto/16 :goto_11

    :cond_15
    move v0, v1

    .line 481
    goto/16 :goto_12

    :cond_16
    move v0, v1

    .line 482
    goto/16 :goto_13

    :cond_17
    move v0, v1

    .line 483
    goto/16 :goto_14

    :cond_18
    move v0, v1

    .line 484
    goto/16 :goto_15

    :cond_19
    move v0, v1

    .line 485
    goto/16 :goto_16

    :cond_1a
    move v0, v1

    .line 486
    goto/16 :goto_17

    :cond_1b
    move v0, v2

    .line 487
    goto/16 :goto_18

    :cond_1c
    move v0, v2

    .line 488
    goto/16 :goto_19

    :cond_1d
    move v0, v1

    .line 489
    goto/16 :goto_1a

    :cond_1e
    move v0, v1

    .line 490
    goto/16 :goto_1b

    :cond_1f
    move v0, v1

    .line 491
    goto/16 :goto_1c

    :cond_20
    move v0, v1

    .line 492
    goto/16 :goto_1d

    :cond_21
    move v0, v1

    .line 493
    goto/16 :goto_1e

    :cond_22
    move v0, v2

    .line 494
    goto/16 :goto_1f

    :cond_23
    move v0, v2

    .line 495
    goto/16 :goto_20

    :cond_24
    move v0, v1

    .line 496
    goto/16 :goto_21

    :cond_25
    move v0, v1

    .line 497
    goto/16 :goto_22

    :cond_26
    move v0, v1

    .line 498
    goto/16 :goto_23

    :cond_27
    move v0, v1

    .line 499
    goto/16 :goto_24

    :cond_28
    move v0, v2

    .line 500
    goto/16 :goto_25

    :cond_29
    move v0, v1

    .line 501
    goto/16 :goto_26

    :cond_2a
    move v0, v1

    .line 503
    goto/16 :goto_27

    :cond_2b
    move v0, v1

    .line 504
    goto/16 :goto_28

    :cond_2c
    move v0, v1

    .line 505
    goto/16 :goto_29

    :cond_2d
    move v0, v1

    .line 506
    goto/16 :goto_2a

    :cond_2e
    move v0, v1

    .line 507
    goto/16 :goto_2b

    :cond_2f
    move v0, v1

    .line 508
    goto/16 :goto_2c

    :cond_30
    move v0, v1

    .line 509
    goto/16 :goto_2d

    :cond_31
    move v0, v1

    .line 510
    goto/16 :goto_2e
.end method
