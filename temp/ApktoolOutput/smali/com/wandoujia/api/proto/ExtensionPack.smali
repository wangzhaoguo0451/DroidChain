.class public final Lcom/wandoujia/api/proto/ExtensionPack;
.super Lcom/squareup/wire/Message;
.source "ExtensionPack.java"


# static fields
.field public static final DEFAULT_CPU_TYPE:Ljava/lang/Integer; = null

.field public static final DEFAULT_DESCRIPTION:Ljava/lang/String; = ""

.field public static final DEFAULT_DOWNLOAD_URLS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/DownloadUrl;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DST_PATH:Ljava/lang/String; = ""

.field public static final DEFAULT_FILEPATH:Ljava/lang/String; = ""

.field public static final DEFAULT_HUMANSIZE:Ljava/lang/String; = ""

.field public static final DEFAULT_MATCHED:Ljava/lang/Boolean; = null

.field public static final DEFAULT_MD5:Ljava/lang/String; = ""

.field public static final DEFAULT_PF5:Ljava/lang/String; = ""

.field public static final DEFAULT_SIZE:Ljava/lang/Long; = null

.field public static final DEFAULT_SRC_PATH:Ljava/lang/String; = ""

.field public static final DEFAULT_SUPPORTED_CPU_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_TYPE:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

.field public static final DEFAULT_VERSION_CODE:Ljava/lang/Integer;


# instance fields
.field public final cpu_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final download_urls:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0xf
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/DownloadUrl;",
            ">;"
        }
    .end annotation
.end field

.field public final dst_path:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final filepath:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final humansize:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final matched:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final md5:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pf5:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final size:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final src_path:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final supported_cpu_types:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x10
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

.field public final type:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final version_code:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ExtensionPack;->DEFAULT_SIZE:Ljava/lang/Long;

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ExtensionPack;->DEFAULT_VERSION_CODE:Ljava/lang/Integer;

    .line 29
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ExtensionPack;->DEFAULT_MATCHED:Ljava/lang/Boolean;

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ExtensionPack;->DEFAULT_CPU_TYPE:Ljava/lang/Integer;

    .line 31
    sget-object v0, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;->WPK:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    sput-object v0, Lcom/wandoujia/api/proto/ExtensionPack;->DEFAULT_TYPE:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ExtensionPack;->DEFAULT_DOWNLOAD_URLS:Ljava/util/List;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ExtensionPack;->DEFAULT_SUPPORTED_CPU_TYPES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/ExtensionPack$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 88
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->filepath:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->filepath:Ljava/lang/String;

    .line 89
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->humansize:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->humansize:Ljava/lang/String;

    .line 90
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->pf5:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->pf5:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->size:Ljava/lang/Long;

    .line 92
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->version_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->version_code:Ljava/lang/Integer;

    .line 93
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->src_path:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->src_path:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->dst_path:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->dst_path:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->md5:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->md5:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->description:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->matched:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->matched:Ljava/lang/Boolean;

    .line 98
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->cpu_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->cpu_type:Ljava/lang/Integer;

    .line 99
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->type:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->type:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    .line 100
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->download_urls:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/ExtensionPack;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->download_urls:Ljava/util/List;

    .line 101
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->supported_cpu_types:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/ExtensionPack;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->supported_cpu_types:Ljava/util/List;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/ExtensionPack$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/ExtensionPack;-><init>(Lcom/wandoujia/api/proto/ExtensionPack$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/wandoujia/api/proto/ExtensionPack;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/wandoujia/api/proto/ExtensionPack;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 106
    if-ne p1, p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/ExtensionPack;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 108
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/ExtensionPack;

    .line 109
    iget-object v2, p0, Lcom/wandoujia/api/proto/ExtensionPack;->filepath:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ExtensionPack;->filepath:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ExtensionPack;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ExtensionPack;->humansize:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ExtensionPack;->humansize:Ljava/lang/String;

    .line 110
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ExtensionPack;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ExtensionPack;->pf5:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ExtensionPack;->pf5:Ljava/lang/String;

    .line 111
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ExtensionPack;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ExtensionPack;->size:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ExtensionPack;->size:Ljava/lang/Long;

    .line 112
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ExtensionPack;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ExtensionPack;->version_code:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ExtensionPack;->version_code:Ljava/lang/Integer;

    .line 113
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ExtensionPack;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ExtensionPack;->src_path:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ExtensionPack;->src_path:Ljava/lang/String;

    .line 114
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ExtensionPack;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ExtensionPack;->dst_path:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ExtensionPack;->dst_path:Ljava/lang/String;

    .line 115
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ExtensionPack;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ExtensionPack;->md5:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ExtensionPack;->md5:Ljava/lang/String;

    .line 116
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ExtensionPack;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ExtensionPack;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ExtensionPack;->description:Ljava/lang/String;

    .line 117
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ExtensionPack;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ExtensionPack;->matched:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ExtensionPack;->matched:Ljava/lang/Boolean;

    .line 118
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ExtensionPack;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ExtensionPack;->cpu_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ExtensionPack;->cpu_type:Ljava/lang/Integer;

    .line 119
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ExtensionPack;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ExtensionPack;->type:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ExtensionPack;->type:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    .line 120
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ExtensionPack;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ExtensionPack;->download_urls:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ExtensionPack;->download_urls:Ljava/util/List;

    .line 121
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ExtensionPack;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ExtensionPack;->supported_cpu_types:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ExtensionPack;->supported_cpu_types:Ljava/util/List;

    .line 122
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ExtensionPack;->equals(Ljava/util/List;Ljava/util/List;)Z

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

    .line 127
    iget v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->hashCode:I

    .line 128
    if-nez v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->filepath:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->filepath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 130
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->humansize:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->humansize:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    .line 131
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->pf5:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->pf5:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    .line 132
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->size:Ljava/lang/Long;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    .line 133
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->version_code:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->version_code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    .line 134
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->src_path:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->src_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    .line 135
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->dst_path:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->dst_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    .line 136
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->md5:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->md5:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    .line 137
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->description:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v3

    .line 138
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->matched:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->matched:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v3

    .line 139
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->cpu_type:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->cpu_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v3

    .line 140
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/wandoujia/api/proto/ExtensionPack;->type:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/ExtensionPack;->type:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/ExtensionPack$PacketType;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 141
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->download_urls:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->download_urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v1

    .line 142
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/wandoujia/api/proto/ExtensionPack;->supported_cpu_types:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wandoujia/api/proto/ExtensionPack;->supported_cpu_types:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 143
    iput v0, p0, Lcom/wandoujia/api/proto/ExtensionPack;->hashCode:I

    .line 145
    :cond_2
    return v0

    :cond_3
    move v0, v1

    .line 129
    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 130
    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 131
    goto/16 :goto_2

    :cond_6
    move v0, v1

    .line 132
    goto/16 :goto_3

    :cond_7
    move v0, v1

    .line 133
    goto/16 :goto_4

    :cond_8
    move v0, v1

    .line 134
    goto :goto_5

    :cond_9
    move v0, v1

    .line 135
    goto :goto_6

    :cond_a
    move v0, v1

    .line 136
    goto :goto_7

    :cond_b
    move v0, v1

    .line 137
    goto :goto_8

    :cond_c
    move v0, v1

    .line 138
    goto :goto_9

    :cond_d
    move v0, v1

    .line 139
    goto :goto_a

    :cond_e
    move v0, v2

    .line 141
    goto :goto_b
.end method
