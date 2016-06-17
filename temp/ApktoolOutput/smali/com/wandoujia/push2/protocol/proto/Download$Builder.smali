.class public final Lcom/wandoujia/push2/protocol/proto/Download$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Download.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/push2/protocol/proto/Download;",
        ">;"
    }
.end annotation


# instance fields
.field public conf:Lcom/wandoujia/push2/protocol/proto/Download$Conf;

.field public messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/push2/protocol/proto/Download$Msg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/push2/protocol/proto/Download;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 63
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Download;->conf:Lcom/wandoujia/push2/protocol/proto/Download$Conf;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Builder;->conf:Lcom/wandoujia/push2/protocol/proto/Download$Conf;

    .line 65
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Download;->messages:Ljava/util/List;

    #calls: Lcom/wandoujia/push2/protocol/proto/Download;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/push2/protocol/proto/Download;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Builder;->messages:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/push2/protocol/proto/Download$Builder;->build()Lcom/wandoujia/push2/protocol/proto/Download;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/push2/protocol/proto/Download;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/wandoujia/push2/protocol/proto/Download;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/push2/protocol/proto/Download;-><init>(Lcom/wandoujia/push2/protocol/proto/Download$Builder;Ld;)V

    return-object v0
.end method

.method public final conf(Lcom/wandoujia/push2/protocol/proto/Download$Conf;)Lcom/wandoujia/push2/protocol/proto/Download$Builder;
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/wandoujia/push2/protocol/proto/Download$Builder;->conf:Lcom/wandoujia/push2/protocol/proto/Download$Conf;

    .line 70
    return-object p0
.end method

.method public final messages(Ljava/util/List;)Lcom/wandoujia/push2/protocol/proto/Download$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/push2/protocol/proto/Download$Msg;",
            ">;)",
            "Lcom/wandoujia/push2/protocol/proto/Download$Builder;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p1}, Lcom/wandoujia/push2/protocol/proto/Download$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Builder;->messages:Ljava/util/List;

    .line 75
    return-object p0
.end method
