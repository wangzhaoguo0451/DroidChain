.class public final Lcom/wandoujia/logv3/model/packages/ResourcePackage;
.super Lcom/squareup/wire/Message;
.source "ResourcePackage.java"


# static fields
.field public static final DEFAULT_APP_URI:Ljava/lang/String; = ""

.field public static final DEFAULT_CAN_DOWNLOAD:Ljava/lang/Boolean; = null

.field public static final DEFAULT_IDENTITY:Ljava/lang/String; = ""

.field public static final DEFAULT_PROVIDER_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_SUB_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;


# instance fields
.field public final app_uri:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final can_download:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final identity:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final provider_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sub_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->WDJ_HOSTED:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->DEFAULT_TYPE:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->DEFAULT_CAN_DOWNLOAD:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 63
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->identity:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->identity:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->type:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->type:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    .line 65
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->provider_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->provider_name:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->app_uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->app_uri:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->can_download:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->can_download:Ljava/lang/Boolean;

    .line 68
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->sub_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->sub_type:Ljava/lang/String;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/ResourcePackage;-><init>(Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    if-ne p1, p0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 75
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    .line 76
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->identity:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->identity:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->type:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->type:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->provider_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->provider_name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->app_uri:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->app_uri:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->can_download:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->can_download:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->sub_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->sub_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 86
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->hashCode:I

    .line 87
    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->identity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->identity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 89
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->type:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->type:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->provider_name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->provider_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 91
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->app_uri:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->app_uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 92
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->can_download:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->can_download:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 93
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->sub_type:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->sub_type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 94
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->hashCode:I

    .line 96
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 88
    goto :goto_0

    :cond_3
    move v0, v1

    .line 89
    goto :goto_1

    :cond_4
    move v0, v1

    .line 90
    goto :goto_2

    :cond_5
    move v0, v1

    .line 91
    goto :goto_3

    :cond_6
    move v0, v1

    .line 92
    goto :goto_4
.end method
