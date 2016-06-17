.class public final Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TimePackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/TimePackage;",
        ">;"
    }
.end annotation


# instance fields
.field public local_elapsed_time:Ljava/lang/Long;

.field public local_timestamp:Ljava/lang/Long;

.field public local_timezone:Ljava/lang/Integer;

.field public server_timestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/TimePackage;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 89
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_elapsed_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->local_elapsed_time:Ljava/lang/Long;

    .line 91
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->local_timestamp:Ljava/lang/Long;

    .line 92
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TimePackage;->server_timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->server_timestamp:Ljava/lang/Long;

    .line 93
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_timezone:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->local_timezone:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/TimePackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/TimePackage;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TimePackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/TimePackage;-><init>(Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;Ld;)V

    return-object v0
.end method

.method public final local_elapsed_time(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->local_elapsed_time:Ljava/lang/Long;

    .line 101
    return-object p0
.end method

.method public final local_timestamp(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->local_timestamp:Ljava/lang/Long;

    .line 109
    return-object p0
.end method

.method public final local_timezone(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->local_timezone:Ljava/lang/Integer;

    .line 125
    return-object p0
.end method

.method public final server_timestamp(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->server_timestamp:Ljava/lang/Long;

    .line 117
    return-object p0
.end method
