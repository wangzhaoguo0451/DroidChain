.class public final Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ApplicationStartEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public activity:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public reason:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 90
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->action:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->action:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->activity:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->activity:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->data:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->reason:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->reason:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    goto :goto_0
.end method


# virtual methods
.method public final action(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->action:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public final activity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->activity:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;-><init>(Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;Ld;)V

    return-object v0
.end method

.method public final data(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->data:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public final reason(Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;)Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->reason:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    .line 126
    return-object p0
.end method
