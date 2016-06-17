.class public final Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;
.super Lcom/squareup/wire/Message;
.source "ApplicationStartEvent.java"


# static fields
.field public static final DEFAULT_ACTION:Ljava/lang/String; = ""

.field public static final DEFAULT_ACTIVITY:Ljava/lang/String; = ""

.field public static final DEFAULT_DATA:Ljava/lang/String; = ""

.field public static final DEFAULT_REASON:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;


# instance fields
.field public final action:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final activity:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final data:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final reason:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->NEW:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->DEFAULT_REASON:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 48
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->action:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->action:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->activity:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->activity:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->data:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;->reason:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->reason:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;-><init>(Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    if-ne p1, p0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 58
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    .line 59
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->action:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->action:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->activity:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->activity:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->data:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->reason:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->reason:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 67
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->hashCode:I

    .line 68
    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->action:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 70
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->activity:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->activity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 71
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->data:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 72
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->reason:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->reason:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 73
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->hashCode:I

    .line 75
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 69
    goto :goto_0

    :cond_3
    move v0, v1

    .line 70
    goto :goto_1

    :cond_4
    move v0, v1

    .line 71
    goto :goto_2
.end method
