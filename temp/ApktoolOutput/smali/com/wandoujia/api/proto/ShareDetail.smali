.class public final Lcom/wandoujia/api/proto/ShareDetail;
.super Lcom/squareup/wire/Message;
.source "ShareDetail.java"


# static fields
.field public static final DEFAULT_DESCRIPTION:Ljava/lang/String; = ""

.field public static final DEFAULT_LINK:Ljava/lang/String; = ""

.field public static final DEFAULT_SHARE_PLATFORM:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform; = null

.field public static final DEFAULT_SHARE_TYPE:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType; = null

.field public static final DEFAULT_TEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_THUMB_IMAGE:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage; = null

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""


# instance fields
.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final link:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final share_platform:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final share_type:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final text:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final thumb_image:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;->ITEM:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    sput-object v0, Lcom/wandoujia/api/proto/ShareDetail;->DEFAULT_SHARE_TYPE:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    .line 15
    sget-object v0, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->WECHAT_MOMENT:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    sput-object v0, Lcom/wandoujia/api/proto/ShareDetail;->DEFAULT_SHARE_PLATFORM:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    .line 19
    sget-object v0, Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;->ICON:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    sput-object v0, Lcom/wandoujia/api/proto/ShareDetail;->DEFAULT_THUMB_IMAGE:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/ShareDetail$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 45
    iget-object v0, p1, Lcom/wandoujia/api/proto/ShareDetail$Builder;->share_type:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->share_type:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    .line 46
    iget-object v0, p1, Lcom/wandoujia/api/proto/ShareDetail$Builder;->share_platform:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->share_platform:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    .line 47
    iget-object v0, p1, Lcom/wandoujia/api/proto/ShareDetail$Builder;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->text:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/wandoujia/api/proto/ShareDetail$Builder;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->title:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/wandoujia/api/proto/ShareDetail$Builder;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->description:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/wandoujia/api/proto/ShareDetail$Builder;->thumb_image:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->thumb_image:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    .line 51
    iget-object v0, p1, Lcom/wandoujia/api/proto/ShareDetail$Builder;->link:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->link:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/ShareDetail$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/ShareDetail;-><init>(Lcom/wandoujia/api/proto/ShareDetail$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    if-ne p1, p0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/ShareDetail;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 58
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/ShareDetail;

    .line 59
    iget-object v2, p0, Lcom/wandoujia/api/proto/ShareDetail;->share_type:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ShareDetail;->share_type:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ShareDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ShareDetail;->share_platform:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ShareDetail;->share_platform:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    .line 60
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ShareDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ShareDetail;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ShareDetail;->text:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ShareDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ShareDetail;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ShareDetail;->title:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ShareDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ShareDetail;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ShareDetail;->description:Ljava/lang/String;

    .line 63
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ShareDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ShareDetail;->thumb_image:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ShareDetail;->thumb_image:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    .line 64
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ShareDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ShareDetail;->link:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ShareDetail;->link:Ljava/lang/String;

    .line 65
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ShareDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 70
    iget v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->hashCode:I

    .line 71
    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->share_type:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->share_type:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;->hashCode()I

    move-result v0

    .line 73
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->share_platform:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->share_platform:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 74
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->text:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 75
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->title:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 76
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->description:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->thumb_image:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->thumb_image:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 78
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/ShareDetail;->link:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/ShareDetail;->link:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 79
    iput v0, p0, Lcom/wandoujia/api/proto/ShareDetail;->hashCode:I

    .line 81
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 72
    goto :goto_0

    :cond_3
    move v0, v1

    .line 73
    goto :goto_1

    :cond_4
    move v0, v1

    .line 74
    goto :goto_2

    :cond_5
    move v0, v1

    .line 75
    goto :goto_3

    :cond_6
    move v0, v1

    .line 76
    goto :goto_4

    :cond_7
    move v0, v1

    .line 77
    goto :goto_5
.end method
