.class public final Lcom/wandoujia/logv3/model/packages/CleanResultPackage;
.super Lcom/squareup/wire/Message;
.source "CleanResultPackage.java"


# static fields
.field public static final DEFAULT_CLEAN_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_CONTENT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_PATH:Ljava/lang/String; = ""

.field public static final DEFAULT_READ_DAY:Ljava/lang/Integer; = null

.field public static final DEFAULT_RECOMMEND:Ljava/lang/Integer; = null

.field public static final DEFAULT_SIZE:Ljava/lang/Long; = null

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Ljava/lang/String; = ""


# instance fields
.field public final clean_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final content_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final path:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final read_day:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final recommend:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final size:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->DEFAULT_SIZE:Ljava/lang/Long;

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->DEFAULT_RECOMMEND:Ljava/lang/Integer;

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->DEFAULT_READ_DAY:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 76
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->clean_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->clean_id:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->type:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->size:Ljava/lang/Long;

    .line 79
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->content_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->content_id:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->title:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->recommend:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->recommend:Ljava/lang/Integer;

    .line 82
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->read_day:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->read_day:Ljava/lang/Integer;

    .line 83
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->path:Ljava/lang/String;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;-><init>(Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    if-ne p1, p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 90
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;

    .line 91
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->clean_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->clean_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->size:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->size:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->content_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->content_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->title:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->recommend:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->recommend:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->read_day:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->read_day:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->path:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 103
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->hashCode:I

    .line 104
    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->clean_id:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->clean_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 106
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->type:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 107
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->size:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 108
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->content_id:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->content_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 109
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->title:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 110
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->recommend:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->recommend:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 111
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->read_day:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->read_day:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 112
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 113
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->hashCode:I

    .line 115
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 105
    goto :goto_0

    :cond_3
    move v0, v1

    .line 106
    goto :goto_1

    :cond_4
    move v0, v1

    .line 107
    goto :goto_2

    :cond_5
    move v0, v1

    .line 108
    goto :goto_3

    :cond_6
    move v0, v1

    .line 109
    goto :goto_4

    :cond_7
    move v0, v1

    .line 110
    goto :goto_5

    :cond_8
    move v0, v1

    .line 111
    goto :goto_6
.end method
