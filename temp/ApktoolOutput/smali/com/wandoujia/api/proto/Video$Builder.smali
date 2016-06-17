.class public final Lcom/wandoujia/api/proto/Video$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/Video;",
        ">;"
    }
.end annotation


# instance fields
.field public cover:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public duration:Ljava/lang/Integer;

.field public height:Ljava/lang/Integer;

.field public url:Ljava/lang/String;

.field public width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/Video;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 88
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/Video;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Video$Builder;->url:Ljava/lang/String;

    .line 90
    iget-object v0, p1, Lcom/wandoujia/api/proto/Video;->cover:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/Video;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/Video;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Video$Builder;->cover:Ljava/util/List;

    .line 91
    iget-object v0, p1, Lcom/wandoujia/api/proto/Video;->duration:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Video$Builder;->duration:Ljava/lang/Integer;

    .line 92
    iget-object v0, p1, Lcom/wandoujia/api/proto/Video;->width:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Video$Builder;->width:Ljava/lang/Integer;

    .line 93
    iget-object v0, p1, Lcom/wandoujia/api/proto/Video;->height:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Video$Builder;->height:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/Video$Builder;->build()Lcom/wandoujia/api/proto/Video;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/Video;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/wandoujia/api/proto/Video;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/Video;-><init>(Lcom/wandoujia/api/proto/Video$Builder;Ld;)V

    return-object v0
.end method

.method public final cover(Ljava/util/List;)Lcom/wandoujia/api/proto/Video$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/Video$Builder;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1}, Lcom/wandoujia/api/proto/Video$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Video$Builder;->cover:Ljava/util/List;

    .line 103
    return-object p0
.end method

.method public final duration(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Video$Builder;
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/wandoujia/api/proto/Video$Builder;->duration:Ljava/lang/Integer;

    .line 111
    return-object p0
.end method

.method public final height(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Video$Builder;
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/wandoujia/api/proto/Video$Builder;->height:Ljava/lang/Integer;

    .line 121
    return-object p0
.end method

.method public final url(Ljava/lang/String;)Lcom/wandoujia/api/proto/Video$Builder;
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/api/proto/Video$Builder;->url:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public final width(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Video$Builder;
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wandoujia/api/proto/Video$Builder;->width:Ljava/lang/Integer;

    .line 116
    return-object p0
.end method
