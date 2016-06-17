.class public final Lcom/wandoujia/api/proto/AppDetail;
.super Lcom/squareup/wire/Message;
.source "AppDetail.java"


# static fields
.field public static final DEFAULT_AD:Ljava/lang/Boolean; = null

.field public static final DEFAULT_AD_TYPE:Ljava/lang/Integer; = null

.field public static final DEFAULT_ALIAS:Ljava/lang/String; = ""

.field public static final DEFAULT_APK:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/ApkDetail;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_APP_PLATFORM:Lcom/wandoujia/api/proto/AppDetail$AppPlatform; = null

.field public static final DEFAULT_APP_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_BANNER:Ljava/lang/String; = ""

.field public static final DEFAULT_CATEGORIES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/AppCategory;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMMENTS_COUNT:Ljava/lang/Integer; = null

.field public static final DEFAULT_CRASH_WITHOUT_GSF:Ljava/lang/Integer; = null

.field public static final DEFAULT_DEPRECATED_TAG:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/AppTag;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DESCRIPTION:Ljava/lang/String; = ""

.field public static final DEFAULT_DETAIL_PARAM:Ljava/lang/String; = ""

.field public static final DEFAULT_DISLIKES_COUNT:Ljava/lang/Integer; = null

.field public static final DEFAULT_EDITOR_COMMENT:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTENSION_PACK:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/ExtensionPack;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ID:Ljava/lang/Integer; = null

.field public static final DEFAULT_IMPR_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_INSTALLED_COUNT_STR:Ljava/lang/String; = ""

.field public static final DEFAULT_IN_APP_PURCHASE:Ljava/lang/Integer; = null

.field public static final DEFAULT_IS_ONLINE_GAME:Ljava/lang/Boolean; = null

.field public static final DEFAULT_LANGUAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_LIKES_COUNT:Ljava/lang/Integer; = null

.field public static final DEFAULT_LIKES_RATE:Ljava/lang/Integer; = null

.field public static final DEFAULT_NEED_NETWORK:Ljava/lang/Boolean; = null

.field public static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = ""

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

.field public static final DEFAULT_TAGLINE:Ljava/lang/String; = ""

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_TITLE_EN:Ljava/lang/String; = ""

.field public static final DEFAULT_UPDATED_DATE:Ljava/lang/Long; = null

.field public static final DEFAULT_USER_NOTICE:Ljava/lang/String; = ""


# instance fields
.field public final ad:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final ad_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final alias:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x26
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final apk:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/ApkDetail;",
            ">;"
        }
    .end annotation
.end field

.field public final app_platform:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x27
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final app_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x14
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final award:Lcom/wandoujia/api/proto/AppAward;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
    .end annotation
.end field

.field public final banner:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final categories:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x24
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/AppCategory;",
            ">;"
        }
    .end annotation
.end field

.field public final comments_count:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final cover_image:Lcom/wandoujia/api/proto/Image;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x20
    .end annotation
.end field

.field public final crash_without_gsf:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1c
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final deprecated_tag:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/AppTag;",
            ">;"
        }
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final detail_param:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final developer:Lcom/wandoujia/api/proto/Developer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x15
    .end annotation
.end field

.field public final dislikes_count:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final editor_comment:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final extension_pack:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/ExtensionPack;",
            ">;"
        }
    .end annotation
.end field

.field public final icons:Lcom/wandoujia/api/proto/IconSet;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x16
    .end annotation
.end field

.field public final id:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final impr_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final in_app_purchase:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1d
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final installed_count_str:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final is_online_game:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1a
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final language:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1e
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final likes_count:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final likes_rate:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final need_network:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1b
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final package_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final review:Lcom/wandoujia/api/proto/ReviewBean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x22
    .end annotation
.end field

.field public final screenshots:Lcom/wandoujia/api/proto/ScreenShotSet;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x18
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

