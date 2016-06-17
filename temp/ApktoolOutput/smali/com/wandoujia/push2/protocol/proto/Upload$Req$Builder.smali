.class public final Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Upload.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/push2/protocol/proto/Upload$Req;",
        ">;"
    }
.end annotation


# instance fields
.field public lastId:Ljava/lang/Long;

.field public udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/push2/protocol/proto/Upload$Req;)V
    .locals 1
    .parameter

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 176
    if-nez p1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->udid:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;->udid:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->lastId:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;->lastId:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;->build()Lcom/wandoujia/push2/protocol/proto/Upload$Req;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/push2/protocol/proto/Upload$Req;
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;->checkRequiredFields()V

    .line 194
    new-instance v0, Lcom/wandoujia/push2/protocol/proto/Upload$Req;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/push2/protocol/proto/Upload$Req;-><init>(Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;Ld;)V

    return-object v0
.end method

.method public final lastId(Ljava/lang/Long;)Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;->lastId:Ljava/lang/Long;

    .line 188
    return-object p0
.end method

.method public final udid(Ljava/lang/String;)Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;->udid:Ljava/lang/String;

    .line 183
    return-object p0
.end method
