.class public final Lcom/wandoujia/api/proto/PublisherBundleDetail;
.super Lcom/squareup/wire/Message;
.source "PublisherBundleDetail.java"


# static fields
.field public static final DEFAULT_COVER:Ljava/lang/String; = ""

.field public static final DEFAULT_CREATEDTIME:Ljava/lang/Long; = null

.field public static final DEFAULT_DEFAULTSELECTED:Ljava/lang/Boolean; = null

.field public static final DEFAULT_DESCRIPTION:Ljava/lang/String; = ""

.field public static final DEFAULT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_RANK:Ljava/lang/Integer; = null

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""


# instance fields
.field public final cover:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final createdTime:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final defaultSelected:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final rank:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->DEFAULT_RANK:Ljava/lang/Integer;

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->DEFAULT_DEFAULTSELECTED:Ljava/lang/Boolean;

    .line 21
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->DEFAULT_CREATEDTIME:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 46
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->id:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->title:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->description:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->cover:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->cover:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->rank:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->rank:Ljava/lang/Integer;

    .line 51
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->defaultSelected:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->defaultSelected:Ljava/lang/Boolean;

    .line 52
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->createdTime:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->createdTime:Ljava/lang/Long;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/PublisherBundleDetail;-><init>(Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    if-ne p1, p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 59
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/PublisherBundleDetail;

    .line 60
    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail;->id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherBundleDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail;->title:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherBundleDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail;->description:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherBundleDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->cover:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail;->cover:Ljava/lang/String;

    .line 63
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherBundleDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->rank:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail;->rank:Ljava/lang/Integer;

    .line 64
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherBundleDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->defaultSelected:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail;->defaultSelected:Ljava/lang/Boolean;

    .line 65
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherBundleDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->createdTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherBundleDetail;->createdTime:Ljava/lang/Long;

    .line 66
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherBundleDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 71
    iget v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->hashCode:I

    .line 72
    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 74
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->title:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 75
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->description:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 76
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->cover:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->cover:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->rank:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->rank:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 78
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->defaultSelected:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->defaultSelected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 79
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->createdTime:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->createdTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 80
    iput v0, p0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->hashCode:I

    .line 82
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 73
    goto :goto_0

    :cond_3
    move v0, v1

    .line 74
    goto :goto_1

    :cond_4
    move v0, v1

    .line 75
    goto :goto_2

    :cond_5
    move v0, v1

    .line 76
    goto :goto_3

    :cond_6
    move v0, v1

    .line 77
    goto :goto_4

    :cond_7
    move v0, v1

    .line 78
    goto :goto_5
.end method
