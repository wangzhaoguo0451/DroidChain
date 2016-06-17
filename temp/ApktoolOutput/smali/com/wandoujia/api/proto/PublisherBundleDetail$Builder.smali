.class public final Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PublisherBundleDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/PublisherBundleDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public cover:Ljava/lang/String;

.field public createdTime:Ljava/lang/Long;

.field public defaultSelected:Ljava/lang/Boolean;

.field public description:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public rank:Ljava/lang/Integer;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/PublisherBundleDetail;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 100
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->id:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->title:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->description:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail;->cover:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->cover:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail;->rank:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->rank:Ljava/lang/Integer;

    .line 106
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail;->defaultSelected:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->defaultSelected:Ljava/lang/Boolean;

    .line 107
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail;->createdTime:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->createdTime:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->build()Lcom/wandoujia/api/proto/PublisherBundleDetail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/PublisherBundleDetail;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/wandoujia/api/proto/PublisherBundleDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/PublisherBundleDetail;-><init>(Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;Ld;)V

    return-object v0
.end method

.method public final cover(Ljava/lang/String;)Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->cover:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public final createdTime(Ljava/lang/Long;)Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->createdTime:Ljava/lang/Long;

    .line 142
    return-object p0
.end method

.method public final defaultSelected(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->defaultSelected:Ljava/lang/Boolean;

    .line 137
    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->description:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->id:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public final rank(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->rank:Ljava/lang/Integer;

    .line 132
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->title:Ljava/lang/String;

    .line 117
    return-object p0
.end method
