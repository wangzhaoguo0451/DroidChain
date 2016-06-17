.class public final Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "EventPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/EventPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public active_event:Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;

.field public click_event:Lcom/wandoujia/logv3/model/packages/ClickEvent;

.field public consumption_event:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;

.field public crash_event:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;

.field public show_event:Lcom/wandoujia/logv3/model/packages/ShowEvent;

.field public start_event:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

.field public task_event:Lcom/wandoujia/logv3/model/packages/TaskEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/EventPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 90
    if-nez p1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/EventPackage;->click_event:Lcom/wandoujia/logv3/model/packages/ClickEvent;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->click_event:Lcom/wandoujia/logv3/model/packages/ClickEvent;

    .line 92
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/EventPackage;->show_event:Lcom/wandoujia/logv3/model/packages/ShowEvent;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->show_event:Lcom/wandoujia/logv3/model/packages/ShowEvent;

    .line 93
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/EventPackage;->active_event:Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->active_event:Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;

    .line 94
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/EventPackage;->start_event:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->start_event:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    .line 95
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/EventPackage;->crash_event:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->crash_event:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;

    .line 96
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/EventPackage;->task_event:Lcom/wandoujia/logv3/model/packages/TaskEvent;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->task_event:Lcom/wandoujia/logv3/model/packages/TaskEvent;

    .line 97
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/EventPackage;->consumption_event:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->consumption_event:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;

    goto :goto_0
.end method


# virtual methods
.method public final active_event(Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;)Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->active_event:Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;

    .line 112
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/EventPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/EventPackage;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/wandoujia/logv3/model/packages/EventPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/EventPackage;-><init>(Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final click_event(Lcom/wandoujia/logv3/model/packages/ClickEvent;)Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->click_event:Lcom/wandoujia/logv3/model/packages/ClickEvent;

    .line 102
    return-object p0
.end method

.method public final consumption_event(Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;)Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->consumption_event:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;

    .line 132
    return-object p0
.end method

.method public final crash_event(Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;)Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->crash_event:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;

    .line 122
    return-object p0
.end method

.method public final show_event(Lcom/wandoujia/logv3/model/packages/ShowEvent;)Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->show_event:Lcom/wandoujia/logv3/model/packages/ShowEvent;

    .line 107
    return-object p0
.end method

.method public final start_event(Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;)Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->start_event:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    .line 117
    return-object p0
.end method

.method public final task_event(Lcom/wandoujia/logv3/model/packages/TaskEvent;)Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->task_event:Lcom/wandoujia/logv3/model/packages/TaskEvent;

    .line 127
    return-object p0
.end method
