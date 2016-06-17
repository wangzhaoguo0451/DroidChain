.class public final Lcom/wandoujia/api/proto/TrailerBean;
.super Lcom/squareup/wire/Message;
.source "TrailerBean.java"


# static fields
.field public static final DEFAULT_COVER_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_DESCRIPTION:Ljava/lang/String; = ""

.field public static final DEFAULT_DURATION:Ljava/lang/Integer; = null

.field public static final DEFAULT_IS_PORTRAIT:Ljava/lang/Boolean; = null

.field public static final DEFAULT_TRAILER_ID:Ljava/lang/Integer; = null

.field public static final DEFAULT_TRAILER_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_TRAILER_URL:Ljava/lang/String; = ""


# instance fields
.field public final cover_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final duration:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final is_portrait:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final trailer_id:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final trailer_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final trailer_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/TrailerBean;->DEFAULT_TRAILER_ID:Ljava/lang/Integer;

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/TrailerBean;->DEFAULT_DURATION:Ljava/lang/Integer;

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/TrailerBean;->DEFAULT_IS_PORTRAIT:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/TrailerBean$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 45
    iget-object v0, p1, Lcom/wandoujia/api/proto/TrailerBean$Builder;->trailer_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->trailer_id:Ljava/lang/Integer;

    .line 46
    iget-object v0, p1, Lcom/wandoujia/api/proto/TrailerBean$Builder;->trailer_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->trailer_name:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/wandoujia/api/proto/TrailerBean$Builder;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->description:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/wandoujia/api/proto/TrailerBean$Builder;->duration:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->duration:Ljava/lang/Integer;

    .line 49
    iget-object v0, p1, Lcom/wandoujia/api/proto/TrailerBean$Builder;->is_portrait:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->is_portrait:Ljava/lang/Boolean;

    .line 50
    iget-object v0, p1, Lcom/wandoujia/api/proto/TrailerBean$Builder;->cover_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->cover_url:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/wandoujia/api/proto/TrailerBean$Builder;->trailer_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->trailer_url:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/TrailerBean$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/TrailerBean;-><init>(Lcom/wandoujia/api/proto/TrailerBean$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    if-ne p1, p0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/TrailerBean;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 58
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/TrailerBean;

    .line 59
    iget-object v2, p0, Lcom/wandoujia/api/proto/TrailerBean;->trailer_id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TrailerBean;->trailer_id:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TrailerBean;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/TrailerBean;->trailer_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TrailerBean;->trailer_name:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TrailerBean;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/TrailerBean;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TrailerBean;->description:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TrailerBean;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/TrailerBean;->duration:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TrailerBean;->duration:Ljava/lang/Integer;

    .line 62
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TrailerBean;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/TrailerBean;->is_portrait:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TrailerBean;->is_portrait:Ljava/lang/Boolean;

    .line 63
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TrailerBean;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/TrailerBean;->cover_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TrailerBean;->cover_url:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TrailerBean;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/TrailerBean;->trailer_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TrailerBean;->trailer_url:Ljava/lang/String;

    .line 65
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TrailerBean;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 70
    iget v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->hashCode:I

    .line 71
    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->trailer_id:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->trailer_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 73
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->trailer_name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->trailer_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 74
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->description:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 75
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->duration:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->duration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 76
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->is_portrait:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->is_portrait:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->cover_url:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->cover_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 78
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/TrailerBean;->trailer_url:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/TrailerBean;->trailer_url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 79
    iput v0, p0, Lcom/wandoujia/api/proto/TrailerBean;->hashCode:I

    .line 81
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 72
    goto :goto_0

    :cond_3
    move v0, v1

    .line 73
    goto :goto_1

    :cond_4
    move v0, v1

    .line 74
    goto :goto_2

    :cond_5
    move v0, v1

    .line 75
    goto :goto_3

    :cond_6
    move v0, v1

    .line 76
    goto :goto_4

    :cond_7
    move v0, v1

    .line 77
    goto :goto_5
.end method
