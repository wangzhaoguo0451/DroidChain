.class public final Lcom/wandoujia/logv3/model/packages/StatisticsPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "StatisticsPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/StatisticsPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/StatisticsPackage;)V
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
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/StatisticsPackage;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/StatisticsPackage$Builder;->id:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/StatisticsPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/StatisticsPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/StatisticsPackage;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/wandoujia/logv3/model/packages/StatisticsPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/StatisticsPackage;-><init>(Lcom/wandoujia/logv3/model/packages/StatisticsPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/StatisticsPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/StatisticsPackage$Builder;->id:Ljava/lang/String;

    .line 53
    return-object p0
.end method
