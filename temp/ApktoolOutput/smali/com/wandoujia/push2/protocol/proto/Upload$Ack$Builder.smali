.class public final Lcom/wandoujia/push2/protocol/proto/Upload$Ack$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Upload.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/push2/protocol/proto/Upload$Ack;",
        ">;"
    }
.end annotation


# instance fields
.field public id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/push2/protocol/proto/Upload$Ack;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 113
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Upload$Ack;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Ack$Builder;->id:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/wandoujia/push2/protocol/proto/Upload$Ack$Builder;->build()Lcom/wandoujia/push2/protocol/proto/Upload$Ack;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/push2/protocol/proto/Upload$Ack;
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/wandoujia/push2/protocol/proto/Upload$Ack$Builder;->checkRequiredFields()V

    .line 125
    new-instance v0, Lcom/wandoujia/push2/protocol/proto/Upload$Ack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/push2/protocol/proto/Upload$Ack;-><init>(Lcom/wandoujia/push2/protocol/proto/Upload$Ack$Builder;Ld;)V

    return-object v0
.end method

.method public final id(Ljava/lang/Long;)Lcom/wandoujia/push2/protocol/proto/Upload$Ack$Builder;
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Ack$Builder;->id:Ljava/lang/Long;

    .line 119
    return-object p0
.end method
