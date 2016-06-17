.class public final Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;
.super Lcom/squareup/wire/Message;
.source "QueryMetaInfoPackage.java"


# static fields
.field public static final DEFAULT_API_VERSION:Ljava/lang/Integer; = null

.field public static final DEFAULT_CORRECTED_QUERY:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_EXP_ID:Ljava/lang/Integer; = null

.field public static final DEFAULT_IS_SENSITIVE:Ljava/lang/Boolean; = null

.field public static final DEFAULT_LIMIT_SIZE:Ljava/lang/Integer; = null

.field public static final DEFAULT_MODE:Ljava/lang/String; = ""

.field public static final DEFAULT_QUERY:Ljava/lang/String; = ""

.field public static final DEFAULT_SESSION_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_START_INDEX:Ljava/lang/Integer;


# instance fields
.field public final api_version:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final corrected_query:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0xa
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

.field public final exp_id:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final from_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
    .end annotation
.end field

.field public final is_sensitive:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final limit_size:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final mode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final query:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final refer_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
    .end annotation
.end field

.field public final session_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final start_index:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->DEFAULT_API_VERSION:Ljava/lang/Integer;

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->DEFAULT_EXP_ID:Ljava/lang/Integer;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->DEFAULT_START_INDEX:Ljava/lang/Integer;

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->DEFAULT_LIMIT_SIZE:Ljava/lang/Integer;

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->DEFAULT_CORRECTED_QUERY:Ljava/util/List;

    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->DEFAULT_IS_SENSITIVE:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 99
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->query:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->query:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->session_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->session_id:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->api_version:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->api_version:Ljava/lang/Integer;

    .line 102
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->exp_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->exp_id:Ljava/lang/Integer;

    .line 103
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->start_index:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->start_index:Ljava/lang/Integer;

    .line 104
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->limit_size:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->limit_size:Ljava/lang/Integer;

    .line 105
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->mode:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->mode:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->from_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->from_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 107
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->refer_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->refer_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 108
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->corrected_query:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->corrected_query:Ljava/util/List;

    .line 109
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->is_sensitive:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->is_sensitive:Ljava/lang/Boolean;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;-><init>(Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 114
    if-ne p1, p0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 116
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;

    .line 117
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->query:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->query:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->session_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->session_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->api_version:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->api_version:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->exp_id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->exp_id:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->start_index:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->start_index:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->limit_size:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->limit_size:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->mode:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->mode:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->from_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->from_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->refer_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->refer_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->corrected_query:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->corrected_query:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->is_sensitive:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->is_sensitive:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->hashCode:I

    .line 133
    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->query:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 135
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->session_id:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->session_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 136
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->api_version:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->api_version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 137
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->exp_id:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->exp_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 138
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->start_index:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->start_index:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 139
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->limit_size:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->limit_size:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 140
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->mode:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->mode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 141
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->from_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->from_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->refer_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->refer_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 143
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->corrected_query:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->corrected_query:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 144
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->is_sensitive:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->is_sensitive:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 145
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->hashCode:I

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

    .line 143
    :cond_b
    const/4 v0, 0x1

    goto :goto_9
.end method
