.class public final Lcom/wandoujia/api/proto/FavorLogRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FavorLogRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/FavorLogRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public log:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/FavorLog;",
            ">;"
        }
    .end annotation
.end field

.field public pb_version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/FavorLogRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 61
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLogRequest;->pb_version:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLogRequest$Builder;->pb_version:Ljava/lang/Integer;

    .line 63
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLogRequest;->log:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/FavorLogRequest;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/FavorLogRequest;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLogRequest$Builder;->log:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/FavorLogRequest$Builder;->build()Lcom/wandoujia/api/proto/FavorLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/FavorLogRequest;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/FavorLogRequest$Builder;->checkRequiredFields()V

    .line 79
    new-instance v0, Lcom/wandoujia/api/proto/FavorLogRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/FavorLogRequest;-><init>(Lcom/wandoujia/api/proto/FavorLogRequest$Builder;Ld;)V

    return-object v0
.end method

.method public final log(Ljava/util/List;)Lcom/wandoujia/api/proto/FavorLogRequest$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/FavorLog;",
            ">;)",
            "Lcom/wandoujia/api/proto/FavorLogRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p1}, Lcom/wandoujia/api/proto/FavorLogRequest$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLogRequest$Builder;->log:Ljava/util/List;

    .line 73
    return-object p0
.end method

.method public final pb_version(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/FavorLogRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/wandoujia/api/proto/FavorLogRequest$Builder;->pb_version:Ljava/lang/Integer;

    .line 68
    return-object p0
.end method
