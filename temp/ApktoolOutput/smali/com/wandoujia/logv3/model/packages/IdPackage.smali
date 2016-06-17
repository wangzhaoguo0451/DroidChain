.class public final Lcom/wandoujia/logv3/model/packages/IdPackage;
.super Lcom/squareup/wire/Message;
.source "IdPackage.java"


# static fields
.field public static final DEFAULT_IDENTITY:Ljava/lang/String; = ""

.field public static final DEFAULT_PCID:Ljava/lang/String; = ""

.field public static final DEFAULT_UDID:Ljava/lang/String; = ""


# instance fields
.field public final identity:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pcid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final udid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 40
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;->identity:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IdPackage;->identity:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;->udid:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IdPackage;->udid:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;->pcid:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IdPackage;->pcid:Ljava/lang/String;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/IdPackage;-><init>(Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;)V

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
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/IdPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 49
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/IdPackage;

    .line 50
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IdPackage;->identity:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/IdPackage;->identity:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/IdPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IdPackage;->udid:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/IdPackage;->udid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/IdPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IdPackage;->pcid:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/IdPackage;->pcid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/IdPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 57
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/IdPackage;->hashCode:I

    .line 58
    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/IdPackage;->identity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/IdPackage;->identity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 60
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/IdPackage;->udid:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/IdPackage;->udid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 61
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IdPackage;->pcid:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/IdPackage;->pcid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 62
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/IdPackage;->hashCode:I

    .line 64
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 59
    goto :goto_0

    :cond_3
    move v0, v1

    .line 60
    goto :goto_1
.end method
