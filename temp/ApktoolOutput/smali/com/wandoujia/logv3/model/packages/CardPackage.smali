.class public final Lcom/wandoujia/logv3/model/packages/CardPackage;
.super Lcom/squareup/wire/Message;
.source "CardPackage.java"


# static fields
.field public static final DEFAULT_IDENTITY:Ljava/lang/String; = ""

.field public static final DEFAULT_NUM:Ljava/lang/Integer; = null

.field public static final DEFAULT_PARENT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_STATUS:Ljava/lang/String; = ""

.field public static final DEFAULT_SUB_STATUS:Ljava/lang/String; = ""

.field public static final DEFAULT_SUB_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_TAG:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Ljava/lang/String; = ""


# instance fields
.field public final identity:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final num:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final parent_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final status:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sub_status:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sub_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final tag:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/CardPackage;->DEFAULT_NUM:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 75
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->identity:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->identity:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->parent_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->parent_id:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->type:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->sub_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->sub_type:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->tag:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->status:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->sub_status:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->sub_status:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->num:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->num:Ljava/lang/Integer;

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/CardPackage;-><init>(Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    if-ne p1, p0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 89
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/CardPackage;

    .line 90
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->identity:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;->identity:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->parent_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;->parent_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->sub_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;->sub_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;->tag:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;->status:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->sub_status:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;->sub_status:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->num:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;->num:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CardPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 102
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->hashCode:I

    .line 103
    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->identity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->identity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 105
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->parent_id:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->parent_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 106
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->type:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 107
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->sub_type:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->sub_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 108
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->tag:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 109
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->status:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->status:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 110
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->sub_status:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->sub_status:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 111
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->num:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->num:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 112
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage;->hashCode:I

    .line 114
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 104
    goto :goto_0

    :cond_3
    move v0, v1

    .line 105
    goto :goto_1

    :cond_4
    move v0, v1

    .line 106
    goto :goto_2

    :cond_5
    move v0, v1

    .line 107
    goto :goto_3

    :cond_6
    move v0, v1

    .line 108
    goto :goto_4

    :cond_7
    move v0, v1

    .line 109
    goto :goto_5

    :cond_8
    move v0, v1

    .line 110
    goto :goto_6
.end method