.field public final tagline:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final title_en:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x25
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final trailer:Lcom/wandoujia/api/proto/TrailerBean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x21
    .end annotation
.end field

.field public final updated_date:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final user_notice:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1f
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_AD:Ljava/lang/Boolean;

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_AD_TYPE:Ljava/lang/Integer;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_APK:Ljava/util/List;

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_COMMENTS_COUNT:Ljava/lang/Integer;

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_LIKES_COUNT:Ljava/lang/Integer;

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_DISLIKES_COUNT:Ljava/lang/Integer;

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_ID:Ljava/lang/Integer;

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_LIKES_RATE:Ljava/lang/Integer;

    .line 36
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_UPDATED_DATE:Ljava/lang/Long;

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_EXTENSION_PACK:Ljava/util/List;

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_DEPRECATED_TAG:Ljava/util/List;

    .line 41
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_IS_ONLINE_GAME:Ljava/lang/Boolean;

    .line 42
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_NEED_NETWORK:Ljava/lang/Boolean;

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_CRASH_WITHOUT_GSF:Ljava/lang/Integer;

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_IN_APP_PURCHASE:Ljava/lang/Integer;

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_TAG:Ljava/util/List;

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_CATEGORIES:Ljava/util/List;

    .line 51
    sget-object v0, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;->ANDROID:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    sput-object v0, Lcom/wandoujia/api/proto/AppDetail;->DEFAULT_APP_PLATFORM:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/AppDetail$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 211
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->ad:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->ad:Ljava/lang/Boolean;

    .line 212
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->ad_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->ad_type:Ljava/lang/Integer;

    .line 213
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->detail_param:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->detail_param:Ljava/lang/String;

    .line 214
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/AppDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    .line 215
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->award:Lcom/wandoujia/api/proto/AppAward;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->award:Lcom/wandoujia/api/proto/AppAward;

    .line 216
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->description:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->title:Ljava/lang/String;

    .line 218
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->comments_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->comments_count:Ljava/lang/Integer;

    .line 219
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->likes_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->likes_count:Ljava/lang/Integer;

    .line 220
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->dislikes_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->dislikes_count:Ljava/lang/Integer;

    .line 221
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->editor_comment:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->editor_comment:Ljava/lang/String;

    .line 222
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->tagline:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->tagline:Ljava/lang/String;

    .line 223
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->installed_count_str:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->installed_count_str:Ljava/lang/String;

    .line 224
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->package_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    .line 225
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->id:Ljava/lang/Integer;

    .line 226
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->likes_rate:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->likes_rate:Ljava/lang/Integer;

    .line 227
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->banner:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->banner:Ljava/lang/String;

    .line 228
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->updated_date:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->updated_date:Ljava/lang/Long;

    .line 229
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->impr_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->impr_url:Ljava/lang/String;

    .line 230
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->app_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->app_type:Ljava/lang/String;

    .line 231
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->developer:Lcom/wandoujia/api/proto/Developer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->developer:Lcom/wandoujia/api/proto/Developer;

    .line 232
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->icons:Lcom/wandoujia/api/proto/IconSet;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->icons:Lcom/wandoujia/api/proto/IconSet;

    .line 233
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->extension_pack:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/AppDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->extension_pack:Ljava/util/List;

    .line 234
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->screenshots:Lcom/wandoujia/api/proto/ScreenShotSet;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->screenshots:Lcom/wandoujia/api/proto/ScreenShotSet;

    .line 235
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->deprecated_tag:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/AppDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->deprecated_tag:Ljava/util/List;

    .line 236
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->is_online_game:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->is_online_game:Ljava/lang/Boolean;

    .line 237
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->need_network:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->need_network:Ljava/lang/Boolean;

    .line 238
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->crash_without_gsf:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->crash_without_gsf:Ljava/lang/Integer;

    .line 239
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->in_app_purchase:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->in_app_purchase:Ljava/lang/Integer;

    .line 240
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->language:Ljava/lang/String;

    .line 241
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->user_notice:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->user_notice:Ljava/lang/String;

    .line 242
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->cover_image:Lcom/wandoujia/api/proto/Image;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->cover_image:Lcom/wandoujia/api/proto/Image;

    .line 243
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->trailer:Lcom/wandoujia/api/proto/TrailerBean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->trailer:Lcom/wandoujia/api/proto/TrailerBean;

    .line 244
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->review:Lcom/wandoujia/api/proto/ReviewBean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->review:Lcom/wandoujia/api/proto/ReviewBean;

    .line 245
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->tag:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/AppDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->tag:Ljava/util/List;

    .line 246
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->categories:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/AppDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->categories:Ljava/util/List;

    .line 247
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->title_en:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->title_en:Ljava/lang/String;

    .line 248
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->alias:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->alias:Ljava/lang/String;

    .line 249
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail$Builder;->app_platform:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->app_platform:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    .line 250
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/AppDetail$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/AppDetail;-><init>(Lcom/wandoujia/api/proto/AppDetail$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/wandoujia/api/proto/AppDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/wandoujia/api/proto/AppDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/wandoujia/api/proto/AppDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/wandoujia/api/proto/AppDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/wandoujia/api/proto/AppDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 254
    if-ne p1, p0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 255
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/AppDetail;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 256
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/AppDetail;

    .line 257
    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->ad:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->ad:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->ad_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->ad_type:Ljava/lang/Integer;

    .line 258
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->detail_param:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->detail_param:Ljava/lang/String;

    .line 259
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    .line 260
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->award:Lcom/wandoujia/api/proto/AppAward;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->award:Lcom/wandoujia/api/proto/AppAward;

    .line 261
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->description:Ljava/lang/String;

    .line 262
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->title:Ljava/lang/String;

    .line 263
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->comments_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->comments_count:Ljava/lang/Integer;

    .line 264
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->likes_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->likes_count:Ljava/lang/Integer;

    .line 265
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->dislikes_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->dislikes_count:Ljava/lang/Integer;

    .line 266
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->editor_comment:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->editor_comment:Ljava/lang/String;

    .line 267
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->tagline:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->tagline:Ljava/lang/String;

    .line 268
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->installed_count_str:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->installed_count_str:Ljava/lang/String;

    .line 269
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    .line 270
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->id:Ljava/lang/Integer;

    .line 271
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->likes_rate:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->likes_rate:Ljava/lang/Integer;

    .line 272
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->banner:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->banner:Ljava/lang/String;

    .line 273
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->updated_date:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->updated_date:Ljava/lang/Long;

    .line 274
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->impr_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->impr_url:Ljava/lang/String;

    .line 275
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->app_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->app_type:Ljava/lang/String;

    .line 276
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->developer:Lcom/wandoujia/api/proto/Developer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->developer:Lcom/wandoujia/api/proto/Developer;

    .line 277
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->icons:Lcom/wandoujia/api/proto/IconSet;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->icons:Lcom/wandoujia/api/proto/IconSet;

    .line 278
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->extension_pack:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->extension_pack:Ljava/util/List;

    .line 279
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->screenshots:Lcom/wandoujia/api/proto/ScreenShotSet;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->screenshots:Lcom/wandoujia/api/proto/ScreenShotSet;

    .line 280
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->deprecated_tag:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->deprecated_tag:Ljava/util/List;

    .line 281
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->is_online_game:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->is_online_game:Ljava/lang/Boolean;

    .line 282
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->need_network:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->need_network:Ljava/lang/Boolean;

    .line 283
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->crash_without_gsf:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->crash_without_gsf:Ljava/lang/Integer;

    .line 284
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->in_app_purchase:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->in_app_purchase:Ljava/lang/Integer;

    .line 285
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->language:Ljava/lang/String;

    .line 286
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->user_notice:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->user_notice:Ljava/lang/String;

    .line 287
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->cover_image:Lcom/wandoujia/api/proto/Image;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->cover_image:Lcom/wandoujia/api/proto/Image;

    .line 288
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->trailer:Lcom/wandoujia/api/proto/TrailerBean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->trailer:Lcom/wandoujia/api/proto/TrailerBean;

    .line 289
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->review:Lcom/wandoujia/api/proto/ReviewBean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->review:Lcom/wandoujia/api/proto/ReviewBean;

    .line 290
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->tag:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->tag:Ljava/util/List;

    .line 291
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->categories:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->categories:Ljava/util/List;

    .line 292
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->title_en:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->title_en:Ljava/lang/String;

    .line 293
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->alias:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->alias:Ljava/lang/String;

    .line 294
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->app_platform:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppDetail;->app_platform:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    .line 295
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 300
    iget v0, p0, Lcom/wandoujia/api/proto/AppDetail;->hashCode:I

    .line 301
    if-nez v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->ad:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->ad:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    .line 303
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->ad_type:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->ad_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    .line 304
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->detail_param:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->detail_param:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    .line 305
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    .line 306
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->award:Lcom/wandoujia/api/proto/AppAward;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->award:Lcom/wandoujia/api/proto/AppAward;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/AppAward;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    .line 307
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->description:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    .line 308
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->title:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    .line 309
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->comments_count:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->comments_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    .line 310
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->likes_count:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->likes_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v3

    .line 311
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->dislikes_count:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->dislikes_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v3

    .line 312
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->editor_comment:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->editor_comment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v3

    .line 313
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->tagline:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->tagline:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v3

    .line 314
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->installed_count_str:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->installed_count_str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v3

    .line 315
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v3

    .line 316
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->id:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v3

    .line 317
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->likes_rate:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->likes_rate:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v3

    .line 318
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->banner:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->banner:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v3

    .line 319
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->updated_date:Ljava/lang/Long;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->updated_date:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v3

    .line 320
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->impr_url:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->impr_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v3

    .line 321
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->app_type:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->app_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v3

    .line 322
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->developer:Lcom/wandoujia/api/proto/Developer;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->developer:Lcom/wandoujia/api/proto/Developer;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Developer;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v3

    .line 323
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->icons:Lcom/wandoujia/api/proto/IconSet;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->icons:Lcom/wandoujia/api/proto/IconSet;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/IconSet;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v3

    .line 324
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->extension_pack:Ljava/util/List;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->extension_pack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v0, v3

    .line 325
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->screenshots:Lcom/wandoujia/api/proto/ScreenShotSet;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->screenshots:Lcom/wandoujia/api/proto/ScreenShotSet;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/ScreenShotSet;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v3

    .line 326
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->deprecated_tag:Ljava/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->deprecated_tag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_18
    add-int/2addr v0, v3

    .line 327
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->is_online_game:Ljava/lang/Boolean;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->is_online_game:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v3

    .line 328
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->need_network:Ljava/lang/Boolean;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->need_network:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_1a
    add-int/2addr v0, v3

    .line 329
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->crash_without_gsf:Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->crash_without_gsf:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1b
    add-int/2addr v0, v3

    .line 330
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->in_app_purchase:Ljava/lang/Integer;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->in_app_purchase:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1c
    add-int/2addr v0, v3

    .line 331
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->language:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1d
    add-int/2addr v0, v3

    .line 332
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->user_notice:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->user_notice:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1e
    add-int/2addr v0, v3

    .line 333
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->cover_image:Lcom/wandoujia/api/proto/Image;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->cover_image:Lcom/wandoujia/api/proto/Image;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Image;->hashCode()I

    move-result v0

    :goto_1f
    add-int/2addr v0, v3

    .line 334
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->trailer:Lcom/wandoujia/api/proto/TrailerBean;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->trailer:Lcom/wandoujia/api/proto/TrailerBean;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/TrailerBean;->hashCode()I

    move-result v0

    :goto_20
    add-int/2addr v0, v3

    .line 335
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->review:Lcom/wandoujia/api/proto/ReviewBean;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->review:Lcom/wandoujia/api/proto/ReviewBean;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/ReviewBean;->hashCode()I

    move-result v0

    :goto_21
    add-int/2addr v0, v3

    .line 336
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->tag:Ljava/util/List;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->tag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_22
    add-int/2addr v0, v3

    .line 337
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/wandoujia/api/proto/AppDetail;->categories:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->categories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    .line 338
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->title_en:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->title_en:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_23
    add-int/2addr v0, v2

    .line 339
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->alias:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_24
    add-int/2addr v0, v2

    .line 340
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppDetail;->app_platform:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/wandoujia/api/proto/AppDetail;->app_platform:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    .line 341
    iput v0, p0, Lcom/wandoujia/api/proto/AppDetail;->hashCode:I

    .line 343
    :cond_2
    return v0

    :cond_3
    move v0, v1

    .line 302
    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 303
    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 304
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 305
    goto/16 :goto_3

    :cond_7
    move v0, v1

    .line 306
    goto/16 :goto_4

    :cond_8
    move v0, v1

    .line 307
    goto/16 :goto_5

    :cond_9
    move v0, v1

    .line 308
    goto/16 :goto_6

    :cond_a
    move v0, v1

    .line 309
    goto/16 :goto_7

    :cond_b
    move v0, v1

    .line 310
    goto/16 :goto_8

    :cond_c
    move v0, v1

    .line 311
    goto/16 :goto_9

    :cond_d
    move v0, v1

    .line 312
    goto/16 :goto_a

    :cond_e
    move v0, v1

    .line 313
    goto/16 :goto_b

    :cond_f
    move v0, v1

    .line 314
    goto/16 :goto_c

    :cond_10
    move v0, v1

    .line 315
    goto/16 :goto_d

    :cond_11
    move v0, v1

    .line 316
    goto/16 :goto_e

    :cond_12
    move v0, v1

    .line 317
    goto/16 :goto_f

    :cond_13
    move v0, v1

    .line 318
    goto/16 :goto_10

    :cond_14
    move v0, v1

    .line 319
    goto/16 :goto_11

    :cond_15
    move v0, v1

    .line 320
    goto/16 :goto_12

    :cond_16
    move v0, v1

    .line 321
    goto/16 :goto_13

    :cond_17
    move v0, v1

    .line 322
    goto/16 :goto_14

    :cond_18
    move v0, v1

    .line 323
    goto/16 :goto_15

    :cond_19
    move v0, v2

    .line 324
    goto/16 :goto_16

    :cond_1a
    move v0, v1

    .line 325
    goto/16 :goto_17

    :cond_1b
    move v0, v2

    .line 326
    goto/16 :goto_18

    :cond_1c
    move v0, v1

    .line 327
    goto/16 :goto_19

    :cond_1d
    move v0, v1

    .line 328
    goto/16 :goto_1a

    :cond_1e
    move v0, v1

    .line 329
    goto/16 :goto_1b

    :cond_1f
    move v0, v1

    .line 330
    goto/16 :goto_1c

    :cond_20
    move v0, v1

    .line 331
    goto/16 :goto_1d

    :cond_21
    move v0, v1

    .line 332
    goto/16 :goto_1e

    :cond_22
    move v0, v1

    .line 333
    goto/16 :goto_1f

    :cond_23
    move v0, v1

    .line 334
    goto/16 :goto_20

    :cond_24
    move v0, v1

    .line 335
    goto/16 :goto_21

    :cond_25
    move v0, v2

    .line 336
    goto/16 :goto_22

    :cond_26
    move v0, v1

    .line 338
    goto/16 :goto_23

    :cond_27
    move v0, v1

    .line 339
    goto :goto_24
.end method
