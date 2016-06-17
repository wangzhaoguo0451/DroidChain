.class public final Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "LogReportBatchEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public discarded_event:Ljava/lang/Long;

.field public event:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/logv3/model/packages/LogReportEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;)V
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
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->event:Ljava/util/List;

    #calls: Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;->event:Ljava/util/List;

    .line 65
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->discarded_event:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;->discarded_event:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;-><init>(Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;Ld;)V

    return-object v0
.end method

.method public final discarded_event(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;->discarded_event:Ljava/lang/Long;

    .line 75
    return-object p0
.end method

.method public final event(Ljava/util/List;)Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/logv3/model/packages/LogReportEvent;",
            ">;)",
            "Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p1}, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;->event:Ljava/util/List;

    .line 70
    return-object p0
.end method
