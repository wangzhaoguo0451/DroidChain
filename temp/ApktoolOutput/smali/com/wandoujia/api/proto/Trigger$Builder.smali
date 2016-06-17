.class public final Lcom/wandoujia/api/proto/Trigger$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Trigger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/Trigger;",
        ">;"
    }
.end annotation


# instance fields
.field public parameter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/MapFieldEntry;",
            ">;"
        }
    .end annotation
.end field

.field public source:Lcom/wandoujia/api/proto/Trigger$Source;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/Trigger;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 62
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/Trigger;->source:Lcom/wandoujia/api/proto/Trigger$Source;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Trigger$Builder;->source:Lcom/wandoujia/api/proto/Trigger$Source;

    .line 64
    iget-object v0, p1, Lcom/wandoujia/api/proto/Trigger;->parameter:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/Trigger;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/Trigger;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Trigger$Builder;->parameter:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/Trigger$Builder;->build()Lcom/wandoujia/api/proto/Trigger;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/Trigger;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/Trigger$Builder;->checkRequiredFields()V

    .line 80
    new-instance v0, Lcom/wandoujia/api/proto/Trigger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/Trigger;-><init>(Lcom/wandoujia/api/proto/Trigger$Builder;Ld;)V

    return-object v0
.end method

.method public final parameter(Ljava/util/List;)Lcom/wandoujia/api/proto/Trigger$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/MapFieldEntry;",
            ">;)",
            "Lcom/wandoujia/api/proto/Trigger$Builder;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p1}, Lcom/wandoujia/api/proto/Trigger$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Trigger$Builder;->parameter:Ljava/util/List;

    .line 74
    return-object p0
.end method

.method public final source(Lcom/wandoujia/api/proto/Trigger$Source;)Lcom/wandoujia/api/proto/Trigger$Builder;
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/wandoujia/api/proto/Trigger$Builder;->source:Lcom/wandoujia/api/proto/Trigger$Source;

    .line 69
    return-object p0
.end method
