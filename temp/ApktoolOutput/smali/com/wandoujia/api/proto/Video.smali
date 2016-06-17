.class public final Lcom/wandoujia/api/proto/Video;
.super Lcom/squareup/wire/Message;
.source "Video.java"


# static fields
.field public static final DEFAULT_COVER:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DURATION:Ljava/lang/Integer; = null

.field public static final DEFAULT_HEIGHT:Ljava/lang/Integer; = null

.field public static final DEFAULT_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_WIDTH:Ljava/lang/Integer;


# instance fields
.field public final cover:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
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

.field public final duration:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final height:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final width:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Video;->DEFAULT_COVER:Ljava/util/List;

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Video;->DEFAULT_DURATION:Ljava/lang/Integer;

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Video;->DEFAULT_WIDTH:Ljava/lang/Integer;

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Video;->DEFAULT_HEIGHT:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/Video$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 42
    iget-object v0, p1, Lcom/wandoujia/api/proto/Video$Builder;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Video;->url:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/wandoujia/api/proto/Video$Builder;->cover:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/Video;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Video;->cover:Ljava/util/List;

    .line 44
    iget-object v0, p1, Lcom/wandoujia/api/proto/Video$Builder;->duration:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Video;->duration:Ljava/lang/Integer;

    .line 45
    iget-object v0, p1, Lcom/wandoujia/api/proto/Video$Builder;->width:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Video;->width:Ljava/lang/Integer;

    .line 46
    iget-object v0, p1, Lcom/wandoujia/api/proto/Video$Builder;->height:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Video;->height:Ljava/lang/Integer;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/Video$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/Video;-><init>(Lcom/wandoujia/api/proto/Video$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-static {p0}, Lcom/wandoujia/api/proto/Video;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 51
    if-ne p1, p0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/Video;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 53
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/Video;

    .line 54
    iget-object v2, p0, Lcom/wandoujia/api/proto/Video;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Video;->url:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Video;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Video;->cover:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Video;->cover:Ljava/util/List;

    .line 55
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Video;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Video;->duration:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Video;->duration:Ljava/lang/Integer;

    .line 56
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Video;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Video;->width:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Video;->width:Ljava/lang/Integer;

    .line 57
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Video;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Video;->height:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Video;->height:Ljava/lang/Integer;

    .line 58
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Video;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 63
    iget v0, p0, Lcom/wandoujia/api/proto/Video;->hashCode:I

    .line 64
    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/wandoujia/api/proto/Video;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/Video;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 66
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Video;->cover:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/Video;->cover:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 67
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Video;->duration:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/Video;->duration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 68
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Video;->width:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/Video;->width:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 69
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/Video;->height:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/Video;->height:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 70
    iput v0, p0, Lcom/wandoujia/api/proto/Video;->hashCode:I

    .line 72
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 67
    goto :goto_2

    :cond_5
    move v0, v1

    .line 68
    goto :goto_3
.end method
