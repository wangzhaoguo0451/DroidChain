.class public final Lcom/wandoujia/logv3/model/packages/ClientPackage;
.super Lcom/squareup/wire/Message;
.source "ClientPackage.java"


# static fields
.field public static final DEFAULT_CREATE_DATE:Ljava/lang/Long; = null

.field public static final DEFAULT_FIRST_SOURCE:Ljava/lang/String; = ""

.field public static final DEFAULT_INTERNAL_VERSION_CODE:Ljava/lang/Integer; = null

.field public static final DEFAULT_LANGUAGE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language; = null

.field public static final DEFAULT_LAST_SOURCE:Ljava/lang/String; = ""

.field public static final DEFAULT_LOCALE:Ljava/lang/String; = ""

.field public static final DEFAULT_PLATFORM:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform; = null

.field public static final DEFAULT_PRODUCT:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product; = null

.field public static final DEFAULT_VERSION_CODE:Ljava/lang/Integer; = null

.field public static final DEFAULT_VERSION_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_WINDOWS_SOURCE:Ljava/lang/String; = ""


# instance fields
.field public final create_date:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final first_source:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final internal_version_code:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final language:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final last_source:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final locale:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final platform:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final product:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final version_code:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final version_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final windows_source:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->WINDOWS:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->DEFAULT_PRODUCT:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 20
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->ANDROID_PHONE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->DEFAULT_PLATFORM:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->DEFAULT_VERSION_CODE:Ljava/lang/Integer;

    .line 27
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;->SIMPLE_CHINESE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->DEFAULT_LANGUAGE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->DEFAULT_INTERNAL_VERSION_CODE:Ljava/lang/Integer;

    .line 29
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->DEFAULT_CREATE_DATE:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 99
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->product:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->product:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 100
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->platform:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->platform:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    .line 101
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->first_source:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->first_source:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->last_source:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->last_source:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->windows_source:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->windows_source:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->version_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->version_name:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->version_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->version_code:Ljava/lang/Integer;

    .line 106
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->locale:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->locale:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->language:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->language:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    .line 108
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->internal_version_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->internal_version_code:Ljava/lang/Integer;

    .line 109
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->create_date:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->create_date:Ljava/lang/Long;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/ClientPackage;-><init>(Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    if-ne p1, p0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 116
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;

    .line 117
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->product:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->product:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->platform:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->platform:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->first_source:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->first_source:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->last_source:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->last_source:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->windows_source:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->windows_source:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->version_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->version_name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->version_code:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->version_code:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->locale:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->locale:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->language:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->language:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->internal_version_code:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->internal_version_code:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->create_date:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->create_date:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 132
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->hashCode:I

    .line 133
    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->product:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->product:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->hashCode()I

    move-result v0

    .line 135
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->platform:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->platform:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 136
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->first_source:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->first_source:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 137
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->last_source:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->last_source:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 138
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->windows_source:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->windows_source:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 139
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->version_name:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->version_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 140
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->version_code:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->version_code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 141
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->locale:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->locale:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->language:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->language:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 143
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->internal_version_code:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->internal_version_code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 144
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->create_date:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->create_date:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 145
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage;->hashCode:I

    .line 147
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 134
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 135
    goto :goto_1

    :cond_4
    move v0, v1

    .line 136
    goto :goto_2

    :cond_5
    move v0, v1

    .line 137
    goto :goto_3

    :cond_6
    move v0, v1

    .line 138
    goto :goto_4

    :cond_7
    move v0, v1

    .line 139
    goto :goto_5

    :cond_8
    move v0, v1

    .line 140
    goto :goto_6

    :cond_9
    move v0, v1

    .line 141
    goto :goto_7

    :cond_a
    move v0, v1

    .line 142
    goto :goto_8

    :cond_b
    move v0, v1

    .line 143
    goto :goto_9
.end method
