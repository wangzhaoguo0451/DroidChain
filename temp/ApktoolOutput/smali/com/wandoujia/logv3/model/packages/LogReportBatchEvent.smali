.class public final Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;
.super Lcom/squareup/wire/Message;
.source "LogReportBatchEvent.java"


# static fields
.field public static final DEFAULT_DISCARDED_EVENT:Ljava/lang/Long;

.field public static final DEFAULT_EVENT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/logv3/model/packages/LogReportEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final discarded_event:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final event:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
    .end annotation

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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->DEFAULT_EVENT:Ljava/util/List;

    .line 19
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->DEFAULT_DISCARDED_EVENT:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 29
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;->event:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->event:Ljava/util/List;

    .line 30
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;->discarded_event:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->discarded_event:Ljava/lang/Long;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;-><init>(Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-static {p0}, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    if-ne p1, p0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 37
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;

    .line 38
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->event:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->event:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->discarded_event:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->discarded_event:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->hashCode:I

    .line 45
    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->event:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->event:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 47
    :goto_0
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->discarded_event:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->discarded_event:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    .line 48
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportBatchEvent;->hashCode:I

    .line 50
    :cond_0
    return v0

    .line 46
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
