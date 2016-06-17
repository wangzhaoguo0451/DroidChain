.class public final Lcom/wandoujia/api/proto/TriggerRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TriggerRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/TriggerRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public context:Lcom/wandoujia/api/proto/UserContext;

.field public pb_version:Ljava/lang/Integer;

.field public trigger:Lcom/wandoujia/api/proto/Trigger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/TriggerRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 67
    if-nez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/TriggerRequest;->pb_version:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TriggerRequest$Builder;->pb_version:Ljava/lang/Integer;

    .line 69
    iget-object v0, p1, Lcom/wandoujia/api/proto/TriggerRequest;->context:Lcom/wandoujia/api/proto/UserContext;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TriggerRequest$Builder;->context:Lcom/wandoujia/api/proto/UserContext;

    .line 70
    iget-object v0, p1, Lcom/wandoujia/api/proto/TriggerRequest;->trigger:Lcom/wandoujia/api/proto/Trigger;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TriggerRequest$Builder;->trigger:Lcom/wandoujia/api/proto/Trigger;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/TriggerRequest$Builder;->build()Lcom/wandoujia/api/proto/TriggerRequest;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/TriggerRequest;
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/TriggerRequest$Builder;->checkRequiredFields()V

    .line 94
    new-instance v0, Lcom/wandoujia/api/proto/TriggerRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/TriggerRequest;-><init>(Lcom/wandoujia/api/proto/TriggerRequest$Builder;Ld;)V

    return-object v0
.end method

.method public final context(Lcom/wandoujia/api/proto/UserContext;)Lcom/wandoujia/api/proto/TriggerRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wandoujia/api/proto/TriggerRequest$Builder;->context:Lcom/wandoujia/api/proto/UserContext;

    .line 83
    return-object p0
.end method

.method public final pb_version(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/TriggerRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/wandoujia/api/proto/TriggerRequest$Builder;->pb_version:Ljava/lang/Integer;

    .line 78
    return-object p0
.end method

.method public final trigger(Lcom/wandoujia/api/proto/Trigger;)Lcom/wandoujia/api/proto/TriggerRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/wandoujia/api/proto/TriggerRequest$Builder;->trigger:Lcom/wandoujia/api/proto/Trigger;

    .line 88
    return-object p0
.end method
