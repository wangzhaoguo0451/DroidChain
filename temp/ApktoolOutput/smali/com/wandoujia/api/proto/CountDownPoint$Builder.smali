.class public final Lcom/wandoujia/api/proto/CountDownPoint$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CountDownPoint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/CountDownPoint;",
        ">;"
    }
.end annotation


# instance fields
.field public end_time:Ljava/lang/Long;

.field public template:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/CountDownPoint;)V
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
    iget-object v0, p1, Lcom/wandoujia/api/proto/CountDownPoint;->template:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CountDownPoint$Builder;->template:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lcom/wandoujia/api/proto/CountDownPoint;->end_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CountDownPoint$Builder;->end_time:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/CountDownPoint$Builder;->build()Lcom/wandoujia/api/proto/CountDownPoint;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/CountDownPoint;
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/CountDownPoint$Builder;->checkRequiredFields()V

    .line 77
    new-instance v0, Lcom/wandoujia/api/proto/CountDownPoint;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/CountDownPoint;-><init>(Lcom/wandoujia/api/proto/CountDownPoint$Builder;Ld;)V

    return-object v0
.end method

.method public final end_time(Ljava/lang/Long;)Lcom/wandoujia/api/proto/CountDownPoint$Builder;
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/wandoujia/api/proto/CountDownPoint$Builder;->end_time:Ljava/lang/Long;

    .line 71
    return-object p0
.end method

.method public final template(Ljava/lang/String;)Lcom/wandoujia/api/proto/CountDownPoint$Builder;
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/wandoujia/api/proto/CountDownPoint$Builder;->template:Ljava/lang/String;

    .line 66
    return-object p0
.end method
