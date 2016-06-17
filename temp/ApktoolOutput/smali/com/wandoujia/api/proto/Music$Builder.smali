.class public final Lcom/wandoujia/api/proto/Music$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Music.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/Music;",
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

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/Music;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 72
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/Music;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Music$Builder;->url:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/wandoujia/api/proto/Music;->cover:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/Music;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/Music;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Music$Builder;->cover:Ljava/util/List;

    .line 75
    iget-object v0, p1, Lcom/wandoujia/api/proto/Music;->duration:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Music$Builder;->duration:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/Music$Builder;->build()Lcom/wandoujia/api/proto/Music;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/Music;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/wandoujia/api/proto/Music;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/Music;-><init>(Lcom/wandoujia/api/proto/Music$Builder;Ld;)V

    return-object v0
.end method

.method public final cover(Ljava/util/List;)Lcom/wandoujia/api/proto/Music$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/Music$Builder;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p1}, Lcom/wandoujia/api/proto/Music$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Music$Builder;->cover:Ljava/util/List;

    .line 85
    return-object p0
.end method

.method public final duration(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Music$Builder;
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/wandoujia/api/proto/Music$Builder;->duration:Ljava/lang/Integer;

    .line 93
    return-object p0
.end method

.method public final url(Ljava/lang/String;)Lcom/wandoujia/api/proto/Music$Builder;
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/wandoujia/api/proto/Music$Builder;->url:Ljava/lang/String;

    .line 80
    return-object p0
.end method
