.class public final Lcom/wandoujia/logv3/model/packages/TriggerPackage;
.super Lcom/squareup/wire/Message;
.source "TriggerPackage.java"


# static fields
.field public static final DEFAULT_SOURCE:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Ljava/lang/String; = ""


# instance fields
.field public final source:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/TriggerPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 32
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TriggerPackage$Builder;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TriggerPackage;->type:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TriggerPackage$Builder;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TriggerPackage;->source:Ljava/lang/String;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/TriggerPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/TriggerPackage;-><init>(Lcom/wandoujia/logv3/model/packages/TriggerPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    if-ne p1, p0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/TriggerPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 40
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/TriggerPackage;

    .line 41
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TriggerPackage;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TriggerPackage;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TriggerPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TriggerPackage;->source:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TriggerPackage;->source:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TriggerPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 47
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/TriggerPackage;->hashCode:I

    .line 48
    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TriggerPackage;->type:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TriggerPackage;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 50
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TriggerPackage;->source:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/TriggerPackage;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 51
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/TriggerPackage;->hashCode:I

    .line 53
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 49
    goto :goto_0
.end method
