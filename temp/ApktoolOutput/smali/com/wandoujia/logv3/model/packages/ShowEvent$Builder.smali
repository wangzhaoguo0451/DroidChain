.class public final Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ShowEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ShowEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public from_click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

.field public from_page:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

.field public refer_click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

.field public type:Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

.field public view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ShowEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 96
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ShowEvent;->type:Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->type:Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    .line 98
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ShowEvent;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 99
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ShowEvent;->from_page:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->from_page:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 100
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ShowEvent;->refer_click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->refer_click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 101
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ShowEvent;->from_click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->from_click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/ShowEvent;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/ShowEvent;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ShowEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/ShowEvent;-><init>(Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;Ld;)V

    return-object v0
.end method

.method public final from_click(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->from_click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 141
    return-object p0
.end method

.method public final from_page(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->from_page:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 125
    return-object p0
.end method

.method public final refer_click(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->refer_click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 133
    return-object p0
.end method

.method public final type(Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;)Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->type:Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    .line 109
    return-object p0
.end method

.method public final view(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 117
    return-object p0
.end method
