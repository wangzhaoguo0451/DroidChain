.class public final Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;
.super Lcom/squareup/wire/Message;
.source "SubscribeSubsetPackage.java"


# static fields
.field public static final DEFAULT_ITEMLISTTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_SUBSET_CREATETIME:Ljava/lang/String; = ""

.field public static final DEFAULT_SUBSET_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_SUBSET_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_SUBSET_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_SUBSET_UPDATETIME:Ljava/lang/String; = ""


# instance fields
.field public final itemlistType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final publisher:Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
    .end annotation
.end field

.field public final subset_createTime:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final subset_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final subset_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final subset_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final subset_updateTime:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 42
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->itemlistType:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->itemlistType:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->subset_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_title:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->subset_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_type:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->subset_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_id:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->subset_createTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_createTime:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->subset_updateTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_updateTime:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;->publisher:Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->publisher:Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;-><init>(Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    if-ne p1, p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 55
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;

    .line 56
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->itemlistType:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->itemlistType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_title:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_createTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_createTime:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_updateTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_updateTime:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->publisher:Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->publisher:Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->hashCode:I

    .line 68
    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->itemlistType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->itemlistType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 70
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_title:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 71
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_type:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 72
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_id:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 73
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_createTime:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_createTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 74
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_updateTime:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->subset_updateTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 75
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->publisher:Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->publisher:Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/SubscribePublisherPackage;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 76
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeSubsetPackage;->hashCode:I

    .line 78
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

    :cond_5
    move v0, v1

    .line 72
    goto :goto_3

    :cond_6
    move v0, v1

    .line 73
    goto :goto_4

    :cond_7
    move v0, v1

    .line 74
    goto :goto_5
.end method
