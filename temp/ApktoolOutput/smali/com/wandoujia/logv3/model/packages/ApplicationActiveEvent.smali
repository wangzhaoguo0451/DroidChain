.class public final Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;
.super Lcom/squareup/wire/Message;
.source "ApplicationActiveEvent.java"


# static fields
.field public static final DEFAULT_ACTIVE:Ljava/lang/String; = ""


# instance fields
.field public final active:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 25
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent$Builder;->active:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;->active:Ljava/lang/String;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;-><init>(Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 30
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    .line 31
    :cond_0
    instance-of v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;->active:Ljava/lang/String;

    check-cast p1, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;

    iget-object v1, p1, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;->active:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;->hashCode:I

    .line 38
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;->active:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;->active:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;->hashCode:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
