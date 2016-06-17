.class public final Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ApplicationActiveEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public active:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 50
    if-nez p1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;->active:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent$Builder;->active:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final active(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent$Builder;->active:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;-><init>(Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent$Builder;Ld;)V

    return-object v0
.end method
