.class public final Lcom/wandoujia/api/proto/Music;
.super Lcom/squareup/wire/Message;
.source "Music.java"


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

.field public static final DEFAULT_URL:Ljava/lang/String; = ""


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

.field public final url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Music;->DEFAULT_COVER:Ljava/util/List;

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Music;->DEFAULT_DURATION:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/Music$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 34
    iget-object v0, p1, Lcom/wandoujia/api/proto/Music$Builder;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Music;->url:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/wandoujia/api/proto/Music$Builder;->cover:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/Music;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/Music;->cover:Ljava/util/List;

    .line 36
    iget-object v0, p1, Lcom/wandoujia/api/proto/Music$Builder;->duration:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Music;->duration:Ljava/lang/Integer;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/Music$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/Music;-><init>(Lcom/wandoujia/api/proto/Music$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-static {p0}, Lcom/wandoujia/api/proto/Music;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 41
    if-ne p1, p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/Music;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 43
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/Music;

    .line 44
    iget-object v2, p0, Lcom/wandoujia/api/proto/Music;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Music;->url:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Music;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Music;->cover:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Music;->cover:Ljava/util/List;

    .line 45
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Music;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Music;->duration:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Music;->duration:Ljava/lang/Integer;

    .line 46
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Music;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 51
    iget v0, p0, Lcom/wandoujia/api/proto/Music;->hashCode:I

    .line 52
    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/wandoujia/api/proto/Music;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/Music;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 54
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Music;->cover:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/Music;->cover:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 55
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/Music;->duration:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/Music;->duration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 56
    iput v0, p0, Lcom/wandoujia/api/proto/Music;->hashCode:I

    .line 58
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method
