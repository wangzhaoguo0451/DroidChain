.class public final Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SubscribeItemPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public item_createTime:Ljava/lang/String;

.field public item_feedName:Ljava/lang/String;

.field public item_id:Ljava/lang/String;

.field public item_type:Ljava/lang/String;

.field public item_updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 81
    if-nez p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;->item_type:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;->item_id:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_createTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;->item_createTime:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_updateTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;->item_updateTime:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_feedName:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;->item_feedName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;-><init>(Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final item_createTime(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;->item_createTime:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public final item_feedName(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;->item_feedName:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public final item_id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;->item_id:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public final item_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;->item_type:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public final item_updateTime(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;->item_updateTime:Ljava/lang/String;

    .line 106
    return-object p0
.end method
