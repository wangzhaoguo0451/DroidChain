.class public final Lcom/wandoujia/api/proto/SecurityInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SecurityInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/SecurityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public failed_info:Ljava/lang/String;

.field public provider:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/SecurityInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 65
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/SecurityInfo;->failed_info:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SecurityInfo$Builder;->failed_info:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/wandoujia/api/proto/SecurityInfo;->provider:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SecurityInfo$Builder;->provider:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/wandoujia/api/proto/SecurityInfo;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SecurityInfo$Builder;->status:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/SecurityInfo$Builder;->build()Lcom/wandoujia/api/proto/SecurityInfo;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/SecurityInfo;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/wandoujia/api/proto/SecurityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/SecurityInfo;-><init>(Lcom/wandoujia/api/proto/SecurityInfo$Builder;Ld;)V

    return-object v0
.end method

.method public final failed_info(Ljava/lang/String;)Lcom/wandoujia/api/proto/SecurityInfo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/wandoujia/api/proto/SecurityInfo$Builder;->failed_info:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public final provider(Ljava/lang/String;)Lcom/wandoujia/api/proto/SecurityInfo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/wandoujia/api/proto/SecurityInfo$Builder;->provider:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public final status(Ljava/lang/String;)Lcom/wandoujia/api/proto/SecurityInfo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wandoujia/api/proto/SecurityInfo$Builder;->status:Ljava/lang/String;

    .line 83
    return-object p0
.end method
