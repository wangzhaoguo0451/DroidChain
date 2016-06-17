.class public final Lcom/wandoujia/logv3/model/packages/OpenTypePackage;
.super Lcom/squareup/wire/Message;
.source "OpenTypePackage.java"


# static fields
.field public static final DEFAULT_MODE:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode; = null

.field public static final DEFAULT_OPEN_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;


# instance fields
.field public final mode:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final open_provider_package_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->WDJ:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->DEFAULT_TYPE:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    .line 18
    sget-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;->ONLINE:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->DEFAULT_MODE:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 41
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;->type:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->type:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    .line 42
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;->mode:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->mode:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    .line 43
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;->open_provider_package_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->open_provider_package_name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;-><init>(Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    if-ne p1, p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 50
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    .line 51
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->type:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->type:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->mode:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->mode:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->open_provider_package_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->open_provider_package_name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 58
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->hashCode:I

    .line 59
    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->type:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->type:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->hashCode()I

    move-result v0

    .line 61
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->mode:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->mode:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 62
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->open_provider_package_name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->open_provider_package_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 63
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->hashCode:I

    .line 65
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 60
    goto :goto_0

    :cond_3
    move v0, v1

    .line 61
    goto :goto_1
.end method
