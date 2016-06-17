.class public final Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;
.super Lcom/squareup/wire/Message;
.source "SubscribeItemPackage.java"


# static fields
.field public static final DEFAULT_ITEM_CREATETIME:Ljava/lang/String; = ""

.field public static final DEFAULT_ITEM_FEEDNAME:Ljava/lang/String; = ""

.field public static final DEFAULT_ITEM_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_ITEM_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_ITEM_UPDATETIME:Ljava/lang/String; = ""


# instance fields
.field public final item_createTime:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final item_feedName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final item_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final item_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final item_updateTime:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 35
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;->item_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_type:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;->item_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_id:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;->item_createTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_createTime:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;->item_updateTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_updateTime:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;->item_feedName:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_feedName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;-><init>(Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    if-ne p1, p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 46
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;

    .line 47
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_createTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_createTime:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_updateTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_updateTime:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_feedName:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_feedName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 56
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->hashCode:I

    .line 57
    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_type:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 59
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_id:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 60
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_createTime:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_createTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 61
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_updateTime:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_updateTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 62
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_feedName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->item_feedName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 63
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/SubscribeItemPackage;->hashCode:I

    .line 65
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 58
    goto :goto_0

    :cond_3
    move v0, v1

    .line 59
    goto :goto_1

    :cond_4
    move v0, v1

    .line 60
    goto :goto_2

    :cond_5
    move v0, v1

    .line 61
    goto :goto_3
.end method
