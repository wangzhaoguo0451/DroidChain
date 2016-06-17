.class public final Lcom/wandoujia/logv3/model/packages/EventPackage;
.super Lcom/squareup/wire/Message;
.source "EventPackage.java"


# instance fields
.field public final active_event:Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
    .end annotation
.end field

.field public final click_event:Lcom/wandoujia/logv3/model/packages/ClickEvent;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
    .end annotation
.end field

.field public final consumption_event:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
    .end annotation
.end field

.field public final crash_event:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
    .end annotation
.end field

.field public final show_event:Lcom/wandoujia/logv3/model/packages/ShowEvent;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field

.field public final start_event:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field

.field public final task_event:Lcom/wandoujia/logv3/model/packages/TaskEvent;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 36
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->click_event:Lcom/wandoujia/logv3/model/packages/ClickEvent;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->click_event:Lcom/wandoujia/logv3/model/packages/ClickEvent;

    .line 37
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->show_event:Lcom/wandoujia/logv3/model/packages/ShowEvent;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->show_event:Lcom/wandoujia/logv3/model/packages/ShowEvent;

    .line 38
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->active_event:Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->active_event:Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;

    .line 39
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->start_event:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->start_event:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    .line 40
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->crash_event:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->crash_event:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;

    .line 41
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->task_event:Lcom/wandoujia/logv3/model/packages/TaskEvent;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->task_event:Lcom/wandoujia/logv3/model/packages/TaskEvent;

    .line 42
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->consumption_event:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->consumption_event:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/EventPackage;-><init>(Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    if-ne p1, p0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/EventPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 49
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/EventPackage;

    .line 50
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->click_event:Lcom/wandoujia/logv3/model/packages/ClickEvent;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/EventPackage;->click_event:Lcom/wandoujia/logv3/model/packages/ClickEvent;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/EventPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->show_event:Lcom/wandoujia/logv3/model/packages/ShowEvent;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/EventPackage;->show_event:Lcom/wandoujia/logv3/model/packages/ShowEvent;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/EventPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->active_event:Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/EventPackage;->active_event:Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/EventPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->start_event:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/EventPackage;->start_event:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/EventPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->crash_event:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/EventPackage;->crash_event:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/EventPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->task_event:Lcom/wandoujia/logv3/model/packages/TaskEvent;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/EventPackage;->task_event:Lcom/wandoujia/logv3/model/packages/TaskEvent;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/EventPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->consumption_event:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/EventPackage;->consumption_event:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/EventPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 61
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->hashCode:I

    .line 62
    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->click_event:Lcom/wandoujia/logv3/model/packages/ClickEvent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->click_event:Lcom/wandoujia/logv3/model/packages/ClickEvent;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ClickEvent;->hashCode()I

    move-result v0

    .line 64
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->show_event:Lcom/wandoujia/logv3/model/packages/ShowEvent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->show_event:Lcom/wandoujia/logv3/model/packages/ShowEvent;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ShowEvent;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 65
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->active_event:Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->active_event:Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 66
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->start_event:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->start_event:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 67
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->crash_event:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->crash_event:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 68
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->task_event:Lcom/wandoujia/logv3/model/packages/TaskEvent;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->task_event:Lcom/wandoujia/logv3/model/packages/TaskEvent;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 69
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->consumption_event:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->consumption_event:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 70
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/EventPackage;->hashCode:I

    .line 72
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 63
    goto :goto_0

    :cond_3
    move v0, v1

    .line 64
    goto :goto_1

    :cond_4
    move v0, v1

    .line 65
    goto :goto_2

    :cond_5
    move v0, v1

    .line 66
    goto :goto_3

    :cond_6
    move v0, v1

    .line 67
    goto :goto_4

    :cond_7
    move v0, v1

    .line 68
    goto :goto_5
.end method
