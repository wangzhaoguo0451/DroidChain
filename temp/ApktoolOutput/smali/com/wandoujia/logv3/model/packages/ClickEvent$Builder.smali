.class public final Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ClickEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ClickEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

.field public from_click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

.field public refer_click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ClickEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 71
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClickEvent;->click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;->click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 73
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClickEvent;->refer_click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;->refer_click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 74
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClickEvent;->from_click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;->from_click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/ClickEvent;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/ClickEvent;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClickEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/ClickEvent;-><init>(Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;Ld;)V

    return-object v0
.end method

.method public final click(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;->click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 82
    return-object p0
.end method

.method public final from_click(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;->from_click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 98
    return-object p0
.end method

.method public final refer_click(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;->refer_click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 90
    return-object p0
.end method
