.class public final Lcom/wandoujia/logv3/model/packages/SystemEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SystemEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/SystemEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public debug:Ljava/lang/String;

.field public extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/SystemEvent;)V
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
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SystemEvent;->debug:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SystemEvent$Builder;->debug:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SystemEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SystemEvent$Builder;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/SystemEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/SystemEvent;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/SystemEvent;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/wandoujia/logv3/model/packages/SystemEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/SystemEvent;-><init>(Lcom/wandoujia/logv3/model/packages/SystemEvent$Builder;Ld;)V

    return-object v0
.end method

.method public final debug(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/SystemEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SystemEvent$Builder;->debug:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public final extra_package(Lcom/wandoujia/logv3/model/packages/ExtraPackage;)Lcom/wandoujia/logv3/model/packages/SystemEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SystemEvent$Builder;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    .line 80
    return-object p0
.end method
