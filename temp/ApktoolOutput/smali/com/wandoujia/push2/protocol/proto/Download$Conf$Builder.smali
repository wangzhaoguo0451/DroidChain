.class public final Lcom/wandoujia/push2/protocol/proto/Download$Conf$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Download.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/push2/protocol/proto/Download$Conf;",
        ">;"
    }
.end annotation


# instance fields
.field public timeout:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/push2/protocol/proto/Download$Conf;)V
    .locals 1
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 117
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Download$Conf;->timeout:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Conf$Builder;->timeout:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/wandoujia/push2/protocol/proto/Download$Conf$Builder;->build()Lcom/wandoujia/push2/protocol/proto/Download$Conf;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/push2/protocol/proto/Download$Conf;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/wandoujia/push2/protocol/proto/Download$Conf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/push2/protocol/proto/Download$Conf;-><init>(Lcom/wandoujia/push2/protocol/proto/Download$Conf$Builder;Ld;)V

    return-object v0
.end method

.method public final timeout(Ljava/lang/Integer;)Lcom/wandoujia/push2/protocol/proto/Download$Conf$Builder;
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/wandoujia/push2/protocol/proto/Download$Conf$Builder;->timeout:Ljava/lang/Integer;

    .line 123
    return-object p0
.end method
