.class public final Lcom/wandoujia/api/proto/UserContext$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UserContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/UserContext;",
        ">;"
    }
.end annotation


# instance fields
.field public coordinate:Lcom/wandoujia/api/proto/Coordinate;

.field public timestamp:Ljava/lang/Long;

.field public udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/UserContext;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 69
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/UserContext;->udid:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/UserContext$Builder;->udid:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/wandoujia/api/proto/UserContext;->timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/UserContext$Builder;->timestamp:Ljava/lang/Long;

    .line 72
    iget-object v0, p1, Lcom/wandoujia/api/proto/UserContext;->coordinate:Lcom/wandoujia/api/proto/Coordinate;

    iput-object v0, p0, Lcom/wandoujia/api/proto/UserContext$Builder;->coordinate:Lcom/wandoujia/api/proto/Coordinate;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/UserContext$Builder;->build()Lcom/wandoujia/api/proto/UserContext;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/UserContext;
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/UserContext$Builder;->checkRequiredFields()V

    .line 96
    new-instance v0, Lcom/wandoujia/api/proto/UserContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/UserContext;-><init>(Lcom/wandoujia/api/proto/UserContext$Builder;Ld;)V

    return-object v0
.end method

.method public final coordinate(Lcom/wandoujia/api/proto/Coordinate;)Lcom/wandoujia/api/proto/UserContext$Builder;
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/wandoujia/api/proto/UserContext$Builder;->coordinate:Lcom/wandoujia/api/proto/Coordinate;

    .line 90
    return-object p0
.end method

.method public final timestamp(Ljava/lang/Long;)Lcom/wandoujia/api/proto/UserContext$Builder;
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/wandoujia/api/proto/UserContext$Builder;->timestamp:Ljava/lang/Long;

    .line 85
    return-object p0
.end method

.method public final udid(Ljava/lang/String;)Lcom/wandoujia/api/proto/UserContext$Builder;
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/wandoujia/api/proto/UserContext$Builder;->udid:Ljava/lang/String;

    .line 77
    return-object p0
.end method
