.class public final Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;
.super Lcom/squareup/wire/Message;
.source "ReadPercentInfo.java"


# static fields
.field public static final DEFAULT_DATE:Ljava/lang/String; = ""

.field public static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_PACKAGE_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_PERCENT:Ljava/lang/Float; = null

.field public static final DEFAULT_READ:Ljava/lang/Integer; = null

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_TOTAL:Ljava/lang/Integer;


# instance fields
.field public final date:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final package_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final package_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final percent:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final read:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final total:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->DEFAULT_TOTAL:Ljava/lang/Integer;

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->DEFAULT_READ:Ljava/lang/Integer;

    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->DEFAULT_PERCENT:Ljava/lang/Float;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 45
    iget-object v0, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->total:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->total:Ljava/lang/Integer;

    .line 46
    iget-object v0, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->read:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->read:Ljava/lang/Integer;

    .line 47
    iget-object v0, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->date:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->date:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->title:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->package_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->package_name:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->package_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->package_title:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;->percent:Ljava/lang/Float;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->percent:Ljava/lang/Float;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;-><init>(Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    if-ne p1, p0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 58
    :cond_2
    check-cast p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;

    .line 59
    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->total:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->total:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->read:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->read:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->date:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->date:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->title:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->package_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->package_name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->package_title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->package_title:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->percent:Ljava/lang/Float;

    iget-object v3, p1, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->percent:Ljava/lang/Float;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 70
    iget v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->hashCode:I

    .line 71
    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->total:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->total:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 73
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->read:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->read:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 74
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->date:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->date:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 75
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->title:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 76
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->package_name:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->package_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->package_title:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->package_title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 78
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->percent:Ljava/lang/Float;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->percent:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 79
    iput v0, p0, Lcom/wandoujia/launcher/launcher/models/ReadPercentInfo;->hashCode:I

    .line 81
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 72
    goto :goto_0

    :cond_3
    move v0, v1

    .line 73
    goto :goto_1

    :cond_4
    move v0, v1

    .line 74
    goto :goto_2

    :cond_5
    move v0, v1

    .line 75
    goto :goto_3

    :cond_6
    move v0, v1

    .line 76
    goto :goto_4

    :cond_7
    move v0, v1

    .line 77
    goto :goto_5
.end method
