.class public final Lcom/wandoujia/logv3/model/packages/NetworkPackage;
.super Lcom/squareup/wire/Message;
.source "NetworkPackage.java"


# static fields
.field public static final DEFAULT_ISP:Ljava/lang/String; = ""

.field public static final DEFAULT_REMOTE_IP:Ljava/lang/String; = ""

.field public static final DEFAULT_SSID:Ljava/lang/String; = ""

.field public static final DEFAULT_SUB_TYPE:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final DEFAULT_TYPE:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;


# instance fields
.field public final isp:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final remote_ip:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final ssid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sub_type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;
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
    sget-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;->UNKNOWN_TYPE:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->DEFAULT_TYPE:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;

    .line 18
    sget-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->UNKNOWN:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->DEFAULT_SUB_TYPE:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 55
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;

    .line 56
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->sub_type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 57
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->isp:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->isp:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->remote_ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->remote_ip:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->ssid:Ljava/lang/String;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/NetworkPackage;-><init>(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    if-ne p1, p0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 66
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage;

    .line 67
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->sub_type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->sub_type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->isp:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->isp:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->remote_ip:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->remote_ip:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->ssid:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 76
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->hashCode:I

    .line 77
    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;->hashCode()I

    move-result v0

    .line 79
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->sub_type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->sub_type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 80
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->isp:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->isp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 81
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->remote_ip:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->remote_ip:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 82
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->ssid:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 83
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->hashCode:I

    .line 85
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 78
    goto :goto_0

    :cond_3
    move v0, v1

    .line 79
    goto :goto_1

    :cond_4
    move v0, v1

    .line 80
    goto :goto_2

    :cond_5
    move v0, v1

    .line 81
    goto :goto_3
.end method
