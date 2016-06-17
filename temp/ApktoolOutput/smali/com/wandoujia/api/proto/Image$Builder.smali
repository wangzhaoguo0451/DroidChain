.class public final Lcom/wandoujia/api/proto/Image$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/Image;",
        ">;"
    }
.end annotation


# instance fields
.field public height:Ljava/lang/Integer;

.field public rgbs:Ljava/lang/Integer;

.field public url:Ljava/lang/String;

.field public width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/Image;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 74
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Image$Builder;->url:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/wandoujia/api/proto/Image;->rgbs:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Image$Builder;->rgbs:Ljava/lang/Integer;

    .line 77
    iget-object v0, p1, Lcom/wandoujia/api/proto/Image;->width:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Image$Builder;->width:Ljava/lang/Integer;

    .line 78
    iget-object v0, p1, Lcom/wandoujia/api/proto/Image;->height:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Image$Builder;->height:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/Image$Builder;->build()Lcom/wandoujia/api/proto/Image;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/Image;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/wandoujia/api/proto/Image;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/Image;-><init>(Lcom/wandoujia/api/proto/Image$Builder;Ld;)V

    return-object v0
.end method

.method public final height(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Image$Builder;
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/api/proto/Image$Builder;->height:Ljava/lang/Integer;

    .line 98
    return-object p0
.end method

.method public final rgbs(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Image$Builder;
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/wandoujia/api/proto/Image$Builder;->rgbs:Ljava/lang/Integer;

    .line 88
    return-object p0
.end method

.method public final url(Ljava/lang/String;)Lcom/wandoujia/api/proto/Image$Builder;
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wandoujia/api/proto/Image$Builder;->url:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public final width(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Image$Builder;
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/wandoujia/api/proto/Image$Builder;->width:Ljava/lang/Integer;

    .line 93
    return-object p0
.end method
