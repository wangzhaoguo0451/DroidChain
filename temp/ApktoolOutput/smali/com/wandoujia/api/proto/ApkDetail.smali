.class public final Lcom/wandoujia/api/proto/ApkDetail;
.super Lcom/squareup/wire/Message;
.source "ApkDetail.java"


# static fields
.field public static final DEFAULT_ADS_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_BETA:Ljava/lang/Boolean; = null

.field public static final DEFAULT_BYTES_:Ljava/lang/Integer; = null

.field public static final DEFAULT_COMPATIBLE:Ljava/lang/Integer; = null

.field public static final DEFAULT_CREATION:Ljava/lang/Long; = null

.field public static final DEFAULT_DANGEROUS_PERMISSION:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INCOMPATIBLE_DETAIL:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MD5:Ljava/lang/String; = ""

.field public static final DEFAULT_PAID_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_PERMISSION:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PERMISSION_GROUP:Ljava/lang/String; = ""

.field public static final DEFAULT_PERMISSION_LEVEL:Ljava/lang/String; = ""

.field public static final DEFAULT_RESOLUTION:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SECURITY_DETAIL:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/SecurityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SECURITY_STATUS:Ljava/lang/String; = ""

.field public static final DEFAULT_SIZE:Ljava/lang/String; = ""

.field public static final DEFAULT_SUPERIOR:Ljava/lang/Integer; = null

.field public static final DEFAULT_VERIFIED:Ljava/lang/Integer; = null

.field public static final DEFAULT_VERSION_CODE:Ljava/lang/Integer; = null

.field public static final DEFAULT_VERSION_NAME:Ljava/lang/String; = ""


# instance fields
.field public final ads_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final beta:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final bytes_:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final compatible:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final creation:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x14
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final dangerous_permission:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final download_url:Lcom/wandoujia/api/proto/DownloadUrl;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field

