.class public final Lcom/wandoujia/api/proto/FavorLog$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FavorLog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/FavorLog;",
        ">;"
    }
.end annotation


# instance fields
.field public commit_version:Ljava/lang/Long;

.field public favor:Ljava/lang/Boolean;

.field public feed_id:Ljava/lang/Long;

.field public timestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/FavorLog;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 79
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLog;->feed_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLog$Builder;->feed_id:Ljava/lang/Long;

    .line 81
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLog;->favor:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLog$Builder;->favor:Ljava/lang/Boolean;

    .line 82
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLog;->commit_version:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLog$Builder;->commit_version:Ljava/lang/Long;

    .line 83
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLog;->timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLog$Builder;->timestamp:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/FavorLog$Builder;->build()Lcom/wandoujia/api/proto/FavorLog;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/FavorLog;
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/FavorLog$Builder;->checkRequiredFields()V

    .line 112
    new-instance v0, Lcom/wandoujia/api/proto/FavorLog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/FavorLog;-><init>(Lcom/wandoujia/api/proto/FavorLog$Builder;Ld;)V

    return-object v0
.end method

.method public final commit_version(Ljava/lang/Long;)Lcom/wandoujia/api/proto/FavorLog$Builder;
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/wandoujia/api/proto/FavorLog$Builder;->commit_version:Ljava/lang/Long;

    .line 101
    return-object p0
.end method

.method public final favor(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/FavorLog$Builder;
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/wandoujia/api/proto/FavorLog$Builder;->favor:Ljava/lang/Boolean;

    .line 96
    return-object p0
.end method

.method public final feed_id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/FavorLog$Builder;
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/wandoujia/api/proto/FavorLog$Builder;->feed_id:Ljava/lang/Long;

    .line 88
    return-object p0
.end method

.method public final timestamp(Ljava/lang/Long;)Lcom/wandoujia/api/proto/FavorLog$Builder;
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/wandoujia/api/proto/FavorLog$Builder;->timestamp:Ljava/lang/Long;

    .line 106
    return-object p0
.end method
