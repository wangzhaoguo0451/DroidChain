.class public final Lcom/wandoujia/push2/protocol/proto/Download$Msg$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Download.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/push2/protocol/proto/Download$Msg;",
        ">;"
    }
.end annotation


# instance fields
.field public body:Lcom/squareup/wire/ByteString;

.field public id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/push2/protocol/proto/Download$Msg;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 182
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Msg$Builder;->id:Ljava/lang/Long;

    .line 184
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->body:Lcom/squareup/wire/ByteString;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Msg$Builder;->body:Lcom/squareup/wire/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public final body(Lcom/squareup/wire/ByteString;)Lcom/wandoujia/push2/protocol/proto/Download$Msg$Builder;
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/wandoujia/push2/protocol/proto/Download$Msg$Builder;->body:Lcom/squareup/wire/ByteString;

    .line 197
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/wandoujia/push2/protocol/proto/Download$Msg$Builder;->build()Lcom/wandoujia/push2/protocol/proto/Download$Msg;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/push2/protocol/proto/Download$Msg;
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/wandoujia/push2/protocol/proto/Download$Msg$Builder;->checkRequiredFields()V

    .line 203
    new-instance v0, Lcom/wandoujia/push2/protocol/proto/Download$Msg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/push2/protocol/proto/Download$Msg;-><init>(Lcom/wandoujia/push2/protocol/proto/Download$Msg$Builder;Ld;)V

    return-object v0
.end method

.method public final id(Ljava/lang/Long;)Lcom/wandoujia/push2/protocol/proto/Download$Msg$Builder;
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/wandoujia/push2/protocol/proto/Download$Msg$Builder;->id:Ljava/lang/Long;

    .line 189
    return-object p0
.end method
