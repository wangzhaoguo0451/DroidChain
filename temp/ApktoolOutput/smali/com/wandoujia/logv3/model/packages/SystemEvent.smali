.class public final Lcom/wandoujia/logv3/model/packages/SystemEvent;
.super Lcom/squareup/wire/Message;
.source "SystemEvent.java"


# static fields
.field public static final DEFAULT_DEBUG:Ljava/lang/String; = ""


# instance fields
.field public final debug:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/SystemEvent$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 28
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SystemEvent$Builder;->debug:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SystemEvent;->debug:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SystemEvent$Builder;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SystemEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/SystemEvent$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/SystemEvent;-><init>(Lcom/wandoujia/logv3/model/packages/SystemEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    if-ne p1, p0, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/SystemEvent;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 36
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/SystemEvent;

    .line 37
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SystemEvent;->debug:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SystemEvent;->debug:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SystemEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SystemEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SystemEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SystemEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 43
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/SystemEvent;->hashCode:I

    .line 44
    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SystemEvent;->debug:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SystemEvent;->debug:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 46
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SystemEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/SystemEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 47
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/SystemEvent;->hashCode:I

    .line 49
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 45
    goto :goto_0
.end method
