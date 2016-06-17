.class public final Lcom/wandoujia/logv3/model/packages/ContentPackage;
.super Lcom/squareup/wire/Message;
.source "ContentPackage.java"


# static fields
.field public static final DEFAULT_IDENTITY:Ljava/lang/String; = ""

.field public static final DEFAULT_IS_FREE:Ljava/lang/Boolean; = null

.field public static final DEFAULT_PARENT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_PARENT_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_SUB_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;


# instance fields
.field public final identity:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final is_free:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final parent_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final parent_type:Ljava/lang/String;
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

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->APP:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->DEFAULT_TYPE:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->DEFAULT_IS_FREE:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 70
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->identity:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->identity:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->title:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->type:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->type:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 73
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->sub_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->sub_type:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->is_free:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->is_free:Ljava/lang/Boolean;

    .line 75
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->parent_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->parent_id:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->parent_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->parent_type:Ljava/lang/String;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/ContentPackage;-><init>(Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    if-ne p1, p0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 83
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/ContentPackage;

    .line 84
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->identity:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage;->identity:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage;->title:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->type:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage;->type:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->sub_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage;->sub_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->is_free:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage;->is_free:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->parent_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage;->parent_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->parent_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage;->parent_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 95
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->hashCode:I

    .line 96
    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->identity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->identity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 98
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->title:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 99
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->type:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->type:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 100
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->sub_type:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->sub_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 101
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->is_free:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->is_free:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 102
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->parent_id:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->parent_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->parent_type:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->parent_type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 104
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage;->hashCode:I

    .line 106
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 97
    goto :goto_0

    :cond_3
    move v0, v1

    .line 98
    goto :goto_1

    :cond_4
    move v0, v1

    .line 99
    goto :goto_2

    :cond_5
    move v0, v1

    .line 100
    goto :goto_3

    :cond_6
    move v0, v1

    .line 101
    goto :goto_4

    :cond_7
    move v0, v1

    .line 102
    goto :goto_5
.end method