.field public final incompatible_detail:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final md5:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final paid_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final permission:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final permission_group:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x15
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final permission_level:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final resolution:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final security_detail:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0xa
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/SecurityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final security_status:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final size:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final superior:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final verified:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final version_code:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final version_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ApkDetail;->DEFAULT_BETA:Ljava/lang/Boolean;

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ApkDetail;->DEFAULT_BYTES_:Ljava/lang/Integer;

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ApkDetail;->DEFAULT_VERSION_CODE:Ljava/lang/Integer;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ApkDetail;->DEFAULT_SECURITY_DETAIL:Ljava/util/List;

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ApkDetail;->DEFAULT_RESOLUTION:Ljava/util/List;

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ApkDetail;->DEFAULT_DANGEROUS_PERMISSION:Ljava/util/List;

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ApkDetail;->DEFAULT_PERMISSION:Ljava/util/List;

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ApkDetail;->DEFAULT_VERIFIED:Ljava/lang/Integer;

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ApkDetail;->DEFAULT_SUPERIOR:Ljava/lang/Integer;

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ApkDetail;->DEFAULT_COMPATIBLE:Ljava/lang/Integer;

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ApkDetail;->DEFAULT_INCOMPATIBLE_DETAIL:Ljava/util/List;

    .line 36
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ApkDetail;->DEFAULT_CREATION:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/ApkDetail$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 104
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->ads_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->ads_type:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->beta:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->beta:Ljava/lang/Boolean;

    .line 106
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->bytes_:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->bytes_:Ljava/lang/Integer;

    .line 107
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    .line 108
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->size:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->size:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->version_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->version_code:Ljava/lang/Integer;

    .line 110
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->version_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->version_name:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->security_status:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->security_status:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->md5:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->md5:Ljava/lang/String;

    .line 113
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->security_detail:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/ApkDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->security_detail:Ljava/util/List;

    .line 114
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->resolution:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/ApkDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->resolution:Ljava/util/List;

    .line 115
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->dangerous_permission:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/ApkDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->dangerous_permission:Ljava/util/List;

    .line 116
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->permission:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/ApkDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->permission:Ljava/util/List;

    .line 117
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->permission_level:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->permission_level:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->verified:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->verified:Ljava/lang/Integer;

    .line 119
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->superior:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->superior:Ljava/lang/Integer;

    .line 120
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->compatible:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->compatible:Ljava/lang/Integer;

    .line 121
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->incompatible_detail:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/ApkDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->incompatible_detail:Ljava/util/List;

    .line 122
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->paid_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->paid_type:Ljava/lang/String;

    .line 123
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->creation:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->creation:Ljava/lang/Long;

    .line 124
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail$Builder;->permission_group:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->permission_group:Ljava/lang/String;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/ApkDetail$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/ApkDetail;-><init>(Lcom/wandoujia/api/proto/ApkDetail$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-static {p0}, Lcom/wandoujia/api/proto/ApkDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-static {p0}, Lcom/wandoujia/api/proto/ApkDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-static {p0}, Lcom/wandoujia/api/proto/ApkDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-static {p0}, Lcom/wandoujia/api/proto/ApkDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-static {p0}, Lcom/wandoujia/api/proto/ApkDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    if-ne p1, p0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/ApkDetail;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 131
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/ApkDetail;

    .line 132
    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->ads_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->ads_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->beta:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->beta:Ljava/lang/Boolean;

    .line 133
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->bytes_:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->bytes_:Ljava/lang/Integer;

    .line 134
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    .line 135
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->size:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->size:Ljava/lang/String;

    .line 136
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->version_code:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->version_code:Ljava/lang/Integer;

    .line 137
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->version_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->version_name:Ljava/lang/String;

    .line 138
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->security_status:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->security_status:Ljava/lang/String;

    .line 139
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->md5:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->md5:Ljava/lang/String;

    .line 140
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->security_detail:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->security_detail:Ljava/util/List;

    .line 141
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->resolution:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->resolution:Ljava/util/List;

    .line 142
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->dangerous_permission:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->dangerous_permission:Ljava/util/List;

    .line 143
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->permission:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->permission:Ljava/util/List;

    .line 144
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->permission_level:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->permission_level:Ljava/lang/String;

    .line 145
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->verified:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->verified:Ljava/lang/Integer;

    .line 146
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->superior:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->superior:Ljava/lang/Integer;

    .line 147
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->compatible:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->compatible:Ljava/lang/Integer;

    .line 148
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->incompatible_detail:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->incompatible_detail:Ljava/util/List;

    .line 149
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->paid_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->paid_type:Ljava/lang/String;

    .line 150
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->creation:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->creation:Ljava/lang/Long;

    .line 151
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->permission_group:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ApkDetail;->permission_group:Ljava/lang/String;

    .line 152
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ApkDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 157
    iget v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->hashCode:I

    .line 158
    if-nez v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->ads_type:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->ads_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 160
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->beta:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->beta:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    .line 161
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->bytes_:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->bytes_:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    .line 162
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/DownloadUrl;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    .line 163
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->size:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->size:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    .line 164
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->version_code:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->version_code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    .line 165
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->version_name:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->version_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    .line 166
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->security_status:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->security_status:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    .line 167
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->md5:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->md5:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v3

    .line 168
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->security_detail:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->security_detail:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v3

    .line 169
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->resolution:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->resolution:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v3

    .line 170
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->dangerous_permission:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->dangerous_permission:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v3

    .line 171
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->permission:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->permission:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v3

    .line 172
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->permission_level:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->permission_level:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v3

    .line 173
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->verified:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->verified:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v3

    .line 174
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->superior:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->superior:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v3

    .line 175
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->compatible:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->compatible:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v3

    .line 176
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/wandoujia/api/proto/ApkDetail;->incompatible_detail:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->incompatible_detail:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    .line 177
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->paid_type:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->paid_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    .line 178
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->creation:Ljava/lang/Long;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->creation:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v2

    .line 179
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/ApkDetail;->permission_group:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/wandoujia/api/proto/ApkDetail;->permission_group:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    .line 180
    iput v0, p0, Lcom/wandoujia/api/proto/ApkDetail;->hashCode:I

    .line 182
    :cond_2
    return v0

    :cond_3
    move v0, v1

    .line 159
    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 160
    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 161
    goto/16 :goto_2

    :cond_6
    move v0, v1

    .line 162
    goto/16 :goto_3

    :cond_7
    move v0, v1

    .line 163
    goto/16 :goto_4

    :cond_8
    move v0, v1

    .line 164
    goto/16 :goto_5

    :cond_9
    move v0, v1

    .line 165
    goto/16 :goto_6

    :cond_a
    move v0, v1

    .line 166
    goto/16 :goto_7

    :cond_b
    move v0, v1

    .line 167
    goto/16 :goto_8

    :cond_c
    move v0, v2

    .line 168
    goto/16 :goto_9

    :cond_d
    move v0, v2

    .line 169
    goto/16 :goto_a

    :cond_e
    move v0, v2

    .line 170
    goto/16 :goto_b

    :cond_f
    move v0, v2

    .line 171
    goto/16 :goto_c

    :cond_10
    move v0, v1

    .line 172
    goto/16 :goto_d

    :cond_11
    move v0, v1

    .line 173
    goto :goto_e

    :cond_12
    move v0, v1

    .line 174
    goto :goto_f

    :cond_13
    move v0, v1

    .line 175
    goto :goto_10

    :cond_14
    move v0, v1

    .line 177
    goto :goto_11

    :cond_15
    move v0, v1

    .line 178
    goto :goto_12
.end method
