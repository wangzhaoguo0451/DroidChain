.class public final Lcom/wandoujia/logv3/model/packages/ServerHostPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ServerHostPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ServerHostPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public host_ip:Ljava/lang/String;

.field public host_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ServerHostPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 66
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ServerHostPackage;->host_ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ServerHostPackage$Builder;->host_ip:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ServerHostPackage;->host_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ServerHostPackage$Builder;->host_name:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/ServerHostPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ServerHostPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/ServerHostPackage;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ServerHostPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/ServerHostPackage;-><init>(Lcom/wandoujia/logv3/model/packages/ServerHostPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final host_ip(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ServerHostPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ServerHostPackage$Builder;->host_ip:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public final host_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ServerHostPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ServerHostPackage$Builder;->host_name:Ljava/lang/String;

    .line 84
    return-object p0
.end method
