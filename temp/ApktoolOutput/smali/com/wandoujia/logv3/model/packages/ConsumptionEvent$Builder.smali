.class public final Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConsumptionEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public from_page:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

.field public result:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result;

.field public source:Ljava/lang/String;

.field public type:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

.field public view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 99
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->type:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->type:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    .line 101
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->source:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->result:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->result:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result;

    .line 103
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 104
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->from_page:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->from_page:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;-><init>(Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;Ld;)V

    return-object v0
.end method

.method public final from_page(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->from_page:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 144
    return-object p0
.end method

.method public final result(Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result;)Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->result:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result;

    .line 128
    return-object p0
.end method

.method public final source(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->source:Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public final type(Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;)Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->type:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    .line 112
    return-object p0
.end method

.method public final view(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 136
    return-object p0
.end method
