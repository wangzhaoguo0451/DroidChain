.class public final Lcom/wandoujia/logv3/model/packages/ServicePackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ServicePackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ServicePackage;",
        ">;"
    }
.end annotation


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ServicePackage;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 47
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ServicePackage;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ServicePackage$Builder;->name:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/ServicePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ServicePackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/ServicePackage;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ServicePackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/ServicePackage;-><init>(Lcom/wandoujia/logv3/model/packages/ServicePackage$Builder;Ld;)V

    return-object v0
.end method

.method public final name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ServicePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ServicePackage$Builder;->name:Ljava/lang/String;

    .line 53
    return-object p0
.end method
