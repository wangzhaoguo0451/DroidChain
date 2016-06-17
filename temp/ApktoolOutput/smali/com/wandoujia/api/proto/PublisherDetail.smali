.class public final Lcom/wandoujia/api/proto/PublisherDetail;
.super Lcom/squareup/wire/Message;
.source "PublisherDetail.java"


# static fields
.field public static final DEFAULT_AVATAR:Ljava/lang/String; = ""

.field public static final DEFAULT_CIRCLEAVATAR:Ljava/lang/String; = ""

.field public static final DEFAULT_CREATETIME:Ljava/lang/Long; = null

.field public static final DEFAULT_DEFAULTSELECTED:Ljava/lang/Boolean; = null

.field public static final DEFAULT_DESCRIPTION:Ljava/lang/String; = ""

.field public static final DEFAULT_FEEDCOUNT:Ljava/lang/Integer; = null

.field public static final DEFAULT_FULLDESCRIPTION:Ljava/lang/String; = ""

.field public static final DEFAULT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_NICK:Ljava/lang/String; = ""

.field public static final DEFAULT_SUBSCRIBED:Ljava/lang/Boolean; = null

.field public static final DEFAULT_SUBSCRIBEDCOUNT:Ljava/lang/Integer; = null

.field public static final DEFAULT_TAGS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_UID:Ljava/lang/String; = ""


# instance fields
.field public final avatar:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final category:Lcom/wandoujia/api/proto/PublisherCategory;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
    .end annotation
.end field

.field public final circleAvatar:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final createTime:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final defaultSelected:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final feedCount:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final fullDescription:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final nick:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final relatedApp:Lcom/wandoujia/api/proto/RelatedApp;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
    .end annotation
.end field

.field public final subscribed:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final subscribedCount:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final tags:Ljava/util/List;
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

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final uid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PublisherDetail;->DEFAULT_SUBSCRIBED:Ljava/lang/Boolean;

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PublisherDetail;->DEFAULT_SUBSCRIBEDCOUNT:Ljava/lang/Integer;

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PublisherDetail;->DEFAULT_FEEDCOUNT:Ljava/lang/Integer;

    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PublisherDetail;->DEFAULT_DEFAULTSELECTED:Ljava/lang/Boolean;

    .line 30
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PublisherDetail;->DEFAULT_CREATETIME:Ljava/lang/Long;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PublisherDetail;->DEFAULT_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/PublisherDetail$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 83
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->subscribed:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->subscribed:Ljava/lang/Boolean;

    .line 84
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->type:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->id:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->uid:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->nick:Ljava/lang/String;

    .line 88
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->avatar:Ljava/lang/String;

    .line 89
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->circleAvatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->circleAvatar:Ljava/lang/String;

    .line 90
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->description:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->fullDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->fullDescription:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->subscribedCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->subscribedCount:Ljava/lang/Integer;

    .line 93
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->feedCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->feedCount:Ljava/lang/Integer;

    .line 94
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->defaultSelected:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->defaultSelected:Ljava/lang/Boolean;

    .line 95
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->createTime:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->createTime:Ljava/lang/Long;

    .line 96
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->category:Lcom/wandoujia/api/proto/PublisherCategory;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->category:Lcom/wandoujia/api/proto/PublisherCategory;

    .line 97
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->relatedApp:Lcom/wandoujia/api/proto/RelatedApp;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->relatedApp:Lcom/wandoujia/api/proto/RelatedApp;

    .line 98
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->tags:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/PublisherDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->tags:Ljava/util/List;

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/PublisherDetail$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/PublisherDetail;-><init>(Lcom/wandoujia/api/proto/PublisherDetail$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-static {p0}, Lcom/wandoujia/api/proto/PublisherDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 103
    if-ne p1, p0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/PublisherDetail;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 105
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/PublisherDetail;

    .line 106
    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->subscribed:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherDetail;->subscribed:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherDetail;->type:Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherDetail;->id:Ljava/lang/String;

    .line 108
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->uid:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherDetail;->uid:Ljava/lang/String;

    .line 109
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->nick:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherDetail;->nick:Ljava/lang/String;

    .line 110
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherDetail;->avatar:Ljava/lang/String;

    .line 111
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->circleAvatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherDetail;->circleAvatar:Ljava/lang/String;

    .line 112
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherDetail;->description:Ljava/lang/String;

    .line 113
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->fullDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherDetail;->fullDescription:Ljava/lang/String;

    .line 114
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->subscribedCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherDetail;->subscribedCount:Ljava/lang/Integer;

    .line 115
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->feedCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherDetail;->feedCount:Ljava/lang/Integer;

    .line 116
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->defaultSelected:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherDetail;->defaultSelected:Ljava/lang/Boolean;

    .line 117
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->createTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherDetail;->createTime:Ljava/lang/Long;

    .line 118
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->category:Lcom/wandoujia/api/proto/PublisherCategory;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherDetail;->category:Lcom/wandoujia/api/proto/PublisherCategory;

    .line 119
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->relatedApp:Lcom/wandoujia/api/proto/RelatedApp;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherDetail;->relatedApp:Lcom/wandoujia/api/proto/RelatedApp;

    .line 120
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->tags:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherDetail;->tags:Ljava/util/List;

    .line 121
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 126
    iget v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->hashCode:I

    .line 127
    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->subscribed:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->subscribed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    .line 129
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->type:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 130
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->id:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 131
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->uid:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 132
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->nick:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->nick:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 133
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->avatar:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->avatar:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 134
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->circleAvatar:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->circleAvatar:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 135
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->description:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 136
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->fullDescription:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->fullDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 137
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->subscribedCount:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->subscribedCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 138
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->feedCount:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->feedCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 139
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->defaultSelected:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->defaultSelected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 140
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->createTime:Ljava/lang/Long;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->createTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 141
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->category:Lcom/wandoujia/api/proto/PublisherCategory;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->category:Lcom/wandoujia/api/proto/PublisherCategory;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/PublisherCategory;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherDetail;->relatedApp:Lcom/wandoujia/api/proto/RelatedApp;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/PublisherDetail;->relatedApp:Lcom/wandoujia/api/proto/RelatedApp;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/RelatedApp;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 143
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->tags:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v1

    .line 144
    iput v0, p0, Lcom/wandoujia/api/proto/PublisherDetail;->hashCode:I

    .line 146
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 128
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 129
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 130
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 131
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 132
    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 133
    goto/16 :goto_5

    :cond_8
    move v0, v1

    .line 134
    goto/16 :goto_6

    :cond_9
    move v0, v1

    .line 135
    goto/16 :goto_7

    :cond_a
    move v0, v1

    .line 136
    goto :goto_8

    :cond_b
    move v0, v1

    .line 137
    goto :goto_9

    :cond_c
    move v0, v1

    .line 138
    goto :goto_a

    :cond_d
    move v0, v1

    .line 139
    goto :goto_b

    :cond_e
    move v0, v1

    .line 140
    goto :goto_c

    :cond_f
    move v0, v1

    .line 141
    goto :goto_d

    .line 143
    :cond_10
    const/4 v0, 0x1

    goto :goto_e
.end method
