.class public final Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SubscribeSubsetPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public itemlistType:Ljava/lang/String;

.field public publisher:Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;

.field public subset_createTime:Ljava/lang/String;

.field public subset_id:Ljava/lang/String;

.field public subset_title:Ljava/lang/String;

.field public subset_type:Ljava/lang/String;

.field public subset_updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 96
    if-nez p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->itemlistType:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->itemlistType:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->subset_title:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->subset_type:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->subset_id:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_createTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->subset_createTime:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_updateTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->subset_updateTime:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->publisher:Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->publisher:Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;-><init>(Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final itemlistType(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->itemlistType:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public final publisher(Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;)Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->publisher:Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;

    .line 138
    return-object p0
.end method

.method public final subset_createTime(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->subset_createTime:Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method public final subset_id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->subset_id:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public final subset_title(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->subset_title:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public final subset_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->subset_type:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public final subset_updateTime(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->subset_updateTime:Ljava/lang/String;

    .line 133
    return-object p0
.end method
