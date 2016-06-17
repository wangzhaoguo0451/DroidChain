.class public final Lcom/wandoujia/api/proto/CountDownText$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CountDownText.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/CountDownText;",
        ">;"
    }
.end annotation


# instance fields
.field public point:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/CountDownPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/CountDownText;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 53
    if-nez p1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/CountDownText;->point:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/CountDownText;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/CountDownText;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/CountDownText$Builder;->point:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/CountDownText$Builder;->build()Lcom/wandoujia/api/proto/CountDownText;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/CountDownText;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/wandoujia/api/proto/CountDownText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/CountDownText;-><init>(Lcom/wandoujia/api/proto/CountDownText$Builder;Ld;)V

    return-object v0
.end method

.method public final point(Ljava/util/List;)Lcom/wandoujia/api/proto/CountDownText$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/CountDownPoint;",
            ">;)",
            "Lcom/wandoujia/api/proto/CountDownText$Builder;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p1}, Lcom/wandoujia/api/proto/CountDownText$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/CountDownText$Builder;->point:Ljava/util/List;

    .line 62
    return-object p0
.end method
