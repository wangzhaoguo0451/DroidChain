.class public final Lcom/wandoujia/push2/protocol/proto/Upload$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Upload.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/push2/protocol/proto/Upload;",
        ">;"
    }
.end annotation


# instance fields
.field public ack:Lcom/wandoujia/push2/protocol/proto/Upload$Ack;

.field public req:Lcom/wandoujia/push2/protocol/proto/Upload$Req;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/push2/protocol/proto/Upload;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 59
    if-nez p1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Upload;->ack:Lcom/wandoujia/push2/protocol/proto/Upload$Ack;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Builder;->ack:Lcom/wandoujia/push2/protocol/proto/Upload$Ack;

    .line 61
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Upload;->req:Lcom/wandoujia/push2/protocol/proto/Upload$Req;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Builder;->req:Lcom/wandoujia/push2/protocol/proto/Upload$Req;

    goto :goto_0
.end method


# virtual methods
.method public final ack(Lcom/wandoujia/push2/protocol/proto/Upload$Ack;)Lcom/wandoujia/push2/protocol/proto/Upload$Builder;
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Builder;->ack:Lcom/wandoujia/push2/protocol/proto/Upload$Ack;

    .line 66
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/wandoujia/push2/protocol/proto/Upload$Builder;->build()Lcom/wandoujia/push2/protocol/proto/Upload;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/push2/protocol/proto/Upload;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/wandoujia/push2/protocol/proto/Upload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/push2/protocol/proto/Upload;-><init>(Lcom/wandoujia/push2/protocol/proto/Upload$Builder;Ld;)V

    return-object v0
.end method

.method public final req(Lcom/wandoujia/push2/protocol/proto/Upload$Req;)Lcom/wandoujia/push2/protocol/proto/Upload$Builder;
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Builder;->req:Lcom/wandoujia/push2/protocol/proto/Upload$Req;

    .line 71
    return-object p0
.end method
