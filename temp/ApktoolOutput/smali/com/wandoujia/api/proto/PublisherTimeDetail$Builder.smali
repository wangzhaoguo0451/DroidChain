.class public final Lcom/wandoujia/api/proto/PublisherTimeDetail$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PublisherTimeDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/PublisherTimeDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public create_time:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/PublisherTimeDetail;)V
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
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherTimeDetail;->create_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherTimeDetail$Builder;->create_time:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/PublisherTimeDetail$Builder;->build()Lcom/wandoujia/api/proto/PublisherTimeDetail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/PublisherTimeDetail;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/wandoujia/api/proto/PublisherTimeDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/PublisherTimeDetail;-><init>(Lcom/wandoujia/api/proto/PublisherTimeDetail$Builder;Ld;)V

    return-object v0
.end method

.method public final create_time(Ljava/lang/Long;)Lcom/wandoujia/api/proto/PublisherTimeDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherTimeDetail$Builder;->create_time:Ljava/lang/Long;

    .line 56
    return-object p0
.end method
