.class public final Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FlingEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/FlingEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

.field public fling_direction:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

.field public view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/FlingEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 70
    if-nez p1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/FlingEvent;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 72
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/FlingEvent;->fling_direction:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;->fling_direction:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    .line 73
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/FlingEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/FlingEvent;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/FlingEvent;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/wandoujia/logv3/model/packages/FlingEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/FlingEvent;-><init>(Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;Ld;)V

    return-object v0
.end method

.method public final extra_package(Lcom/wandoujia/logv3/model/packages/ExtraPackage;)Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    .line 94
    return-object p0
.end method

.method public final fling_direction(Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;)Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;->fling_direction:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    .line 86
    return-object p0
.end method

.method public final view_log_package(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent$Builder;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 81
    return-object p0
.end method
