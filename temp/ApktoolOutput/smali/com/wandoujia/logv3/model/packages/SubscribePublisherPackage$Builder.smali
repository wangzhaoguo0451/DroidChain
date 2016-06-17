.class public final Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SubscribePublisherPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public publisher_defaultSelected:Ljava/lang/Boolean;

.field public publisher_id:Ljava/lang/String;

.field public publisher_nick:Ljava/lang/String;

.field public publisher_subscribed:Ljava/lang/Boolean;

.field public publisher_subscribedCount:Ljava/lang/String;

.field public publisher_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 90
    if-nez p1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_type:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_id:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_nick:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_subscribedCount:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_subscribedCount:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_subscribed:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_subscribed:Ljava/lang/Boolean;

    .line 96
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->publisher_defaultSelected:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_defaultSelected:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;-><init>(Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final publisher_defaultSelected(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_defaultSelected:Ljava/lang/Boolean;

    .line 126
    return-object p0
.end method

.method public final publisher_id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_id:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public final publisher_nick(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_nick:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public final publisher_subscribed(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_subscribed:Ljava/lang/Boolean;

    .line 121
    return-object p0
.end method

.method public final publisher_subscribedCount(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_subscribedCount:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public final publisher_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage$Builder;->publisher_type:Ljava/lang/String;

    .line 101
    return-object p0
.end method
