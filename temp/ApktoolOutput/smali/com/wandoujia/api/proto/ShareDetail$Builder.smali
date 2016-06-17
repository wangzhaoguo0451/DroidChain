.class public final Lcom/wandoujia/api/proto/ShareDetail$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ShareDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/ShareDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public share_platform:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

.field public share_type:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

.field public text:Ljava/lang/String;

.field public thumb_image:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/ShareDetail;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 99
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/ShareDetail;->share_type:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail$Builder;->share_type:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    .line 101
    iget-object v0, p1, Lcom/wandoujia/api/proto/ShareDetail;->share_platform:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail$Builder;->share_platform:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    .line 102
    iget-object v0, p1, Lcom/wandoujia/api/proto/ShareDetail;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail$Builder;->text:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/wandoujia/api/proto/ShareDetail;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail$Builder;->title:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/wandoujia/api/proto/ShareDetail;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail$Builder;->description:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/wandoujia/api/proto/ShareDetail;->thumb_image:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail$Builder;->thumb_image:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    .line 106
    iget-object v0, p1, Lcom/wandoujia/api/proto/ShareDetail;->link:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ShareDetail$Builder;->link:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/ShareDetail$Builder;->build()Lcom/wandoujia/api/proto/ShareDetail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/ShareDetail;
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/ShareDetail$Builder;->checkRequiredFields()V

    .line 147
    new-instance v0, Lcom/wandoujia/api/proto/ShareDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/ShareDetail;-><init>(Lcom/wandoujia/api/proto/ShareDetail$Builder;Ld;)V

    return-object v0
.end method

.method public final description(Ljava/lang/String;)Lcom/wandoujia/api/proto/ShareDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/wandoujia/api/proto/ShareDetail$Builder;->description:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public final link(Ljava/lang/String;)Lcom/wandoujia/api/proto/ShareDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/wandoujia/api/proto/ShareDetail$Builder;->link:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public final share_platform(Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;)Lcom/wandoujia/api/proto/ShareDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wandoujia/api/proto/ShareDetail$Builder;->share_platform:Lcom/wandoujia/api/proto/SharePlatformEnum$SharePlatform;

    .line 116
    return-object p0
.end method

.method public final share_type(Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;)Lcom/wandoujia/api/proto/ShareDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/wandoujia/api/proto/ShareDetail$Builder;->share_type:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    .line 111
    return-object p0
.end method

.method public final text(Ljava/lang/String;)Lcom/wandoujia/api/proto/ShareDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/wandoujia/api/proto/ShareDetail$Builder;->text:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public final thumb_image(Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;)Lcom/wandoujia/api/proto/ShareDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/wandoujia/api/proto/ShareDetail$Builder;->thumb_image:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    .line 136
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/wandoujia/api/proto/ShareDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/wandoujia/api/proto/ShareDetail$Builder;->title:Ljava/lang/String;

    .line 126
    return-object p0
.end method
