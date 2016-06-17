.class public final Lcom/wandoujia/api/proto/HttpResponse;
.super Lcom/squareup/wire/Message;
.source "HttpResponse.java"


# static fields
.field public static final DEFAULT_ENTITY:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_FAVOR_HEAD:Ljava/lang/Long; = null

.field public static final DEFAULT_FAVOR_NEXT_HEAD:Ljava/lang/Long; = null

.field public static final DEFAULT_HAS_MORE:Ljava/lang/Boolean; = null

.field public static final DEFAULT_NEXT_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_PB_VERSION:Ljava/lang/Integer; = null

.field public static final DEFAULT_PRE_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_SESSION_ID:Ljava/lang/Long;

.field public static final DEFAULT_STATUS:Ljava/lang/Integer;

.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Long;


# instance fields
.field public final entity:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x7
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public final favor_head:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final favor_next_head:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final has_more:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final next_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pb_version:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pre_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final session_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->FIXED64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final status:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/HttpResponse;->DEFAULT_HAS_MORE:Ljava/lang/Boolean;

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/HttpResponse;->DEFAULT_PB_VERSION:Ljava/lang/Integer;

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/HttpResponse;->DEFAULT_SESSION_ID:Ljava/lang/Long;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/HttpResponse;->DEFAULT_STATUS:Ljava/lang/Integer;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/HttpResponse;->DEFAULT_ENTITY:Ljava/util/List;

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/HttpResponse;->DEFAULT_FAVOR_HEAD:Ljava/lang/Long;

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/HttpResponse;->DEFAULT_FAVOR_NEXT_HEAD:Ljava/lang/Long;

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/HttpResponse;->DEFAULT_TIMESTAMP:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/HttpResponse$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 93
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse$Builder;->next_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->next_url:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse$Builder;->pre_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->pre_url:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse$Builder;->has_more:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->has_more:Ljava/lang/Boolean;

    .line 96
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse$Builder;->pb_version:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->pb_version:Ljava/lang/Integer;

    .line 97
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse$Builder;->session_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->session_id:Ljava/lang/Long;

    .line 98
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse$Builder;->status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->status:Ljava/lang/Integer;

    .line 99
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse$Builder;->entity:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/HttpResponse;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    .line 100
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse$Builder;->favor_head:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->favor_head:Ljava/lang/Long;

    .line 101
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse$Builder;->favor_next_head:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->favor_next_head:Ljava/lang/Long;

    .line 102
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse$Builder;->timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->timestamp:Ljava/lang/Long;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/HttpResponse$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/HttpResponse;-><init>(Lcom/wandoujia/api/proto/HttpResponse$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/wandoujia/api/proto/HttpResponse;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 107
    if-ne p1, p0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/HttpResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 109
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/HttpResponse;

    .line 110
    iget-object v2, p0, Lcom/wandoujia/api/proto/HttpResponse;->next_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/HttpResponse;->next_url:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/HttpResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/HttpResponse;->pre_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/HttpResponse;->pre_url:Ljava/lang/String;

    .line 111
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/HttpResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/HttpResponse;->has_more:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/HttpResponse;->has_more:Ljava/lang/Boolean;

    .line 112
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/HttpResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/HttpResponse;->pb_version:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/HttpResponse;->pb_version:Ljava/lang/Integer;

    .line 113
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/HttpResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/HttpResponse;->session_id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/HttpResponse;->session_id:Ljava/lang/Long;

    .line 114
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/HttpResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/HttpResponse;->status:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/HttpResponse;->status:Ljava/lang/Integer;

    .line 115
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/HttpResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    .line 116
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/HttpResponse;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/HttpResponse;->favor_head:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/HttpResponse;->favor_head:Ljava/lang/Long;

    .line 117
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/HttpResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/HttpResponse;->favor_next_head:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/HttpResponse;->favor_next_head:Ljava/lang/Long;

    .line 118
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/HttpResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/HttpResponse;->timestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/HttpResponse;->timestamp:Ljava/lang/Long;

    .line 119
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/HttpResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 124
    iget v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->hashCode:I

    .line 125
    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->next_url:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->next_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 127
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->pre_url:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->pre_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 128
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->has_more:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->has_more:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->pb_version:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->pb_version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 130
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->session_id:Ljava/lang/Long;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->session_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 131
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->status:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 132
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 133
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->favor_head:Ljava/lang/Long;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->favor_head:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 134
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->favor_next_head:Ljava/lang/Long;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->favor_next_head:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 135
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/HttpResponse;->timestamp:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/HttpResponse;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 136
    iput v0, p0, Lcom/wandoujia/api/proto/HttpResponse;->hashCode:I

    .line 138
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 126
    goto :goto_0

    :cond_3
    move v0, v1

    .line 127
    goto :goto_1

    :cond_4
    move v0, v1

    .line 128
    goto :goto_2

    :cond_5
    move v0, v1

    .line 129
    goto :goto_3

    :cond_6
    move v0, v1

    .line 130
    goto :goto_4

    :cond_7
    move v0, v1

    .line 131
    goto :goto_5

    .line 132
    :cond_8
    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    move v0, v1

    .line 133
    goto :goto_7

    :cond_a
    move v0, v1

    .line 134
    goto :goto_8
.end method
