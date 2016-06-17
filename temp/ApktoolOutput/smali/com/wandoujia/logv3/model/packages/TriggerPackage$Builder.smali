.class public final Lcom/wandoujia/logv3/model/packages/TriggerPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TriggerPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/TriggerPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public source:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/TriggerPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 66
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TriggerPackage;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TriggerPackage$Builder;->type:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TriggerPackage;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TriggerPackage$Builder;->source:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/TriggerPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/TriggerPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/TriggerPackage;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TriggerPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/TriggerPackage;-><init>(Lcom/wandoujia/logv3/model/packages/TriggerPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final source(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TriggerPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TriggerPackage$Builder;->source:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TriggerPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TriggerPackage$Builder;->type:Ljava/lang/String;

    .line 76
    return-object p0
.end method
