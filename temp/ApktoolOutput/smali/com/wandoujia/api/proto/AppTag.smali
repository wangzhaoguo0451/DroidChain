.class public final Lcom/wandoujia/api/proto/AppTag;
.super Lcom/squareup/wire/Message;
.source "AppTag.java"


# static fields
.field public static final DEFAULT_TAG:Ljava/lang/String; = ""

.field public static final DEFAULT_WEIGHT:Ljava/lang/Integer;


# instance fields
.field public final tag:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final weight:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppTag;->DEFAULT_WEIGHT:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/AppTag$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 24
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppTag$Builder;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppTag;->tag:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppTag$Builder;->weight:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppTag;->weight:Ljava/lang/Integer;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/AppTag$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/AppTag;-><init>(Lcom/wandoujia/api/proto/AppTag$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    if-ne p1, p0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v0

    .line 31
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/AppTag;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 32
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/AppTag;

    .line 33
    iget-object v2, p0, Lcom/wandoujia/api/proto/AppTag;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppTag;->tag:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppTag;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppTag;->weight:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppTag;->weight:Ljava/lang/Integer;

    .line 34
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppTag;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 39
    iget v0, p0, Lcom/wandoujia/api/proto/AppTag;->hashCode:I

    .line 40
    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppTag;->tag:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppTag;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 42
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppTag;->weight:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/AppTag;->weight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 43
    iput v0, p0, Lcom/wandoujia/api/proto/AppTag;->hashCode:I

    .line 45
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 41
    goto :goto_0
.end method
