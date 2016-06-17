.class public final Lcom/wandoujia/log/toolkit/model/LaunchPackage;
.super Lcom/squareup/wire/Message;
.source "LaunchPackage.java"


# static fields
.field public static final DEFAULT_ACTION:Ljava/lang/String; = ""

.field public static final DEFAULT_ACTIVITY:Ljava/lang/String; = ""

.field public static final DEFAULT_DATA:Ljava/lang/String; = ""

.field public static final DEFAULT_REASON:Ljava/lang/String; = ""


# instance fields
.field public final action:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final activity:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final data:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final reason:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sourcePackage:Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 34
    iget-object v0, p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;->sourcePackage:Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;

    iput-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->sourcePackage:Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;

    .line 35
    iget-object v0, p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;->action:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->action:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;->activity:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->activity:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->data:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;->reason:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->reason:Ljava/lang/String;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/wandoujia/log/toolkit/model/LaunchPackage;-><init>(Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-ne p1, p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 45
    :cond_2
    check-cast p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage;

    .line 46
    iget-object v2, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->sourcePackage:Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;

    iget-object v3, p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->sourcePackage:Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->action:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->action:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->activity:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->activity:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->data:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->reason:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->reason:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 55
    iget v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->hashCode:I

    .line 56
    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->sourcePackage:Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->sourcePackage:Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;

    invoke-virtual {v0}, Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;->hashCode()I

    move-result v0

    .line 58
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->action:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 59
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->activity:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->activity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 60
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->data:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 61
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->reason:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->reason:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 62
    iput v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->hashCode:I

    .line 64
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 57
    goto :goto_0

    :cond_3
    move v0, v1

    .line 58
    goto :goto_1

    :cond_4
    move v0, v1

    .line 59
    goto :goto_2

    :cond_5
    move v0, v1

    .line 60
    goto :goto_3
.end method
